package discord_js;

typedef RecursiveArray<T> = {
	/**
		Gets the length of the array. This is a number one higher than the highest element defined in an array.
	**/
	final length : Float;
	/**
		Returns a string representation of an array.
	**/
	function toString():String;
	/**
		Returns a string representation of an array. The elements are converted to string using their toLocalString methods.
	**/
	function toLocaleString():String;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<ts.AnyOf3<RecursiveArray<T>, js.lib.ConcatArray<ts.AnyOf2<RecursiveArray<T>, T>>, T>>):Array<ts.AnyOf2<RecursiveArray<T>, T>> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<ts.AnyOf2<RecursiveArray<T>, T>>>):Array<ts.AnyOf2<RecursiveArray<T>, T>>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<ts.AnyOf2<RecursiveArray<T>, T>>;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:ts.AnyOf2<RecursiveArray<T>, T>, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:ts.AnyOf2<RecursiveArray<T>, T>, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Any, ?thisArg:Dynamic):Array<ts.AnyOf2<RecursiveArray<T>, T>> { })
	function filter<S>(callbackfn:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ts.AnyOf2<RecursiveArray<T>, T>, currentValue:ts.AnyOf2<RecursiveArray<T>, T>, currentIndex:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> ts.AnyOf2<RecursiveArray<T>, T>, initialValue:ts.AnyOf2<RecursiveArray<T>, T>):ts.AnyOf2<RecursiveArray<T>, T> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.AnyOf2<RecursiveArray<T>, T>, currentIndex:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:ts.AnyOf2<RecursiveArray<T>, T>, currentValue:ts.AnyOf2<RecursiveArray<T>, T>, currentIndex:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> ts.AnyOf2<RecursiveArray<T>, T>):ts.AnyOf2<RecursiveArray<T>, T>;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:ts.AnyOf2<RecursiveArray<T>, T>, currentValue:ts.AnyOf2<RecursiveArray<T>, T>, currentIndex:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> ts.AnyOf2<RecursiveArray<T>, T>, initialValue:ts.AnyOf2<RecursiveArray<T>, T>):ts.AnyOf2<RecursiveArray<T>, T> { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:ts.AnyOf2<RecursiveArray<T>, T>, currentIndex:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:ts.AnyOf2<RecursiveArray<T>, T>, currentValue:ts.AnyOf2<RecursiveArray<T>, T>, currentIndex:Float, array:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> ts.AnyOf2<RecursiveArray<T>, T>):ts.AnyOf2<RecursiveArray<T>, T>;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, obj:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Any, ?thisArg:Dynamic):Null<ts.AnyOf2<RecursiveArray<T>, T>> { })
	function find<S>(predicate:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, obj:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:ts.AnyOf2<RecursiveArray<T>, T>, index:Float, obj:haxe.ds.ReadOnlyArray<ts.AnyOf2<RecursiveArray<T>, T>>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, ts.AnyOf2<RecursiveArray<T>, T>>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.IterableIterator<ts.AnyOf2<RecursiveArray<T>, T>>;
};