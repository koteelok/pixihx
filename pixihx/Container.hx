package pixihx;

import js.lib.Promise;

class Container {
	public var parent:Container;
	public var children = new Array<Container>();

	public function new() {}

	public function addChild(child:Container):Container {
		if (child.parent != null) {
			child.parent.removeChild(child);
		}

		if (children == null) {
			children = [];
		}

		children.push(child);
		child.parent = this;
		return child;
	}

	public function removeChild(child:Container):Container {
		if (children == null) {
			return null;
		}
		var index = children.indexOf(child);
		if (index == -1) {
			return null;
		}
		children.splice(index, 1);
		child.parent = null;
		return child;
	}
}
