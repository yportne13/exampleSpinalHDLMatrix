package spinal.lib.Matrix

import spinal.core._
import spinal.lib._

case class Matrix2D(
  width : BitCount,
  m : Int,
  n : Int
) extends ImplicitArea[Vec[Vec[SInt]]] {
  val mat = Vec(Vec(Reg(SInt(width)),n),m)

  def apply(range1 : Range, range2 : Range): Vec[Vec[SInt]] = {
    Vec(range1.map(x => Vec(range2.map(y => mat(x)(y)).toList)).toList)
  }

  def apply(range1 : Int, range2 : Range): Vec[SInt] = {
    Vec(range2.map(x => this.mat(range1)(x)).toList)
  }

  def apply(range1 : Range, range2 : Int): Vec[SInt] = {
    Vec(range1.map(x => mat(x)(range2)).toList)
  }

  def apply(range1 : Int, range2 : Int): SInt = {
    mat(range1)(range2)
  }

  def * (that : Matrix2D): Matrix2D = {
    val ret = Matrix2D(this.width.value+log2Up(this.n) bits,this.m,that.n)
    for(i <- 0 until m) {
      for(j <- 0 until n) {
        ret(i,j) := (0 until n).map{x =>
          val ret = RegNext(this(i,x) * that(x,j))
          ret.setCompositeName(this,"mul_"+that.getClass().getSimpleName()+"_"+i+"_"+j+"_"+x,true)
          //ret.setName(this.getName()+"_mul_"+i+"_"+j,true)
          //ret.setCompositeName(this,"mul_"+i+"_"+j,true)//.setName(this.getName()+"_mul_"+that.getName()+"_"+i+"_"+j,true)
          ret(2*width.value - 1 downto width.value)
        }.reduceBalancedTree(_ +^ _, (s,l) => RegNext(s))
      }
    }
    ret
  }

  def *- (that : Matrix2D): Matrix2D = {
    this.rotateUp
    val ret = Matrix2D(this.width.value+log2Up(this.n) bits,this.m,that.n)//Vec(SInt(this.width.value+log2Up(this.n) bits),that.n)
    for(i <- 0 until that.n) {
      ret(0,i) := (0 until n).map{x =>
        val ret = RegNext(this(0,x) * that(x,i))
        ret.setCompositeName(this,"mul_"+that.getClass().getSimpleName()+"_0_"+i+"_"+x,true)
        //ret.setName(this.getName()+"_mul_"+i+"_"+j,true)
        //ret.setCompositeName(this,"mul_"+i+"_"+j,true)//.setName(this.getName()+"_mul_"+that.getName()+"_"+i+"_"+j,true)
        ret(2*width.value - 1 downto width.value)
      }.reduceBalancedTree(_ +^ _, (s,l) => RegNext(s))
    }
    ret.shiftDown
    ret
  }

  def init(value : Int): Unit = {
    for(i <- 0 until m) {
      for(j <- 0 until n) {
        this(i,j).init(value)
      }
    }
  }

  def :=(that : Matrix2D) = this.mat := that.mat
  def :=(that : Vec[Vec[SInt]]) = this.mat := that

  def apply(range : Range): Matrix2D = {
    //println(range.start + ";" + range.end)
    val ret = Matrix2D(range.start - range.end + 1 bits,m,n)
    for(i <- 0 until m) {
      for(j <- 0 until n) {
        ret(i,j) := this(i,j)(range)
      }
    }
    ret
  }
  

  def shiftDown = {
    for(i <- 0 until m-1) {
      this(i+1,0 until n) := this(i,0 until n)
    }
  }
  def shiftRight = {
    for(i <- 0 until n-1) {
      this(0 until m,i+1) := this(0 until m,i)
    }
  }
  def rotateUp = {
    for(i <- 0 until m-1) {
      this(i,0 until n) := this(i+1,0 until n)
    }
    this(m-1,0 until n) := this(0,0 until n)
  }
  def rotateDown = {
    for(i <- 0 until m-1) {
      this(i+1,0 until n) := this(i,0 until n)
    }
    this(0,0 until n) := this(m-1,0 until n)
  }
  def rotateLeft = {
    for(i <- 0 until n-1) {
      this(0 until m,i) := this(0 until m,i+1)
    }
    this(0 until m,n-1) := this(0 until m,0)
  }
  def rotateRight = {
    for(i <- 0 until n-1) {
      this(0 until m,i+1) := this(0 until m,i)
    }
    this(0 until m,0) := this(0 until m,n-1)
  }

  override def implicitValue: Vec[Vec[SInt]] = this.mat

  //def  (that : Matrix): Matrix = {

  //}

}
