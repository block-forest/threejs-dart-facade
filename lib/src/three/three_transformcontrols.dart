@JS()
library three.transformcontrols;

import "package:js/js.dart";
import "three_core.dart" show Object3D, Camera;
import "dart:html" show HtmlElement;

@JS()
class TransformControls extends Object3D {
  // @Ignore
  TransformControls.fakeConstructor$() : super.fakeConstructor$();
  external factory TransformControls(Camera object, [HtmlElement domElement]);
  external num get size;
  external set size(num v);
  external String get space;
  external set space(String v);
  external Object3D get object;
  external set object(Object3D v);
  external void update();
  external void detach();
  external void attach(Object3D object);
  external String getMode();
  external void setMode(String mode);
  external void setSnap(dynamic snap);
  external void setSize(num size);
  external void setSpace(String space);
  external void setTranslationSnap(num size);
  external void setRotationSnap(num size);
}
