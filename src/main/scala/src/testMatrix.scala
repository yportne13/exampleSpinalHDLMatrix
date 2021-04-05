import spinal.core._
import spinal.lib._

import spinal.lib.Matrix._

class testMatrix extends Component {
  val m1 = Matrix2D(8 bits,2,2)
  val m2 = Matrix2D(8 bits,2,2)
  m2.rotateLeft
  //val m3 = m1 * m2
  //m1 := (m1 * m2)(8 downto 1)
  val m3 = Matrix2D(8 bits,2,2)
  m3(0,0 until 2) := m1(0,0 until 2)
  m3(1,0 until 2) := m2(1,0 until 2)
  val m4 = Matrix2D(9 bits,2,2)
  m4 := m1 *- m2

  val m5 = m1 * m2
  //m4.shiftDown
}

object test {
  def main(args : Array[String]) {
    SpinalVerilog(new testMatrix)
  }
}
