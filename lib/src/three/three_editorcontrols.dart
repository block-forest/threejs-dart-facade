@JS()
library three.editorcontrols;

import "package:js/js.dart";
import "three_core.dart" show EventDispatcher, Camera, Vector3, Object3D;
import "dart:html" show HtmlElement;

@JS()
class EditorControls extends EventDispatcher {
  // @Ignore
  EditorControls.fakeConstructor$() : super.fakeConstructor$();
  external factory EditorControls(Camera object, [HtmlElement domElement]);
  external bool get enabled;
  external set enabled(bool v);
  external Vector3 get center;
  external set center(Vector3 v);
  external void focus(Object3D target, bool frame);
  external void pan(Vector3 delta);
  external void zoom(Vector3 delta);
  external void rotate(Vector3 delta);
  external void dispose();
}
