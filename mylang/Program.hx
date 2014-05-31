package mylang;

enum Program<X,Y> {
	End<A> : Program<A,A>;
	Instr<A,B,C>(instr : Instr<A,B>, cont : Program<B,C>) : Program<A,C>;
}
