@JS()
library typescript.three_filmpass;

import "package:js/js.dart";
import "three-effectcomposer.dart" show Pass;
import "three-core.dart" show Scene, Camera, IUniform, Material, Mesh;

@JS()
class FilmPass extends Pass {
  // @Ignore
  FilmPass.fakeConstructor$() : super.fakeConstructor$();
  external factory FilmPass(num noiseIntensity, num scanlinesIntensity,
      num scanlinesCount, bool grayscale);
  external Scene get scene;
  external set scene(Scene v);
  external Camera get camera;
  external set camera(Camera v);
  external IUniform get uniforms;
  external set uniforms(IUniform v);
  external Material get material;
  external set material(Material v);
  external Mesh get quad;
  external set quad(Mesh v);
}
