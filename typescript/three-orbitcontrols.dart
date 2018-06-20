@JS()
library typescript.three_orbitcontrols;

import "package:js/js.dart";
import "three-core.dart" show Camera, Vector3;
import "dart:html" show HtmlElement, HtmlDocument;

@JS()
class OrbitControls {
  // @Ignore
  OrbitControls.fakeConstructor$();
  external factory OrbitControls(Camera object, [HtmlElement domElement]);
  external Camera get object;
  external set object(Camera v);
  external dynamic /*HtmlElement|HtmlDocument*/ get domElement;
  external set domElement(dynamic /*HtmlElement|HtmlDocument*/ v);

  /// API
  external bool get enabled;
  external set enabled(bool v);
  external Vector3 get target;
  external set target(Vector3 v);

  /// deprecated
  external Vector3 get center;
  external set center(Vector3 v);
  external bool get enableZoom;
  external set enableZoom(bool v);
  external num get zoomSpeed;
  external set zoomSpeed(num v);
  external num get minDistance;
  external set minDistance(num v);
  external num get maxDistance;
  external set maxDistance(num v);
  external bool get enableRotate;
  external set enableRotate(bool v);
  external num get rotateSpeed;
  external set rotateSpeed(num v);
  external bool get enablePan;
  external set enablePan(bool v);
  external num get keyPanSpeed;
  external set keyPanSpeed(num v);
  external bool get autoRotate;
  external set autoRotate(bool v);
  external num get autoRotateSpeed;
  external set autoRotateSpeed(num v);
  external num get minPolarAngle;
  external set minPolarAngle(num v);
  external num get maxPolarAngle;
  external set maxPolarAngle(num v);
  external num get minAzimuthAngle;
  external set minAzimuthAngle(num v);
  external num get maxAzimuthAngle;
  external set maxAzimuthAngle(num v);
  external bool get enableKeys;
  external set enableKeys(bool v);
  external dynamic /*{LEFT: number; UP: number; RIGHT: number; BOTTOM: number;}*/ get keys;
  external set keys(
      dynamic /*{LEFT: number; UP: number; RIGHT: number; BOTTOM: number;}*/ v);
  external dynamic /*{ORBIT: MOUSE; ZOOM: MOUSE; PAN: MOUSE;}*/ get mouseButtons;
  external set mouseButtons(
      dynamic /*{ORBIT: MOUSE; ZOOM: MOUSE; PAN: MOUSE;}*/ v);
  external bool get enableDamping;
  external set enableDamping(bool v);
  external num get dampingFactor;
  external set dampingFactor(num v);
  external void rotateLeft([num angle]);
  external void rotateUp([num angle]);
  external void panLeft([num distance]);
  external void panUp([num distance]);
  external void pan(num deltaX, num deltaY);
  external void dollyIn(num dollyScale);
  external void dollyOut(num dollyScale);
  external void update();
  external void reset();
  external void dispose();
  external num getPolarAngle();
  external num getAzimuthalAngle();

  /// EventDispatcher mixins
  external void addEventListener(String type, void listener(dynamic event));
  external void hasEventListener(String type, void listener(dynamic event));
  external void removeEventListener(String type, void listener(dynamic event));
  external void dispatchEvent(dynamic /*{type: string; target: any;}*/ event);
}
