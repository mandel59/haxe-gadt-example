package mylang;

class Stacks {
	public static function value<T>(s : Stack<TCons<T, TNil>>) : T {
		return switch(s) {
			case Cons(v, _): v;
		}
	}
}
