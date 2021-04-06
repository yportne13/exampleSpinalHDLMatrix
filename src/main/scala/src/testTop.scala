
import spinal.core._
import spinal.sim._
import spinal.core.sim._

import scala.util.Random


//MyTopLevel's testbench
object TopLevelSim {
  def main(args: Array[String]) {
    SimConfig.withWave.doSim(new TopLevel){dut =>
      //Fork a process to generate the reset and the clock on the dut
      dut.clockDomain.forkStimulus(period = 10)

      var modelState = 0
      for(idx <- 0 to 99){
        //Drive the dut inputs with random values
        dut.io.input #= idx - 2
        if(idx == 1) {
          dut.io.start #= true
        }else {
          dut.io.start #= false
        }

        //Wait a rising edge on the clock
        dut.clockDomain.waitRisingEdge()

        //Check that the dut values match with the reference model ones
        dut.m1.printMat
      }
    }
  }
}
