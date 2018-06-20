@JS()
library three.orthographictrackballcontrols;

import "package:js/js.dart";
import "three_core.dart" show EventDispatcher, Camera, Vector3;
import "dart:html" show HtmlElement;

@JS()
class OrthographicTrackballControls extends EventDispatcher {
  // @Ignore
  OrthographicTrackballControls.fakeConstructor$() : super.fakeConstructor$();
  external factory OrthographicTrackballControls(Camera object,
      [HtmlElement domElement]);
  external Camera get object;
  external set object(Camera v);
  external HtmlElement get domElement;
  external set domElement(HtmlElement v);

  /// API
  external bool get enabled;
  external set enabled(bool v);
  external dynamic /*{left: number; top: number; width: number; height: number}*/ get screen;
  external set screen(
      dynamic /*{left: number; top: number; width: number; height: number}*/ v);
  external num get radius;
  external set radius(num v);
  external num get rotateSpeed;
  external set rotateSpeed(num v);
  external num get zoomSpeed;
  external set zoomSpeed(num v);
  external num get panSpeed;
  external set panSpeed(num v);
  external bool get noRotate;
  external set noRotate(bool v);
  external bool get noZoom;
  external set noZoom(bool v);
  external bool get noPan;
  external set noPan(bool v);
  external bool get noRoll;
  external set noRoll(bool v);
  external bool get staticMoving;
  external set staticMoving(bool v);
  external num get dynamicDampingFactor;
  external set dynamicDampingFactor(num v);
  external List<num> get keys;
  external set keys(List<num> v);
  external Vector3 get target;
  external set target(Vector3 v);
  external Vector3 get position0;
  external set position0(Vector3 v);
  external Vector3 get target0;
  external set target0(Vector3 v);
  external Vector3 get up0;
  external set up0(Vector3 v);
  external num get left0;
  external set left0(num v);
  external num get right0;
  external set right0(num v);
  external num get top0;
  external set top0(num v);
  external num get bottom0;
  external set bottom0(num v);
  external void update();
  external void reset();
  external void checkDistances();
  external void zoomCamera();
  external void panCamera();
  external void rotateCamera();
  external void handleResize();
  external void handleEvent(dynamic event);
}
