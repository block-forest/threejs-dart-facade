@JS()
library three.css3drenderer;

import "package:js/js.dart";
import "three_core.dart" show Object3D, Scene, Camera;
import "dart:html" show HtmlElement;

@JS()
class CSS3DObject extends Object3D {
  // @Ignore
  CSS3DObject.fakeConstructor$() : super.fakeConstructor$();
  external factory CSS3DObject(dynamic element);
  external dynamic get element;
  external set element(dynamic v);
}

@JS()
class CSS3DSprite extends CSS3DObject {
  // @Ignore
  CSS3DSprite.fakeConstructor$() : super.fakeConstructor$();
  external factory CSS3DSprite(dynamic element);
}

/// This renderer does not work in IE. Can be found here for more information.
/// https://github.com/mrdoob/three.js/issues/4783
@JS()
class CSS3DRenderer {
  // @Ignore
  CSS3DRenderer.fakeConstructor$();
  external factory CSS3DRenderer();
  external HtmlElement get domElement;
  external set domElement(HtmlElement v);
  external void setSize(num width, num height);
  external void render(Scene scene, Camera camera);
}
