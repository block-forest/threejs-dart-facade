@JS()
library typescript.three_mtlloader;

import "package:js/js.dart";
import "three-core.dart"
    show EventDispatcher, LoadingManager, Material, Texture, BufferGeometry;
import "dart:html" show ProgressEvent, ErrorEvent;

/// https://github.com/mrdoob/three.js/blob/master/examples/js/loaders/MTLLoader.js
@JS()
class MTLLoader extends EventDispatcher {
  // @Ignore
  MTLLoader.fakeConstructor$() : super.fakeConstructor$();
  external factory MTLLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external dynamic /*{}*/ get materialOptions;
  external set materialOptions(dynamic /*{}*/ v);
  external List<Material> get materials;
  external set materials(List<Material> v);
  external String get path;
  external set path(String v);
  external String get texturePath;
  external set texturePath(String v);
  external bool get crossOrigin;
  external set crossOrigin(bool v);
  external void load(String url, void onLoad(MaterialCreator materialCreator),
      [void onProgress(ProgressEvent event), void onError(ErrorEvent event)]);
  external MaterialCreator parse(String text);
  external void setPath(String path);
  external void setTexturePath(String path);
  external void setBaseUrl(String path);
  external void setCrossOrigin(bool value);
  external void setMaterialOptions(dynamic value);
}

@JS()
class MaterialCreator {
  // @Ignore
  MaterialCreator.fakeConstructor$();
  external factory MaterialCreator([String baseUrl, dynamic options]);
  external String get baseUrl;
  external set baseUrl(String v);
  external dynamic get options;
  external set options(dynamic v);
  external dynamic get materialsInfo;
  external set materialsInfo(dynamic v);
  external dynamic get materials;
  external set materials(dynamic v);
  external List<Material> get materialsArray;
  external set materialsArray(List<Material> v);
  external dynamic get nameLookup;
  external set nameLookup(dynamic v);
  external num get side;
  external set side(num v);
  external num get wrap;
  external set wrap(num v);
  external void setCrossOrigin(bool value);
  external void setManager(dynamic value);
  external void setMaterials(dynamic materialsInfo);
  external dynamic convert(dynamic materialsInfo);
  external void preload();
  external Material getIndex(String materialName);
  external List<Material> getAsArray();
  external Material create(String materialName);
  external Material createMaterial_(String materialName);
  external dynamic getTextureParams(String value, dynamic matParams);
  external Texture loadTexture(
      String url, dynamic mapping, void onLoad(BufferGeometry bufferGeometry),
      [void onProgress(ProgressEvent event), void onError(ErrorEvent event)]);
}
