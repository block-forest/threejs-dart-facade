@JS()
library typescript.three_tgaloader;

import "package:js/js.dart";
import "three-core.dart" show LoadingManager, Texture;
import "dart:html" show ProgressEvent, ErrorEvent;

/// https://github.com/mrdoob/three.js/blob/master/examples/js/loaders/TGALoader.js
@JS()
class TGALoader {
  // @Ignore
  TGALoader.fakeConstructor$();
  external factory TGALoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external Texture load(String url,
      [void onLoad(Texture texture),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
}
