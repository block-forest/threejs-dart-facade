@JS()
library three.objloader;

import "package:js/js.dart";
import "three_core.dart" show LoadingManager, Material, Group;
import "dart:html" show ProgressEvent, ErrorEvent;
import "three_mtlloader.dart" show MaterialCreator;

/// https://github.com/mrdoob/three.js/blob/master/examples/js/loaders/OBJLoader.js
@JS()
class OBJLoader {
  // @Ignore
  OBJLoader.fakeConstructor$();
  external factory OBJLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external dynamic get regexp;
  external set regexp(dynamic v);
  external List<Material> get materials;
  external set materials(List<Material> v);
  external String get path;
  external set path(String v);
  external void load(String url, void onLoad(Group group),
      [void onProgress(ProgressEvent event), void onError(ErrorEvent event)]);
  external Group parse(String data);
  external void setPath(String value);
  external void setMaterials(MaterialCreator materials);
  external dynamic JS$_createParserState();
}
