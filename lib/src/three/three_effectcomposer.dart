@JS()
library three.effectcomposer;

import "package:js/js.dart";
import "three_core.dart" show WebGLRenderer, WebGLRenderTarget;
import "three_shaderpass.dart" show ShaderPass;

@JS()
class EffectComposer {
  // @Ignore
  EffectComposer.fakeConstructor$();
  external factory EffectComposer(WebGLRenderer renderer,
      [WebGLRenderTarget renderTarget]);
  external WebGLRenderTarget get renderTarget1;
  external set renderTarget1(WebGLRenderTarget v);
  external WebGLRenderTarget get renderTarget2;
  external set renderTarget2(WebGLRenderTarget v);
  external WebGLRenderTarget get writeBuffer;
  external set writeBuffer(WebGLRenderTarget v);
  external WebGLRenderTarget get readBuffer;
  external set readBuffer(WebGLRenderTarget v);
  external List<dynamic> get passes;
  external set passes(List<dynamic> v);
  external ShaderPass get copyPass;
  external set copyPass(ShaderPass v);
  external void swapBuffers();
  external void addPass(dynamic pass);
  external void insertPass(dynamic pass, num index);
  external void render([num delta]);
  external void reset([WebGLRenderTarget renderTarget]);
  external void setSize(num width, num height);
}

@JS()
class Pass {
  // @Ignore
  Pass.fakeConstructor$();

  /// if set to true, the pass is processed by the composer
  external bool get enabled;
  external set enabled(bool v);

  /// if set to true, the pass indicates to swap read and write buffer after rendering
  external bool get needsSwap;
  external set needsSwap(bool v);

  /// if set to true, the pass clears its buffer before rendering
  external bool get clear;
  external set clear(bool v);

  /// if set to true, the result of the pass is rendered to screen
  external bool get renderToScreen;
  external set renderToScreen(bool v);
  external void setSize(num width, num height);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta,
      [bool maskActive]);
}
