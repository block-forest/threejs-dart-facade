@JS()
library three.vrcontrols;

import 'dart:html';

import "package:js/js.dart";
import "three_core.dart" show Camera;

/// <reference types="webvr-api" />
@JS()
class VRControls {
  // @Ignore
  VRControls.fakeConstructor$();
  external factory VRControls(Camera camera, [void callback(String param)]);

  /// Update VR Instance Tracking
  external void update();
  external void zeroSensor();
  external num get scale;
  external set scale(num v);
  external void setVRDisplay(VRDisplay display);
}
