package pixihx;

import pixihx.texture.Texture;

class Sprite extends Container {
	public var texture:Texture;

	public function new(texture:Texture) {
		super();
		this.texture = texture;
	}
}
