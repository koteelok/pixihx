package pixihx.math;

abstract Point(Array<Float>) {
	overload extern public inline function new() {
		this = [0, 0];
	}

	overload extern public inline function new(x:Float, y:Float) {
		this = [x, y];
	}

	public extern var x(get, set):Float;

	extern inline function get_x():Float {
		return this[0];
	}

	extern inline function set_x(value:Float):Float {
		return this[0] = value;
	}

	public extern var y(get, set):Float;

	extern inline function get_y():Float {
		return this[1];
	}

	extern inline function set_y(value:Float):Float {
		return this[1] = value;
	}

	public inline function clone():Point {
		return new Point(x, y);
	}

	public inline function set(x:Float, y:Float):Point {
		abstract.x = x;
		abstract.y = y;
		return abstract;
	}

	public inline function copyFrom(other:Point):Point {
		abstract.x = other.x;
		abstract.y = other.y;
		return abstract;
	}

	public extern inline function copyTo(other:Point):Point {
		other.x = abstract.x;
		other.y = abstract.y;
		return other;
	}

	@:op(a == b)
	public static extern inline function equals(a:Point, b:Point):Bool {
		return (a.x == b.x) && (a.y == b.y);
	}

	public inline function toString():String {
		return '[pixihx.math.Point x=${abstract .x} y=${abstract .y}]';
	}
}
