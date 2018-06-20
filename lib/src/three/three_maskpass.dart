@JS()
library three.maskpass;

import "package:js/js.dart";
import "three_core.dart" show Scene, Camera, WebGLRenderer, WebGLRenderTarget;

@JS()
class MaskPass {
  // @Ignore
  MaskPass.fakeConstructor$();
  external factory MaskPass(Scene scene, Camera camera);
  external Scene get scene;
  external set scene(Scene v);
  external Camera get camera;
  external set camera(Camera v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get clear;
  external set clear(bool v);
  external bool get needsSwap;
  external set needsSwap(bool v);
  external bool get inverse;
  external set inverse(bool v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}

@JS()
class ClearMaskPass {
  // @Ignore
  ClearMaskPass.fakeConstructor$();
  external factory ClearMaskPass();
  external bool get enabled;
  external set enabled(bool v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}
