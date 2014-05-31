import mylang.BinOp;
import mylang.Instr;
import mylang.Program;
import mylang.Stack;

using mylang.Programs;
using mylang.Stacks;

class Ex1 {
	public static function main() {
		var x =
			Instr(IConstI(20),
			Instr(IConstI(10),
			Instr(IBinOp(Plus),
			End)));
		trace(x.denote(Nil).value());
		var y =
			Instr(IConstI(30),
			Instr(IConstI(20),
			Instr(IConstI(10),
			Instr(IBinOp(Plus),
			Instr(IBinOp(Eq),
			End)))));
		trace(y.denote(Nil).value());
	}
}
