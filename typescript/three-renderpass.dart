@JS()
library typescript.three_renderpass;

import "package:js/js.dart";
import "three-core.dart"
    show Scene, Camera, Material, Color, WebGLRenderer, WebGLRenderTarget;

@JS()
class RenderPass {
  // @Ignore
  RenderPass.fakeConstructor$();
  external factory RenderPass(Scene scene, Camera camera,
      [Material overrideMaterial,
      dynamic /*Color|String|num*/ clearColor,
      num clearAlpha]);
  external Scene get scene;
  external set scene(Scene v);
  external Camera get camera;
  external set camera(Camera v);
  external Material get overrideMaterial;
  external set overrideMaterial(Material v);
  external dynamic /*Color|String|num*/ get clearColor;
  external set clearColor(dynamic /*Color|String|num*/ v);
  external num get clearAlpha;
  external set clearAlpha(num v);
  external Color get oldClearColor;
  external set oldClearColor(Color v);
  external num get oldClearAlpha;
  external set oldClearAlpha(num v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get clear;
  external set clear(bool v);
  external bool get needsSwap;
  external set needsSwap(bool v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}
