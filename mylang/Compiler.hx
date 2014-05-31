package mylang;

class Compiler {
	public static function compile<T,S,R>(exp : Exp<T>, cont : Program<TCons<T,S>,R>) : Program<S,R> {
		return switch(exp) {
			case ConstB(b): Instr(IConstB(b), cont);
			case ConstI(i): Instr(IConstI(i), cont);
			case BinOp(f, e1, e2): compile(e2, compile(e1, Instr(IBinOp(f), cont)));
		}
	}
}
