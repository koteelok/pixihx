package pixihx.math;

import haxe.io.Float32Array;

class Matrix {
	public var a:Float;
	public var b:Float;
	public var c:Float;
	public var d:Float;
	public var tx:Float;
	public var ty:Float;

	public function new(a:Float = 1, b:Float = 0, c:Float = 0, d:Float = 1, tx:Float = 0, ty:Float = 0) {
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.tx = tx;
		this.ty = ty;
	}

	public function set(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix {
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.tx = tx;
		this.ty = ty;
		return this;
	}

	public function fromArray(array:Float32Array):Matrix {
		this.a = array[0];
		this.b = array[1];
		this.c = array[2];
		this.d = array[3];
		this.tx = array[4];
		this.ty = array[5];
		return this;
	}

	private var array:Float32Array;

	public function toArray(transpose:Bool = false, out:Float32Array = null):Float32Array {
		if (array == null) {
			array = new Float32Array(9);
		}

		if (transpose) {
			array[0] = this.a;
			array[1] = this.b;
			array[2] = 0;
			array[3] = this.c;
			array[4] = this.d;
			array[5] = 0;
			array[6] = this.tx;
			array[7] = this.ty;
			array[8] = 1;
		} else {
			array[0] = this.a;
			array[1] = this.c;
			array[2] = this.tx;
			array[3] = this.b;
			array[4] = this.d;
			array[5] = this.ty;
			array[6] = 0;
			array[7] = 0;
			array[8] = 1;
		}

		return array;
	}
}
