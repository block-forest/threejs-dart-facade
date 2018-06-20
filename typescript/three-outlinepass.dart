@JS()
library typescript.three_outlinepass;

import "package:js/js.dart";
import "three-core.dart" show Vector2, Scene, Camera, Object3D, Color;

@JS()
class OutlinePass {
  // @Ignore
  OutlinePass.fakeConstructor$();
  external factory OutlinePass(Vector2 size, Scene scene, Camera camer,
      [List<Object3D> selectedObjects]);
  external List<Object3D> get selectedObjects;
  external set selectedObjects(List<Object3D> v);
  external Camera get renderCamera;
  external set renderCamera(Camera v);
  external Color get visibleEdgeColor;
  external set visibleEdgeColor(Color v);
  external Color get hiddenEdgeColor;
  external set hiddenEdgeColor(Color v);
  external num get edgeGlow;
  external set edgeGlow(num v);
  external bool get usePatternTexture;
  external set usePatternTexture(bool v);
  external num get edgeThickness;
  external set edgeThickness(num v);
  external num get edgeStrength;
  external set edgeStrength(num v);
  external num get downSampleRatio;
  external set downSampleRatio(num v);
  external num get pulsePeriod;
  external set pulsePeriod(num v);
  external Vector2 get resolution;
  external set resolution(Vector2 v);
}
