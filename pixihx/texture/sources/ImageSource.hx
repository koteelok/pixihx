package pixihx.texture.sources;

import js.html.Image;

class ImageSource implements TextureSource {
	public var image:Image;
	public var destroyed:Bool;

	public function new(image:Image) {
		this.image = image;
    this.destroyed = false;
	}
}
