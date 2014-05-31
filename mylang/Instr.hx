package mylang;

enum Instr<X,Y> {
	IConstB<S>(b : Bool) : Instr<S,TCons<Bool,S>>;
	IConstI<S>(i : Int) : Instr<S,TCons<Int,S>>;
	IBinOp<U,V,W,S>(f : BinOp<U,V,W>) : Instr<TCons<U,TCons<V,S>>,TCons<W,S>>;
}
