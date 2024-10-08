package pixihx;

import pixihx.texture.sources.ImageSource;
import pixihx.texture.Texture;
import js.html.Image;

class Assets {
	public static function loadTexture(url:String, onComplete:Texture->Void):Void {
		var img = new Image();
		img.src = url;
		img.onload = _ -> {
			onComplete(new Texture(new ImageSource(img)));
		}
	}
}
