package mylang;

enum BinOp<U,V,W> {
	Plus : BinOp<Int,Int,Int>;
	Times : BinOp<Int,Int,Int>;
	And : BinOp<Bool,Bool,Bool>;
	Or : BinOp<Bool,Bool,Bool>;
	Eq<X> : BinOp<X,X,Bool>;
	Lt : BinOp<Int,Int,Bool>;
}
