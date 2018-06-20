@JS()
library typescript.three_octree;

import "package:js/js.dart";
import "three-core.dart" show Vector3;

@JS()
class Octree {
  // @Ignore
  Octree.fakeConstructor$();
  external factory Octree([dynamic parameters]);
  external void update();
  external dynamic add(dynamic object, [dynamic options]);
  external dynamic addDeferred(dynamic object, [dynamic options]);
  external dynamic addObjectData(dynamic object, dynamic JS$part);
  external dynamic remove(dynamic object);
  external dynamic extend(Octree octree);
  external dynamic rebuild();
  external dynamic updateObject(dynamic object);
  external dynamic search(
      Vector3 position, num radius, bool organizeByObject, Vector3 direction);
  external dynamic setRoot(dynamic root);
  external num getDepthEnd();
  external num getNodeCountEnd();
  external num getObjectCountEnd();
  external dynamic toConsole();
}
