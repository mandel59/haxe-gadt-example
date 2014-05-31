package mylang;

class Programs {
	public static function denote<X,Y>(p : Program<X,Y>, s : Stack<X>) : Stack<Y> {
		return switch(p) {
			case End: s;
			case Instr(instr, cont): denote(cont, Instrs.denote(instr, s));
		}
	}
}
