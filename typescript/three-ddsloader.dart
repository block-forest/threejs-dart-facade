@JS()
library typescript.three_ddsloader;

import "package:js/js.dart";
import "dart:html" show ImageData;
import "three-core.dart" show CompressedTextureLoader;

/// https://github.com/mrdoob/three.js/blob/master/examples/js/loaders/DDSLoader.js
@anonymous
@JS()
abstract class Dds {
  external List<ImageData> get mipmaps;
  external set mipmaps(List<ImageData> v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external num /*enum CompressedPixelFormat*/ get format;
  external set format(num /*enum CompressedPixelFormat*/ v);
  external num get mipmapCount;
  external set mipmapCount(num v);
  external factory Dds(
      {List<ImageData> mipmaps,
      num width,
      num height,
      num /*enum CompressedPixelFormat*/ format,
      num mipmapCount});
}

@JS()
class DDSLoader extends CompressedTextureLoader {
  // @Ignore
  DDSLoader.fakeConstructor$() : super.fakeConstructor$();
  external factory DDSLoader();
  external Dds parse(String buffer, bool loadMipmaps);
}
