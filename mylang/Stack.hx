package mylang;

enum Stack<T> {
	Nil : Stack<TNil>;
	Cons<U,V>(x : U, xs : Stack<V>) : Stack<TCons<U,V>>;
}
