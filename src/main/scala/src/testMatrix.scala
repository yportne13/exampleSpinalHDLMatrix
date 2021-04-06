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

import spinal.lib.fsm._

class TopLevel extends Component {

  val io = new Bundle {
    val start = in Bool
    val input = in SInt(8 bits)
  }

  val m1 = Matrix2D(8 bits,4,4)

  val fsm = new StateMachine{
    val counter = Reg(UInt(8 bits)) init (0)

    val sIdle : State = new State with EntryPoint{
      whenIsActive (
        when(io.start) {
          goto(sLoad)
        }
      )
    }
    val sLoad : State = new State {
      whenIsActive {
        counter := counter + 1
        m1.load(io.input)
        when(counter === 15) {
          counter := 0
          goto(stateB)
        }
      }
    }
    val stateB : State = new State{
      onEntry(counter := 0)
      whenIsActive {
        m1.rotateDown
        counter := counter + 1
        when(counter === 3){
          goto(stateC)
        }
      }
    }
    val stateC : State = new State{
      whenIsActive (goto(sIdle))
    }
  }
}

object test {
  def main(args : Array[String]) {
    SpinalVerilog(new TopLevel)
  }
}
