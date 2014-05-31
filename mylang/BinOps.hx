package mylang;

class BinOps {
	public static function denote<U,V,W>(f : BinOp<U,V,W>, x : U, y : V): W {
		return switch(f) {
			case Plus: x + y;
			case Times: x * y;
			case And: x && y;
			case Or: x || y;
			case Eq: x == y;
			case Lt: x < y;
		}
	}
}
