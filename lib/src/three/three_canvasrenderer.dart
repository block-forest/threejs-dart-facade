@JS("THREE")
library three.canvasrenderer;

import "package:js/js.dart";
import "three_core.dart"
    show Camera, Color, Material, MaterialParameters, Plane, Renderer, Scene;
import "package:func2/func.dart";
import "dart:html" show CanvasRenderingContext2D, CanvasElement;

@anonymous
@JS()
abstract class SpriteCanvasMaterialParameters implements MaterialParameters {
  external num get color;
  external set color(num v);
  external VoidFunc2<CanvasRenderingContext2D, Color> get program;
  external set program(VoidFunc2<CanvasRenderingContext2D, Color> v);
  external factory SpriteCanvasMaterialParameters(
      {num color,
      VoidFunc2<CanvasRenderingContext2D, Color> program,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class SpriteCanvasMaterial extends Material {
  // @Ignore
  SpriteCanvasMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory SpriteCanvasMaterial(
      [SpriteCanvasMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external void program(CanvasRenderingContext2D context, Color color);
}

@anonymous
@JS()
abstract class CanvasRendererParameters {
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external num get devicePixelRatio;
  external set devicePixelRatio(num v);
  external bool get alpha;
  external set alpha(bool v);
  external factory CanvasRendererParameters(
      {CanvasElement canvas, num devicePixelRatio, bool alpha});
}

@JS()
class CanvasRenderer implements Renderer {
  // @Ignore
  CanvasRenderer.fakeConstructor$();
  external factory CanvasRenderer([CanvasRendererParameters parameters]);
  external CanvasElement get domElement;
  external set domElement(CanvasElement v);
  external bool get autoClear;
  external set autoClear(bool v);
  external bool get sortObjects;
  external set sortObjects(bool v);
  external bool get sortElements;
  external set sortElements(bool v);
  external dynamic /*{render: {vertices: number; faces: number;};}*/ get info;
  external set info(
      dynamic /*{render: {vertices: number; faces: number;};}*/ v);
  external void supportsVertexTextures();
  external void setFaceCulling();
  external num getPixelRatio();
  external void setPixelRatio(num value);
  external void setSize(num width, num height, [bool updateStyle]);
  external void setViewport(num x, num y, num width, num height);
  external void setScissor();
  external void enableScissorTest();
  external void setClearColor(dynamic /*Color|String|num*/ color,
      [num opacity]);

  /// setClearColor(color: string, opacity?: number): void;
  /// setClearColor(color: number, opacity?: number): void;
  external void setClearColorHex(num hex, [num alpha]);
  external Color getClearColor();
  external num getClearAlpha();
  external num getMaxAnisotropy();
  external void clear();
  external void clearColor();
  external void clearDepth();
  external void clearStencil();
  external void render(Scene scene, Camera camera);
}
