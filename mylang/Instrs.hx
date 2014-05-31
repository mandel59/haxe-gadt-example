package mylang;

class Instrs {
	public static function denote<X,Y>(instr : Instr<X,Y>, s : Stack<X>) : Stack<Y> {
		return switch(instr) {
			case IConstB(b): Cons(b, s);
			case IConstI(i): Cons(i, s);
			case IBinOp(f): switch(s) {
				case Cons(x, Cons(y, s0)): Cons(BinOps.denote(f, x, y), s0);
			}
		}
	}
}
