@JS()
library three.vreffect;

import 'dart:html';

import "package:js/js.dart";
import "three_core.dart" show Renderer, Scene, Camera, Matrix4;

/// <reference types="webvr-api" />
@JS()
class VREffect {
  // @Ignore
  VREffect.fakeConstructor$();
  external factory VREffect(Renderer renderer, [void callback(String params)]);
  external void render(Scene scene, Camera camera);
  external void setSize(num width, num height);
  external void setFullScreen(bool flag);
  external void startFullscreen();
  external VREffectOffset FovToNDCScaleOffset(VRFov fov);
  external Matrix4 FovPortToProjection(
      VRFov fov, bool rightHanded, num zNear, num zFar);
  external Matrix4 FovToProjection(
      VRFov fov, bool rightHanded, num zNear, num zFar);
  external dynamic toJSON(
      [dynamic /*{ geometries: any, materials: any, textures: any, images: any }*/ meta]);
}

@anonymous
@JS()
abstract class VRFov {
  external num get leftTan;
  external set leftTan(num v);
  external num get rightTan;
  external set rightTan(num v);
  external num get upTan;
  external set upTan(num v);
  external num get downTan;
  external set downTan(num v);
  external factory VRFov({num leftTan, num rightTan, num upTan, num downTan});
}

@anonymous
@JS()
abstract class VREffectOffset {
  external num get scale;
  external set scale(num v);
  external num get offset;
  external set offset(num v);
  external factory VREffectOffset({num scale, num offset});
}
