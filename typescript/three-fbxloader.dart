@JS()
library typescript.three_fbxloader;

import "package:js/js.dart";
import "three-core.dart" show LoadingManager, Group;
import "dart:html" show ProgressEvent, ErrorEvent;

/// https://github.com/mrdoob/three.js/blob/master/examples/js/loaders/FBXLoader.js
@JS()
class FBXLoader {
  // @Ignore
  FBXLoader.fakeConstructor$();
  external factory FBXLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url, void onLoad(Group group),
      [void onProgress(ProgressEvent event), void onError(ErrorEvent event)]);
  external Group parse(String FBXText, String resourceDirectory);
}
