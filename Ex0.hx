import mylang.BinOp;
import mylang.Exp;

using mylang.Exps;

class Ex0 {
	public static function main() {
		var x = BinOp(Plus, ConstI(10), ConstI(20));
		trace(x.denote());
		var y = BinOp(Eq, x, ConstI(30));
		trace(y.denote());
		//var z = BinOp(Eq, x, ConstB(true));
	}
}
