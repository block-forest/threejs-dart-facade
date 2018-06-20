@JS()
library three.ctmloader;

import "package:js/js.dart";
import "three_core.dart" show Loader;

@JS()
class CTMLoader extends Loader {
  // @Ignore
  CTMLoader.fakeConstructor$() : super.fakeConstructor$();
  external factory CTMLoader();

  /// load multiple CTM parts defined in JSON.
  external dynamic loadParts(String url, dynamic callback(),
      [dynamic parameters]);

  /// Load CTMLoader compressed models
  external dynamic load(String url, dynamic callback(dynamic geo),
      [dynamic parameters]);

  /// create buffergeometry by ctm file.
  external dynamic createModel(String file, dynamic callback());
}
