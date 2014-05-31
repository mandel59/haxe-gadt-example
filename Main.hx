import mylang.BinOp;
import mylang.Exp;
import mylang.Instr;
import mylang.Program;
import mylang.Stack;

using mylang.Compiler;
using mylang.Exps;
using mylang.Programs;
using mylang.Stacks;

class Main {
	public static function main() {
		var x = BinOp(Eq, BinOp(Plus, ConstI(10), ConstI(20)), ConstI(30));
		var v = x.denote();
		trace(v);
		var y = x.compile(End);
		var w = y.denote(Nil).value();
		trace(w);
	}
}
