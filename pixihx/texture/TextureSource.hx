package pixihx.texture;

typedef TextureSourceOptions = {
	@:optional var resource:Dynamic;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var resolution:Dynamic;
	@:optional var format:Dynamic;
}

class TextureSource {
	public function new(options:TextureSourceOptions) {}
}
