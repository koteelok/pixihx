package pixihx;

import js.html.webgl.WebGL2RenderingContext;
import js.Browser;
import js.html.CanvasElement;

#if js
class WebGLRenderer {
	private var view:CanvasElement;
	private var gl:WebGL2RenderingContext;

	public function new() {}

	public function init(props:{
		width:Int,
		height:Int,
	}) {
		view = cast Browser.document.createElement("canvas");
		view.width = props.width;
		view.height = props.height;
		Browser.document.body.appendChild(view);

		gl = cast view.getContext("webgl2");
		if (gl == null) {
			throw "WebGL2 not supported";
		}

		gl.viewport(0, 0, props.width, props.height);
		gl.clearColor(0, 0, 0, 0);
		gl.clear(WebGL2RenderingContext.COLOR_BUFFER_BIT);
	}

	public function render(container:Container) {}
}
#end
