@JS()
library typescript.three_vrcontrols;

import "package:js/js.dart";
import "three-core.dart" show Camera;

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
