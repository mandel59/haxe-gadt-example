package mylang;

class Exps {
	public static function denote<T>(exp : Exp<T>) : T {
		return switch(exp) {
			case ConstB(b): b;
			case ConstI(i): i;
			case BinOp(f, e1, e2): BinOps.denote(f, denote(e1), denote(e2));
		}
	}
}
