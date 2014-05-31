package mylang;

enum Exp<T> {
	ConstB(b : Bool) : Exp<Bool>;
	ConstI(i : Int) : Exp<Int>;
	BinOp<U,V,W>(f : BinOp<U,V,W>, e1 : Exp<U>, e2 : Exp<V>) : Exp<W>;
}
