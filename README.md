# threejs Dart Facade

This is a Dart-JS interop facade for the THREE.js 3D library (version r92). 

Generated with [js-facade-gen](https://github.com/dart-lang/js_facade_gen),
which takes TypeScript .d.ts definitions as input. [THREE definition](https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/three) taken from DefinitelyTyped.

*The threejs Dart Facade requires a Dart 2.0.0-dev SDK*

### Usage

Add a dependency in your pubspec.yaml

    # dependencies:
    #   threejs_facade:
    #     git: https://github.com/block-forest/threejs-dart-facade

### Examples

The [THREE Dart-JS interop Demo](http://acanvas.sounddesignz.com/dart/threejs-interop).

Or, clone this project and run the example scene yourself:

    $> pub global activate webdev
    $> webdev serve example

### Updating definitions with *dart_js_facade_gen*

* Before trying this yourself, please note that generated results for three contain errors that require quite some time to go through and fix. The *typescript/* directory has the original converted files (with errors).
* Install [dart_js_facade_gen](https://github.com/dart-lang/js_facade_gen).
* Download https://cdn.babylonjs.com/babylon.d.ts to lib/src/babylon/
* Run:    
    
        $> dart_js_facade_gen --destination=lib/src/three --basePath=lib/src/three/ three_core.d.ts
        $> dart_js_facade_gen --destination=lib/src/three --basePath=lib/src/three/ three_example.d.ts
        $> # and so on ...

