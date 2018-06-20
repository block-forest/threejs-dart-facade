@JS()
library three.projector;

import "package:js/js.dart";
import "three_core.dart"
    show Vector3, Color, Material, Vector2, Vector4, Camera, Scene;

/// Renderers / Renderables /////////////////////////////////////////////////////////////////////
@JS()
class RenderableObject {
  // @Ignore
  RenderableObject.fakeConstructor$();
  external factory RenderableObject();
  external num get id;
  external set id(num v);
  external dynamic get object;
  external set object(dynamic v);
  external num get z;
  external set z(num v);
}

@JS()
class RenderableFace {
  // @Ignore
  RenderableFace.fakeConstructor$();
  external factory RenderableFace();
  external num get id;
  external set id(num v);
  external RenderableVertex get v1;
  external set v1(RenderableVertex v);
  external RenderableVertex get v2;
  external set v2(RenderableVertex v);
  external RenderableVertex get v3;
  external set v3(RenderableVertex v);
  external Vector3 get normalModel;
  external set normalModel(Vector3 v);
  external List<Vector3> get vertexNormalsModel;
  external set vertexNormalsModel(List<Vector3> v);
  external num get vertexNormalsLength;
  external set vertexNormalsLength(num v);
  external Color get color;
  external set color(Color v);
  external Material get material;
  external set material(Material v);
  external List<List<Vector2>> get uvs;
  external set uvs(List<List<Vector2>> v);
  external num get z;
  external set z(num v);
}

@JS()
class RenderableVertex {
  // @Ignore
  RenderableVertex.fakeConstructor$();
  external factory RenderableVertex();
  external Vector3 get position;
  external set position(Vector3 v);
  external Vector3 get positionWorld;
  external set positionWorld(Vector3 v);
  external Vector4 get positionScreen;
  external set positionScreen(Vector4 v);
  external bool get visible;
  external set visible(bool v);
  external void copy(RenderableVertex vertex);
}

@JS()
class RenderableLine {
  // @Ignore
  RenderableLine.fakeConstructor$();
  external factory RenderableLine();
  external num get id;
  external set id(num v);
  external RenderableVertex get v1;
  external set v1(RenderableVertex v);
  external RenderableVertex get v2;
  external set v2(RenderableVertex v);
  external List<Color> get vertexColors;
  external set vertexColors(List<Color> v);
  external Material get material;
  external set material(Material v);
  external num get z;
  external set z(num v);
}

@JS()
class RenderableSprite {
  // @Ignore
  RenderableSprite.fakeConstructor$();
  external factory RenderableSprite();
  external num get id;
  external set id(num v);
  external dynamic get object;
  external set object(dynamic v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get rotation;
  external set rotation(num v);
  external Vector2 get scale;
  external set scale(Vector2 v);
  external Material get material;
  external set material(Material v);
}

/// Projects points between spaces.
@JS()
class Projector {
  // @Ignore
  Projector.fakeConstructor$();
  external factory Projector();

  /// deprecated.
  external Vector3 projectVector(Vector3 vector, Camera camera);

  /// deprecated.
  external Vector3 unprojectVector(Vector3 vector, Camera camera);

  /// Transforms a 3D scene object into 2D render data that can be rendered in a screen with your renderer of choice, projecting and clipping things out according to the used camera.
  /// If the scene were a real scene, this method would be the equivalent of taking a picture with the camera (and developing the film would be the next step, using a Renderer).
  external dynamic
      /*{
        objects: Object3D[];     // Mesh, Line or other object
        sprites: Object3D[];    // Sprite or Particle
        lights: Light[];
        elements: Face3[];    // Line, Particle, Face3 or Face4
    }*/
      projectScene(Scene scene, Camera camera, bool sortObjects, [bool sortElements]);
}
