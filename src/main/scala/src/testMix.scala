import spinal.core._

class testMixed extends Component {
  val io = new Bundle {
    val din = in Bits(2 bits)
    val addw = in UInt(4 bits)
    val addr = in UInt(3 bits)
    val dout = out Bits(4 bits)
  }

  val ram = Mem(Bits(4 bits),8)
  ram.writeImpl(
    address = io.addw,
    data = io.din, allowMixedWidth = true
  )
  io.dout := ram.readSync(io.addr)

}

object testMix {
  def main(args : Array[String]) {
    SpinalVerilog(new testMixed)
  }
}
