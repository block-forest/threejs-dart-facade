@JS()
library typescript.three_core;

import "package:js/js.dart";
import "dart:typed_data"
    show
        Float32List,
        TypedData,
        ByteBuffer,
        Int8List,
        Uint8List,
        Uint8ClampedList,
        Int16List,
        Uint16List,
        Int32List,
        Uint32List,
        Float64List;
import "package:func/func.dart";
import "dart:html"
    show
        ProgressEvent,
        ErrorEvent,
        MimeType,
        ImageElement,
        CanvasElement,
        VideoElement,
        ImageData;
import "dart:web_gl" show RenderingContext;
import "dart:web_audio"
    show AudioContext, AudioBufferSourceNode, GainNode, PannerNode;

@JS()
external String get REVISION;

/// https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button
@JS()
class MOUSE {
  external static num get LEFT;
  external static num get MIDDLE;
  external static num get RIGHT;
}

/// GL STATE CONSTANTS
@JS()
class CullFace {}

@JS()
external num /*enum CullFace*/ get CullFaceNone;
@JS()
external num /*enum CullFace*/ get CullFaceBack;
@JS()
external num /*enum CullFace*/ get CullFaceFront;
@JS()
external num /*enum CullFace*/ get CullFaceFrontBack;

@JS()
class FrontFaceDirection {}

@JS()
external num /*enum FrontFaceDirection*/ get FrontFaceDirectionCW;
@JS()
external num /*enum FrontFaceDirection*/ get FrontFaceDirectionCCW;

/// Shadowing Type
@JS()
class ShadowMapType {}

@JS()
external num /*enum ShadowMapType*/ get BasicShadowMap;
@JS()
external num /*enum ShadowMapType*/ get PCFShadowMap;
@JS()
external num /*enum ShadowMapType*/ get PCFSoftShadowMap;

/// MATERIAL CONSTANTS

/// side
@JS()
class Side {}

@JS()
external num /*enum Side*/ get FrontSide;
@JS()
external num /*enum Side*/ get BackSide;
@JS()
external num /*enum Side*/ get DoubleSide;

/// shading
@JS()
class Shading {}

@JS()
external num /*enum Shading*/ get FlatShading;
@JS()
external num /*enum Shading*/ get SmoothShading;

/// colors
@JS()
class Colors {}

@JS()
external num /*enum Colors*/ get NoColors;
@JS()
external num /*enum Colors*/ get FaceColors;
@JS()
external num /*enum Colors*/ get VertexColors;

/// blending modes
@JS()
class Blending {}

@JS()
external num /*enum Blending*/ get NoBlending;
@JS()
external num /*enum Blending*/ get NormalBlending;
@JS()
external num /*enum Blending*/ get AdditiveBlending;
@JS()
external num /*enum Blending*/ get SubtractiveBlending;
@JS()
external num /*enum Blending*/ get MultiplyBlending;
@JS()
external num /*enum Blending*/ get CustomBlending;

/// custom blending equations
/// (numbers start from 100 not to clash with other
/// mappings to OpenGL constants defined in Texture.js)
@JS()
class BlendingEquation {}

@JS()
external num /*enum BlendingEquation*/ get AddEquation;
@JS()
external num /*enum BlendingEquation*/ get SubtractEquation;
@JS()
external num /*enum BlendingEquation*/ get ReverseSubtractEquation;
@JS()
external num /*enum BlendingEquation*/ get MinEquation;
@JS()
external num /*enum BlendingEquation*/ get MaxEquation;

/// custom blending destination factors
@JS()
class BlendingDstFactor {}

@JS()
external num /*enum BlendingDstFactor*/ get ZeroFactor;
@JS()
external num /*enum BlendingDstFactor*/ get OneFactor;
@JS()
external num /*enum BlendingDstFactor*/ get SrcColorFactor;
@JS()
external num /*enum BlendingDstFactor*/ get OneMinusSrcColorFactor;
@JS()
external num /*enum BlendingDstFactor*/ get SrcAlphaFactor;
@JS()
external num /*enum BlendingDstFactor*/ get OneMinusSrcAlphaFactor;
@JS()
external num /*enum BlendingDstFactor*/ get DstAlphaFactor;
@JS()
external num /*enum BlendingDstFactor*/ get OneMinusDstAlphaFactor;
@JS()
external num /*enum BlendingDstFactor*/ get DstColorFactor;
@JS()
external num /*enum BlendingDstFactor*/ get OneMinusDstColorFactor;

/// custom blending src factors
@JS()
class BlendingSrcFactor {}

@JS()
external num /*enum BlendingSrcFactor*/ get SrcAlphaSaturateFactor;

/// depth modes
@JS()
class DepthModes {}

@JS()
external num /*enum DepthModes*/ get NeverDepth;
@JS()
external num /*enum DepthModes*/ get AlwaysDepth;
@JS()
external num /*enum DepthModes*/ get LessDepth;
@JS()
external num /*enum DepthModes*/ get LessEqualDepth;
@JS()
external num /*enum DepthModes*/ get EqualDepth;
@JS()
external num /*enum DepthModes*/ get GreaterEqualDepth;
@JS()
external num /*enum DepthModes*/ get GreaterDepth;
@JS()
external num /*enum DepthModes*/ get NotEqualDepth;

/// TEXTURE CONSTANTS
/// Operations
@JS()
class Combine {}

@JS()
external num /*enum Combine*/ get MultiplyOperation;
@JS()
external num /*enum Combine*/ get MixOperation;
@JS()
external num /*enum Combine*/ get AddOperation;

/// Tone Mapping modes
@JS()
class ToneMapping {}

@JS()
external num /*enum ToneMapping*/ get NoToneMapping;
@JS()
external num /*enum ToneMapping*/ get LinearToneMapping;
@JS()
external num /*enum ToneMapping*/ get ReinhardToneMapping;
@JS()
external num /*enum ToneMapping*/ get Uncharted2ToneMapping;
@JS()
external num /*enum ToneMapping*/ get CineonToneMapping;

/// Mapping modes
@JS()
class Mapping {}

@JS()
external num /*enum Mapping*/ get UVMapping;
@JS()
external num /*enum Mapping*/ get CubeReflectionMapping;
@JS()
external num /*enum Mapping*/ get CubeRefractionMapping;
@JS()
external num /*enum Mapping*/ get EquirectangularReflectionMapping;
@JS()
external num /*enum Mapping*/ get EquirectangularRefractionMapping;
@JS()
external num /*enum Mapping*/ get SphericalReflectionMapping;
@JS()
external num /*enum Mapping*/ get CubeUVReflectionMapping;
@JS()
external num /*enum Mapping*/ get CubeUVRefractionMapping;

/// Wrapping modes
@JS()
class Wrapping {}

@JS()
external num /*enum Wrapping*/ get RepeatWrapping;
@JS()
external num /*enum Wrapping*/ get ClampToEdgeWrapping;
@JS()
external num /*enum Wrapping*/ get MirroredRepeatWrapping;

/// Filters
@JS()
class TextureFilter {}

@JS()
external num /*enum TextureFilter*/ get NearestFilter;
@JS()
external num /*enum TextureFilter*/ get NearestMipMapNearestFilter;
@JS()
external num /*enum TextureFilter*/ get NearestMipMapLinearFilter;
@JS()
external num /*enum TextureFilter*/ get LinearFilter;
@JS()
external num /*enum TextureFilter*/ get LinearMipMapNearestFilter;
@JS()
external num /*enum TextureFilter*/ get LinearMipMapLinearFilter;

/// Data types
@JS()
class TextureDataType {}

@JS()
external num /*enum TextureDataType*/ get UnsignedByteType;
@JS()
external num /*enum TextureDataType*/ get ByteType;
@JS()
external num /*enum TextureDataType*/ get ShortType;
@JS()
external num /*enum TextureDataType*/ get UnsignedShortType;
@JS()
external num /*enum TextureDataType*/ get IntType;
@JS()
external num /*enum TextureDataType*/ get UnsignedIntType;
@JS()
external num /*enum TextureDataType*/ get FloatType;
@JS()
external num /*enum TextureDataType*/ get HalfFloatType;

/// Pixel types
@JS()
class PixelType {}

@JS()
external num /*enum PixelType*/ get UnsignedShort4444Type;
@JS()
external num /*enum PixelType*/ get UnsignedShort5551Type;
@JS()
external num /*enum PixelType*/ get UnsignedShort565Type;
@JS()
external num /*enum PixelType*/ get UnsignedInt248Type;

/// Pixel formats
@JS()
class PixelFormat {}

@JS()
external num /*enum PixelFormat*/ get AlphaFormat;
@JS()
external num /*enum PixelFormat*/ get RGBFormat;
@JS()
external num /*enum PixelFormat*/ get RGBAFormat;
@JS()
external num /*enum PixelFormat*/ get LuminanceFormat;
@JS()
external num /*enum PixelFormat*/ get LuminanceAlphaFormat;
@JS()
external num /*enum PixelFormat*/ get RGBEFormat;
@JS()
external num /*enum PixelFormat*/ get DepthFormat;
@JS()
external num /*enum PixelFormat*/ get DepthStencilFormat;

/// Compressed texture formats
/// DDS / ST3C Compressed texture formats
@JS()
class CompressedPixelFormat {}

@JS()
external num /*enum CompressedPixelFormat*/ get RGB_S3TC_DXT1_Format;
@JS()
external num /*enum CompressedPixelFormat*/ get RGBA_S3TC_DXT1_Format;
@JS()
external num /*enum CompressedPixelFormat*/ get RGBA_S3TC_DXT3_Format;
@JS()
external num /*enum CompressedPixelFormat*/ get RGBA_S3TC_DXT5_Format;

/// PVRTC compressed texture formats
@JS()
external num /*enum CompressedPixelFormat*/ get RGB_PVRTC_4BPPV1_Format;
@JS()
external num /*enum CompressedPixelFormat*/ get RGB_PVRTC_2BPPV1_Format;
@JS()
external num /*enum CompressedPixelFormat*/ get RGBA_PVRTC_4BPPV1_Format;
@JS()
external num /*enum CompressedPixelFormat*/ get RGBA_PVRTC_2BPPV1_Format;

/// ETC compressed texture formats
@JS()
external num /*enum CompressedPixelFormat*/ get RGB_ETC1_Format;

/// Loop styles for AnimationAction
@JS()
class AnimationActionLoopStyles {}

@JS()
external num /*enum AnimationActionLoopStyles*/ get LoopOnce;
@JS()
external num /*enum AnimationActionLoopStyles*/ get LoopRepeat;
@JS()
external num /*enum AnimationActionLoopStyles*/ get LoopPingPong;

/// Interpolation
@JS()
class InterpolationModes {}

@JS()
external num /*enum InterpolationModes*/ get InterpolateDiscrete;
@JS()
external num /*enum InterpolationModes*/ get InterpolateLinear;
@JS()
external num /*enum InterpolationModes*/ get InterpolateSmooth;

/// Interpolant ending modes
@JS()
class InterpolationEndingModes {}

@JS()
external num /*enum InterpolationEndingModes*/ get ZeroCurvatureEnding;
@JS()
external num /*enum InterpolationEndingModes*/ get ZeroSlopeEnding;
@JS()
external num /*enum InterpolationEndingModes*/ get WrapAroundEnding;

/// Triangle Draw modes
@JS()
class TrianglesDrawModes {}

@JS()
external num /*enum TrianglesDrawModes*/ get TrianglesDrawMode;
@JS()
external num /*enum TrianglesDrawModes*/ get TriangleStripDrawMode;
@JS()
external num /*enum TrianglesDrawModes*/ get TriangleFanDrawMode;

/// Texture Encodings
@JS()
class TextureEncoding {}

@JS()
external num /*enum TextureEncoding*/ get LinearEncoding;
@JS()
external num /*enum TextureEncoding*/ get sRGBEncoding;
@JS()
external num /*enum TextureEncoding*/ get GammaEncoding;
@JS()
external num /*enum TextureEncoding*/ get RGBEEncoding;
@JS()
external num /*enum TextureEncoding*/ get LogLuvEncoding;
@JS()
external num /*enum TextureEncoding*/ get RGBM7Encoding;
@JS()
external num /*enum TextureEncoding*/ get RGBM16Encoding;
@JS()
external num /*enum TextureEncoding*/ get RGBDEncoding;

/// Depth packing strategies
@JS()
class DepthPackingStrategies {}

@JS()
external num /*enum DepthPackingStrategies*/ get BasicDepthPacking;
@JS()
external num /*enum DepthPackingStrategies*/ get RGBADepthPacking;

/// log handlers
@JS()
external void warn(
    [dynamic message,
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5]);
@JS()
external void error(
    [dynamic message,
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5]);
@JS()
external void log(
    [dynamic message,
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5]);

/// typed array parameters
/*type TypedArray = Int8Array |
    Uint8Array |
    Uint8ClampedArray |
    Int16Array |
    Uint16Array |
    Int32Array |
    Uint32Array |
    Float32Array |
    Float64Array;*/

/// Animation ////////////////////////////////////////////////////////////////////////////////////////
@JS()
class AnimationAction {
  // @Ignore
  AnimationAction.fakeConstructor$();
  external bool get loop;
  external set loop(bool v);
  external num get time;
  external set time(num v);
  external num get timeScale;
  external set timeScale(num v);
  external num get weight;
  external set weight(num v);
  external num get repetitions;
  external set repetitions(num v);
  external bool get paused;
  external set paused(bool v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get clampWhenFinished;
  external set clampWhenFinished(bool v);
  external bool get zeroSlopeAtStart;
  external set zeroSlopeAtStart(bool v);
  external bool get zeroSlopeAtEnd;
  external set zeroSlopeAtEnd(bool v);
  external AnimationAction play();
  external AnimationAction stop();
  external AnimationAction reset();
  external bool isRunning();
  external AnimationAction startAt(num time);
  external AnimationAction setLoop(
      num /*enum AnimationActionLoopStyles*/ mode, num repetitions);
  external AnimationAction setEffectiveWeight(num weight);
  external num getEffectiveWeight();
  external AnimationAction fadeIn(num duration);
  external AnimationAction fadeOut(num duration);
  external AnimationAction crossFadeFrom(
      AnimationAction fadeOutAction, num duration, bool warp);
  external AnimationAction crossFadeTo(
      AnimationAction fadeInAction, num duration, bool warp);
  external AnimationAction stopFading();
  external AnimationAction setEffectiveTimeScale(num timeScale);
  external num getEffectiveTimeScale();
  external AnimationAction setDuration(num duration);
  external AnimationAction syncWith(AnimationAction action);
  external AnimationAction halt(num duration);
  external AnimationAction warp(
      num statTimeScale, num endTimeScale, num duration);
  external AnimationAction stopWarping();
  external AnimationMixer getMixer();
  external AnimationClip getClip();
  external dynamic getRoot();
}

@JS()
class AnimationClip {
  // @Ignore
  AnimationClip.fakeConstructor$();
  external factory AnimationClip(
      [String name, num duration, List<KeyframeTrack> tracks]);
  external String get name;
  external set name(String v);
  external List<KeyframeTrack> get tracks;
  external set tracks(List<KeyframeTrack> v);
  external num get duration;
  external set duration(num v);
  external String get uuid;
  external set uuid(String v);
  external List<dynamic> get results;
  external set results(List<dynamic> v);
  external void resetDuration();
  external AnimationClip trim();
  external AnimationClip optimize();
  external static AnimationClip CreateFromMorphTargetSequence(
      String name, List<MorphTarget> morphTargetSequence, num fps, bool noLoop);
  external static AnimationClip findByName(
      List<AnimationClip> clipArray, String name);
  external static List<AnimationClip> CreateClipsFromMorphTargetSequences(
      List<MorphTarget> morphTargets, num fps, bool noLoop);
  external static AnimationClip parse(dynamic json);
  external static AnimationClip parseAnimation(
      dynamic animation, List<Bone> bones, String nodeName);
  external static dynamic toJSON();
}

@JS()
class AnimationMixer extends EventDispatcher {
  // @Ignore
  AnimationMixer.fakeConstructor$() : super.fakeConstructor$();
  external factory AnimationMixer(dynamic root);
  external num get time;
  external set time(num v);
  external num get timeScale;
  external set timeScale(num v);
  external AnimationAction clipAction(AnimationClip clip, [dynamic root]);
  external AnimationAction existingAction(AnimationClip clip, [dynamic root]);
  external AnimationMixer stopAllAction();
  external AnimationMixer update(num deltaTime);
  external dynamic getRoot();
  external void uncacheClip(AnimationClip clip);
  external void uncacheRoot(dynamic root);
  external void uncacheAction(AnimationClip clip, [dynamic root]);
}

@JS()
class AnimationObjectGroup {
  // @Ignore
  AnimationObjectGroup.fakeConstructor$();
  external factory AnimationObjectGroup(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external String get uuid;
  external set uuid(String v);
  external dynamic
      /*{
        bindingsPerObject: number;
        objects: {
            total: number;
            inUse: number;
        }
    }*/
      get stats;
  external set stats(
      dynamic /*{
        bindingsPerObject: number;
        objects: {
            total: number;
            inUse: number;
        }
    }*/
      v);
  external void add(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void remove(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external void uncache(
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
}

// Module AnimationUtils
@JS("AnimationUtils.arraySlice")
external dynamic arraySlice(dynamic array, num from, num to);
@JS("AnimationUtils.convertArray")
external dynamic convertArray(dynamic array, dynamic type, bool forceClone);
@JS("AnimationUtils.isTypedArray")
external bool isTypedArray(dynamic object);
@JS("AnimationUtils.getKeyFrameOrder")
external List<num> getKeyFrameOrder(num times);
@JS("AnimationUtils.sortedArray")
external List<dynamic> sortedArray(
    List<dynamic> values, num stride, List<num> order);
@JS("AnimationUtils.flattenJSON")
external void flattenJSON(List<String> jsonKeys, List<dynamic> times,
    List<dynamic> values, String valuePropertyName);

// End module AnimationUtils
@JS()
class KeyframeTrack {
  // @Ignore
  KeyframeTrack.fakeConstructor$();
  external factory KeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
  external String get name;
  external set name(String v);
  external List<dynamic> get times;
  external set times(List<dynamic> v);
  external List<dynamic> get values;
  external set values(List<dynamic> v);
  external String get ValueTypeName;
  external set ValueTypeName(String v);
  external Float32List get TimeBufferType;
  external set TimeBufferType(Float32List v);
  external Float32List get ValueBufferType;
  external set ValueBufferType(Float32List v);
  external num /*enum InterpolationModes*/ get DefaultInterpolation;
  external set DefaultInterpolation(num /*enum InterpolationModes*/ v);
  external DiscreteInterpolant InterpolantFactoryMethodDiscrete(dynamic result);
  external LinearInterpolant InterpolantFactoryMethodLinear(dynamic result);
  external CubicInterpolant InterpolantFactoryMethodSmooth(dynamic result);
  external void setInterpolation(num /*enum InterpolationModes*/ interpolation);
  external num /*enum InterpolationModes*/ getInterpolation();
  external num getValuesize();
  external KeyframeTrack shift(num timeOffset);
  external KeyframeTrack scale(num timeScale);
  external KeyframeTrack trim(num startTime, num endTime);
  external bool validate();
  external KeyframeTrack optimize();
  external static KeyframeTrack parse(dynamic json);
  external static dynamic toJSON(KeyframeTrack track);
}

@JS()
class PropertyBinding {
  // @Ignore
  PropertyBinding.fakeConstructor$();
  external factory PropertyBinding(dynamic rootNode, String path,
      [dynamic parsedPath]);
  external String get path;
  external set path(String v);
  external dynamic get parsedPath;
  external set parsedPath(dynamic v);
  external dynamic get node;
  external set node(dynamic v);
  external dynamic get rootNode;
  external set rootNode(dynamic v);
  external dynamic getValue(dynamic targetArray, num offset);
  external void setValue(dynamic sourceArray, num offset);
  external void bind();
  external void unbind();
  external dynamic /*JSMap of <String,num>*/ get BindingType;
  external set BindingType(dynamic /*JSMap of <String,num>*/ v);
  external dynamic /*JSMap of <String,num>*/ get Versioning;
  external set Versioning(dynamic /*JSMap of <String,num>*/ v);
  external List<Function> get GetterByBindingType;
  external set GetterByBindingType(List<Function> v);
  external List<List<Function>> get SetterByBindingTypeAndVersioning;
  external set SetterByBindingTypeAndVersioning(List<List<Function>> v);
  external static dynamic /*PropertyBinding|Composite*/ create(
      dynamic root, dynamic path,
      [dynamic parsedPath]);
  external static dynamic parseTrackName(String trackName);
  external static dynamic findNode(dynamic root, String nodeName);
}

// Module PropertyBinding
@JS("PropertyBinding.Composite")
class Composite {
  // @Ignore
  Composite.fakeConstructor$();
  external factory Composite(dynamic targetGroup, dynamic path,
      [dynamic parsedPath]);
  external dynamic getValue(dynamic array, num offset);
  external void setValue(dynamic array, num offset);
  external void bind();
  external void unbind();
}

// End module PropertyBinding
@JS()
class PropertyMixer {
  // @Ignore
  PropertyMixer.fakeConstructor$();
  external factory PropertyMixer(
      dynamic binding, String typeName, num valueSize);
  external dynamic get binding;
  external set binding(dynamic v);
  external num get valueSize;
  external set valueSize(num v);
  external dynamic get buffer;
  external set buffer(dynamic v);
  external num get cumulativeWeight;
  external set cumulativeWeight(num v);
  external num get useCount;
  external set useCount(num v);
  external num get referenceCount;
  external set referenceCount(num v);
  external void accumulate(num accuIndex, num weight);
  external void apply(num accuIndex);
  external void saveOriginalState();
  external void restoreOriginalState();
}

@JS()
class BooleanKeyframeTrack extends KeyframeTrack {
  // @Ignore
  BooleanKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory BooleanKeyframeTrack(
      String name, List<dynamic> times, List<dynamic> values);
}

@JS()
class ColorKeyframeTrack extends KeyframeTrack {
  // @Ignore
  ColorKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory ColorKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS()
class NumberKeyframeTrack extends KeyframeTrack {
  // @Ignore
  NumberKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory NumberKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS()
class QuaternionKeyframeTrack extends KeyframeTrack {
  // @Ignore
  QuaternionKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory QuaternionKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS()
class StringKeyframeTrack extends KeyframeTrack {
  // @Ignore
  StringKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory StringKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

@JS()
class VectorKeyframeTrack extends KeyframeTrack {
  // @Ignore
  VectorKeyframeTrack.fakeConstructor$() : super.fakeConstructor$();
  external factory VectorKeyframeTrack(String name, List<dynamic> times,
      List<dynamic> values, num /*enum InterpolationModes*/ interpolation);
}

/// Cameras ////////////////////////////////////////////////////////////////////////////////////////

/// Abstract base class for cameras. This class should always be inherited when you build a new camera.
@JS()
class Camera extends Object3D {
  // @Ignore
  Camera.fakeConstructor$() : super.fakeConstructor$();

  /// This constructor sets following properties to the correct type: matrixWorldInverse, projectionMatrix and projectionMatrixInverse.
  external factory Camera();

  /// This is the inverse of matrixWorld. MatrixWorld contains the Matrix which has the world transform of the Camera.
  external Matrix4 get matrixWorldInverse;
  external set matrixWorldInverse(Matrix4 v);

  /// This is the matrix which contains the projection.
  external Matrix4 get projectionMatrix;
  external set projectionMatrix(Matrix4 v);
  external Vector3 getWorldDirection(Vector3 target);
}

@JS()
class CubeCamera extends Object3D {
  // @Ignore
  CubeCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory CubeCamera([num near, num far, num cubeResolution]);
  external WebGLRenderTargetCube get renderTarget;
  external set renderTarget(WebGLRenderTargetCube v);

  /// Use [CubeCamera#update .update()] instead
  external void updateCubeMap(Renderer renderer, Scene scene);
  external void update(Renderer renderer, Scene scene);
}

/// Camera with orthographic projection
/// @example
/// var camera = new THREE.OrthographicCamera( width / - 2, width / 2, height / 2, height / - 2, 1, 1000 );
/// scene.add( camera );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/cameras/OrthographicCamera.js">src/cameras/OrthographicCamera.js</a>
@JS()
class OrthographicCamera extends Camera {
  // @Ignore
  OrthographicCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory OrthographicCamera(num left, num right, num top, num bottom,
      [num near, num far]);
  external num get zoom;
  external set zoom(num v);
  external dynamic
      /*{
        enabled: boolean,
        fullWidth: number,
        fullHeight: number,
        offsetX: number,
        offsetY: number,
        width: number,
        height: number
    }*/
      get view;
  external set view(
      dynamic /*{
        enabled: boolean,
        fullWidth: number,
        fullHeight: number,
        offsetX: number,
        offsetY: number,
        width: number,
        height: number
    }*/
      v);

  /// Camera frustum left plane.
  external num get left;
  external set left(num v);

  /// Camera frustum right plane.
  external num get right;
  external set right(num v);

  /// Camera frustum top plane.
  external num get top;
  external set top(num v);

  /// Camera frustum bottom plane.
  external num get bottom;
  external set bottom(num v);

  /// Camera frustum near plane.
  external num get near;
  external set near(num v);

  /// Camera frustum far plane.
  external num get far;
  external set far(num v);

  /// Updates the camera projection matrix. Must be called after change of parameters.
  external void updateProjectionMatrix();
  external void setViewOffset(num fullWidth, num fullHeight, num offsetX,
      num offsetY, num width, num height);
  external void clearViewOffset();
  external dynamic toJSON([dynamic meta]);
}

/// Camera with perspective projection.
/// # example
/// var camera = new THREE.PerspectiveCamera( 45, width / height, 1, 1000 );
/// scene.add( camera );
/// @source https://github.com/mrdoob/three.js/blob/master/src/cameras/PerspectiveCamera.js
@JS()
class PerspectiveCamera extends Camera {
  // @Ignore
  PerspectiveCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory PerspectiveCamera([num fov, num aspect, num near, num far]);
  external num get zoom;
  external set zoom(num v);

  /// Camera frustum vertical field of view, from bottom to top of view, in degrees.
  external num get fov;
  external set fov(num v);

  /// Camera frustum aspect ratio, window width divided by window height.
  external num get aspect;
  external set aspect(num v);

  /// Camera frustum near plane.
  external num get near;
  external set near(num v);

  /// Camera frustum far plane.
  external num get far;
  external set far(num v);
  external num get focus;
  external set focus(num v);
  external dynamic
      /*{
        enabled: boolean,
        fullWidth: number,
        fullHeight: number,
        offsetX: number,
        offsetY: number,
        width: number,
        height: number
    }*/
      get view;
  external set view(
      dynamic /*{
        enabled: boolean,
        fullWidth: number,
        fullHeight: number,
        offsetX: number,
        offsetY: number,
        width: number,
        height: number
    }*/
      v);
  external num get filmGauge;
  external set filmGauge(num v);
  external num get filmOffset;
  external set filmOffset(num v);
  external void setFocalLength(num focalLength);
  external num getFocalLength();
  external num getEffectiveFOV();
  external num getFilmWidth();
  external num getFilmHeight();

  /// Sets an offset in a larger frustum. This is useful for multi-window or multi-monitor/multi-machine setups.
  /// For example, if you have 3x2 monitors and each monitor is 1920x1080 and the monitors are in grid like this:
  /// +---+---+---+
  /// | A | B | C |
  /// +---+---+---+
  /// | D | E | F |
  /// +---+---+---+
  /// then for each monitor you would call it like this:
  /// var w = 1920;
  /// var h = 1080;
  /// var fullWidth = w * 3;
  /// var fullHeight = h * 2;
  /// // A
  /// camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
  /// // B
  /// camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
  /// // C
  /// camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
  /// // D
  /// camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
  /// // E
  /// camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
  /// // F
  /// camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h ); Note there is no reason monitors have to be the same size or in a grid.
  external void setViewOffset(
      num fullWidth, num fullHeight, num x, num y, num width, num height);
  external void clearViewOffset();

  /// Updates the camera projection matrix. Must be called after change of parameters.
  external void updateProjectionMatrix();
  external dynamic toJSON([dynamic meta]);

  /// Use [PerspectiveCamera#setFocalLength .setFocalLength()] and [PerspectiveCamera#filmGauge .filmGauge] instead.
  external void setLens(num focalLength, [num frameHeight]);
}

@JS()
class StereoCamera extends Camera {
  // @Ignore
  StereoCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory StereoCamera();
  external num get aspect;
  external set aspect(num v);
  external num get eyeSep;
  external set eyeSep(num v);
  external PerspectiveCamera get cameraL;
  external set cameraL(PerspectiveCamera v);
  external PerspectiveCamera get cameraR;
  external set cameraR(PerspectiveCamera v);
  external void update(PerspectiveCamera camera);
}

@JS()
class ArrayCamera extends PerspectiveCamera {
  // @Ignore
  ArrayCamera.fakeConstructor$() : super.fakeConstructor$();
  external factory ArrayCamera([List<PerspectiveCamera> cameras]);
  external List<PerspectiveCamera> get cameras;
  external set cameras(List<PerspectiveCamera> v);
  external get isArrayCamera;
  external set isArrayCamera(v);
}

/// Core ///////////////////////////////////////////////////////////////////////////////////////////////

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
@JS()
class BufferAttribute {
  // @Ignore
  BufferAttribute.fakeConstructor$();
  external factory BufferAttribute(ArrayLike<num> array, num itemSize,
      [bool normalized]);
  external String get uuid;
  external set uuid(String v);
  external ArrayLike<num> get array;
  external set array(ArrayLike<num> v);
  external num get itemSize;
  external set itemSize(num v);
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external dynamic /*{offset: number, count: number}*/ get updateRange;
  external set updateRange(dynamic /*{offset: number, count: number}*/ v);
  external num get version;
  external set version(num v);
  external bool get normalized;
  external set normalized(bool v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external num get count;
  external set count(num v);
  external Function get onUpload;
  external set onUpload(Function v);
  external void setArray([TypedData array]);
  external BufferAttribute setDynamic(bool JS$dynamic);
  external BufferAttribute clone();
  external BufferAttribute copy(BufferAttribute source);
  external BufferAttribute copyAt(
      num index1, BufferAttribute attribute, num index2);
  external BufferAttribute copyArray(ArrayLike<num> array);
  external BufferAttribute copyColorsArray(
      List<dynamic /*{r: number, g: number, b: number}*/ > colors);
  external BufferAttribute copyVector2sArray(
      List<dynamic /*{x: number, y: number}*/ > vectors);
  external BufferAttribute copyVector3sArray(
      List<dynamic /*{x: number, y: number, z: number}*/ > vectors);
  external BufferAttribute copyVector4sArray(
      List<dynamic /*{x: number, y: number, z: number, w: number}*/ > vectors);
  external BufferAttribute JS$set(dynamic /*ArrayLike<num>|TypedData*/ value,
      [num offset]);
  external num getX(num index);
  external BufferAttribute setX(num index, num x);
  external num getY(num index);
  external BufferAttribute setY(num index, num y);
  external num getZ(num index);
  external BufferAttribute setZ(num index, num z);
  external num getW(num index);
  external BufferAttribute setW(num index, num z);
  external BufferAttribute setXY(num index, num x, num y);
  external BufferAttribute setXYZ(num index, num x, num y, num z);
  external BufferAttribute setXYZW(num index, num x, num y, num z, num w);

  /// Use [BufferAttribute#count .count] instead.
  external num get length;
  external set length(num v);
}

/// THREE.Int8Attribute has been removed. Use new THREE.Int8BufferAttribute() instead.
@JS()
class Int8Attribute extends BufferAttribute {
  // @Ignore
  Int8Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int8Attribute(dynamic array, num itemSize);
}

/// THREE.Uint8Attribute has been removed. Use new THREE.Uint8BufferAttribute() instead.
@JS()
class Uint8Attribute extends BufferAttribute {
  // @Ignore
  Uint8Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint8Attribute(dynamic array, num itemSize);
}

/// THREE.Uint8ClampedAttribute has been removed. Use new THREE.Uint8ClampedBufferAttribute() instead.
@JS()
class Uint8ClampedAttribute extends BufferAttribute {
  // @Ignore
  Uint8ClampedAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint8ClampedAttribute(dynamic array, num itemSize);
}

/// THREE.Int16Attribute has been removed. Use new THREE.Int16BufferAttribute() instead.
@JS()
class Int16Attribute extends BufferAttribute {
  // @Ignore
  Int16Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int16Attribute(dynamic array, num itemSize);
}

/// THREE.Uint16Attribute has been removed. Use new THREE.Uint16BufferAttribute() instead.
@JS()
class Uint16Attribute extends BufferAttribute {
  // @Ignore
  Uint16Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint16Attribute(dynamic array, num itemSize);
}

/// THREE.Int32Attribute has been removed. Use new THREE.Int32BufferAttribute() instead.
@JS()
class Int32Attribute extends BufferAttribute {
  // @Ignore
  Int32Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int32Attribute(dynamic array, num itemSize);
}

/// THREE.Uint32Attribute has been removed. Use new THREE.Uint32BufferAttribute() instead.
@JS()
class Uint32Attribute extends BufferAttribute {
  // @Ignore
  Uint32Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint32Attribute(dynamic array, num itemSize);
}

/// THREE.Float32Attribute has been removed. Use new THREE.Float32BufferAttribute() instead.
@JS()
class Float32Attribute extends BufferAttribute {
  // @Ignore
  Float32Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Float32Attribute(dynamic array, num itemSize);
}

/// THREE.Float64Attribute has been removed. Use new THREE.Float64BufferAttribute() instead.
@JS()
class Float64Attribute extends BufferAttribute {
  // @Ignore
  Float64Attribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Float64Attribute(dynamic array, num itemSize);
}

@JS()
class Int8BufferAttribute extends BufferAttribute {
  // @Ignore
  Int8BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int8BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Uint8BufferAttribute extends BufferAttribute {
  // @Ignore
  Uint8BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint8BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Uint8ClampedBufferAttribute extends BufferAttribute {
  // @Ignore
  Uint8ClampedBufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint8ClampedBufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Int16BufferAttribute extends BufferAttribute {
  // @Ignore
  Int16BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int16BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Uint16BufferAttribute extends BufferAttribute {
  // @Ignore
  Uint16BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint16BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Int32BufferAttribute extends BufferAttribute {
  // @Ignore
  Int32BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Int32BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Uint32BufferAttribute extends BufferAttribute {
  // @Ignore
  Uint32BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Uint32BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Float32BufferAttribute extends BufferAttribute {
  // @Ignore
  Float32BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Float32BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

@JS()
class Float64BufferAttribute extends BufferAttribute {
  // @Ignore
  Float64BufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory Float64BufferAttribute(
      dynamic /*Iterable<num>|ArrayLike<num>|ByteBuffer*/ array, num itemSize,
      [bool normalized]);
}

/// Use [BufferAttribute#setDynamic THREE.BufferAttribute().setDynamic( true )] instead.
@JS()
class DynamicBufferAttribute extends BufferAttribute {
  // @Ignore
  DynamicBufferAttribute.fakeConstructor$() : super.fakeConstructor$();
}

/// This is a superefficent class for geometries because it saves all data in buffers.
/// It reduces memory costs and cpu cycles. But it is not as easy to work with because of all the nessecary buffer calculations.
/// It is mainly interesting when working with static objects.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferGeometry.js">src/core/BufferGeometry.js</a>
@JS()
class BufferGeometry extends EventDispatcher {
  // @Ignore
  BufferGeometry.fakeConstructor$() : super.fakeConstructor$();

  /// This creates a new BufferGeometry. It also sets several properties to an default value.
  external factory BufferGeometry();
  external static num get MaxIndex;
  external static set MaxIndex(num v);

  /// Unique number of this buffergeometry instance
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);
  external BufferAttribute get index;
  external set index(BufferAttribute v);
  external dynamic /*BufferAttribute|List<InterleavedBufferAttribute>*/ get attributes;
  external set attributes(
      dynamic /*BufferAttribute|List<InterleavedBufferAttribute>*/ v);
  external dynamic get morphAttributes;
  external set morphAttributes(dynamic v);
  external List<
          dynamic /*{start: number, count: number, materialIndex?: number}*/ >
      get groups;
  external set groups(
      List<
          dynamic /*{start: number, count: number, materialIndex?: number}*/ > v);
  external Box3 get boundingBox;
  external set boundingBox(Box3 v);
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);
  external dynamic /*{ start: number, count: number }*/ get drawRange;
  external set drawRange(dynamic /*{ start: number, count: number }*/ v);
  external BufferAttribute getIndex();
  external void setIndex(dynamic /*BufferAttribute|List<num>*/ index);
  /*external BufferGeometry addAttribute(String name, BufferAttribute|InterleavedBufferAttribute attribute);*/
  /*external dynamic addAttribute(dynamic name, dynamic array, dynamic itemSize);*/
  external dynamic /*BufferGeometry|dynamic*/ addAttribute(
      dynamic /*String|dynamic*/ name,
      dynamic /*BufferAttribute|InterleavedBufferAttribute|dynamic*/ attribute_array,
      [dynamic itemSize]);
  external dynamic /*BufferAttribute|InterleavedBufferAttribute*/ getAttribute(
      String name);
  external BufferGeometry removeAttribute(String name);
  external void addGroup(num start, num count, [num materialIndex]);
  external void clearGroups();
  external void setDrawRange(num start, num count);

  /// Bakes matrix transform directly into vertex coordinates.
  external BufferGeometry applyMatrix(Matrix4 matrix);
  external BufferGeometry rotateX(num angle);
  external BufferGeometry rotateY(num angle);
  external BufferGeometry rotateZ(num angle);
  external BufferGeometry translate(num x, num y, num z);
  external BufferGeometry scale(num x, num y, num z);
  external void lookAt(Vector3 v);
  external BufferGeometry center();
  external BufferGeometry setFromObject(Object3D object);
  external BufferGeometry setFromPoints(
      List<dynamic> /*List<Vector3>|List<Vector2>*/ points);
  external void updateFromObject(Object3D object);
  external BufferGeometry fromGeometry(Geometry geometry, [dynamic settings]);
  external BufferGeometry fromDirectGeometry(DirectGeometry geometry);

  /// Computes bounding box of the geometry, updating Geometry.boundingBox attribute.
  /// Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are null.
  external void computeBoundingBox();

  /// Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
  /// Bounding spheres aren't' computed by default. They need to be explicitly computed, otherwise they are null.
  external void computeBoundingSphere();

  /// Computes vertex normals by averaging face normals.
  external void computeVertexNormals();
  external BufferGeometry merge(BufferGeometry geometry, num offset);
  external void normalizeNormals();
  external BufferGeometry toNonIndexed();
  external dynamic toJSON();
  external BufferGeometry clone();
  external BufferGeometry copy(BufferGeometry source);

  /// Disposes the object from memory.
  /// You need to call this when you want the bufferGeometry removed while the application is running.
  external void dispose();

  /// Use [BufferGeometry#groups .groups] instead.
  external dynamic get drawcalls;
  external set drawcalls(dynamic v);

  /// Use [BufferGeometry#groups .groups] instead.
  external dynamic get offsets;
  external set offsets(dynamic v);

  /// Use [BufferGeometry#setIndex .setIndex()] instead.
  external void addIndex(dynamic index);

  /// Use [BufferGeometry#addGroup .addGroup()] instead.
  external void addDrawCall(dynamic start, dynamic count,
      [dynamic indexOffset]);

  /// Use [BufferGeometry#clearGroups .clearGroups()] instead.
  external void clearDrawCalls();
}

/// Object for keeping track of time.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/Clock.js">src/core/Clock.js</a>
@JS()
class Clock {
  // @Ignore
  Clock.fakeConstructor$();
  external factory Clock([bool autoStart]);

  /// If set, starts the clock automatically when the first update is called.
  external bool get autoStart;
  external set autoStart(bool v);

  /// When the clock is running, It holds the starttime of the clock.
  /// This counted from the number of milliseconds elapsed since 1 January 1970 00:00:00 UTC.
  external num get startTime;
  external set startTime(num v);

  /// When the clock is running, It holds the previous time from a update.
  /// This counted from the number of milliseconds elapsed since 1 January 1970 00:00:00 UTC.
  external num get oldTime;
  external set oldTime(num v);

  /// When the clock is running, It holds the time elapsed between the start of the clock to the previous update.
  /// This parameter is in seconds of three decimal places.
  external num get elapsedTime;
  external set elapsedTime(num v);

  /// This property keeps track whether the clock is running or not.
  external bool get running;
  external set running(bool v);

  /// Starts clock.
  external void start();

  /// Stops clock.
  external void stop();

  /// Get the seconds passed since the clock started.
  external num getElapsedTime();

  /// Get the seconds passed since the last call to this method.
  external num getDelta();
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/DirectGeometry.js">src/core/DirectGeometry.js</a>
@JS()
class DirectGeometry extends EventDispatcher {
  // @Ignore
  DirectGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory DirectGeometry();
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);
  external List<num> get indices;
  external set indices(List<num> v);
  external List<Vector3> get vertices;
  external set vertices(List<Vector3> v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external List<Color> get colors;
  external set colors(List<Color> v);
  external List<Vector2> get uvs;
  external set uvs(List<Vector2> v);
  external List<Vector2> get uvs2;
  external set uvs2(List<Vector2> v);
  external List<dynamic /*{start: number, materialIndex: number}*/ > get groups;
  external set groups(
      List<dynamic /*{start: number, materialIndex: number}*/ > v);
  external List<MorphTarget> get morphTargets;
  external set morphTargets(List<MorphTarget> v);
  external List<Vector4> get skinWeights;
  external set skinWeights(List<Vector4> v);
  external List<Vector4> get skinIndices;
  external set skinIndices(List<Vector4> v);
  external Box3 get boundingBox;
  external set boundingBox(Box3 v);
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);
  external bool get verticesNeedUpdate;
  external set verticesNeedUpdate(bool v);
  external bool get normalsNeedUpdate;
  external set normalsNeedUpdate(bool v);
  external bool get colorsNeedUpdate;
  external set colorsNeedUpdate(bool v);
  external bool get uvsNeedUpdate;
  external set uvsNeedUpdate(bool v);
  external bool get groupsNeedUpdate;
  external set groupsNeedUpdate(bool v);
  external void computeBoundingBox();
  external void computeBoundingSphere();
  external void computeGroups(Geometry geometry);
  external DirectGeometry fromGeometry(Geometry geometry);
  external void dispose();

  /// EventDispatcher mixins
  external void addEventListener(String type, void listener(Event event));
  external void hasEventListener(String type, void listener(Event event));
  external void removeEventListener(String type, void listener(Event event));
  external void dispatchEvent(
      dynamic /*{ type: string; [attachment: string]: any; }*/ event);
}

/// JavaScript events for custom objects
/// # Example
/// var Car = function () {
/// EventDispatcher.call( this );
/// this.start = function () {
/// this.dispatchEvent( { type: 'start', message: 'vroom vroom!' } );
/// };
/// };
/// var car = new Car();
/// car.addEventListener( 'start', function ( event ) {
/// alert( event.message );
/// } );
/// car.start();
/// @source src/core/EventDispatcher.js
@JS()
class EventDispatcher {
  // @Ignore
  EventDispatcher.fakeConstructor$();

  /// Creates eventDispatcher object. It needs to be call with '.call' to add the functionality to an object.
  external factory EventDispatcher();

  /// Adds a listener to an event type.
  external void addEventListener(String type, void listener(Event event));

  /// Adds a listener to an event type.
  external void hasEventListener(String type, void listener(Event event));

  /// Removes a listener from an event type.
  external void removeEventListener(String type, void listener(Event event));

  /// Fire an event type.
  external void dispatchEvent(
      dynamic /*{ type: string; [attachment: string]: any; }*/ event);
}

@anonymous
@JS()
abstract class Event {
  external String get type;
  external set type(String v);
  external dynamic get target;
  external set target(dynamic v);
  external factory Event({String type, dynamic target});
}

/// Triangle face.
/// # Example
/// var normal = new THREE.Vector3( 0, 1, 0 );
/// var color = new THREE.Color( 0xffaa00 );
/// var face = new THREE.Face3( 0, 1, 2, normal, color, 0 );
/// @source https://github.com/mrdoob/three.js/blob/master/src/core/Face3.js
@JS()
class Face3 {
  // @Ignore
  Face3.fakeConstructor$();
  /*external factory Face3(num a, num b, num c, [Vector3 normal, Color color, num materialIndex]);*/
  /*external factory Face3(num a, num b, num c, [Vector3 normal, List<Color> vertexColors, num materialIndex]);*/
  /*external factory Face3(num a, num b, num c, [List<Vector3> vertexNormals, Color color, num materialIndex]);*/
  /*external factory Face3(num a, num b, num c, [List<Vector3> vertexNormals, List<Color> vertexColors, num materialIndex]);*/
  external factory Face3(num a, num b, num c,
      [dynamic /*Vector3|List<Vector3>*/ normal_vertexNormals,
      dynamic /*Color|List<Color>*/ color_vertexColors,
      num materialIndex]);

  /// Vertex A index.
  external num get a;
  external set a(num v);

  /// Vertex B index.
  external num get b;
  external set b(num v);

  /// Vertex C index.
  external num get c;
  external set c(num v);

  /// Face normal.
  external Vector3 get normal;
  external set normal(Vector3 v);

  /// Array of 4 vertex normals.
  external List<Vector3> get vertexNormals;
  external set vertexNormals(List<Vector3> v);

  /// Face color.
  external Color get color;
  external set color(Color v);

  /// Array of 4 vertex normals.
  external List<Color> get vertexColors;
  external set vertexColors(List<Color> v);

  /// Material index (points to [Geometry.materials]).
  external num get materialIndex;
  external set materialIndex(num v);
  external Face3 clone();
  external Face3 copy(Face3 source);
}

/// Use [Face3] instead.
@JS()
class Face4 extends Face3 {
  // @Ignore
  Face4.fakeConstructor$() : super.fakeConstructor$();
}

@anonymous
@JS()
abstract class MorphTarget {
  external String get name;
  external set name(String v);
  external List<Vector3> get vertices;
  external set vertices(List<Vector3> v);
  external factory MorphTarget({String name, List<Vector3> vertices});
}

@anonymous
@JS()
abstract class MorphColor {
  external String get name;
  external set name(String v);
  external List<Color> get colors;
  external set colors(List<Color> v);
  external factory MorphColor({String name, List<Color> colors});
}

@anonymous
@JS()
abstract class MorphNormals {
  external String get name;
  external set name(String v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external factory MorphNormals({String name, List<Vector3> normals});
}

@JS()
external num get GeometryIdCount;
@JS()
external set GeometryIdCount(num v);

/// Base class for geometries
/// # Example
/// var geometry = new THREE.Geometry();
/// geometry.vertices.push( new THREE.Vector3( -10, 10, 0 ) );
/// geometry.vertices.push( new THREE.Vector3( -10, -10, 0 ) );
/// geometry.vertices.push( new THREE.Vector3( 10, -10, 0 ) );
/// geometry.faces.push( new THREE.Face3( 0, 1, 2 ) );
/// geometry.computeBoundingSphere();
/// @see https://github.com/mrdoob/three.js/blob/master/src/core/Geometry.js
@JS()
class Geometry extends EventDispatcher {
  // @Ignore
  Geometry.fakeConstructor$() : super.fakeConstructor$();
  external factory Geometry();

  /// Unique number of this geometry instance
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);

  /// Name for this geometry. Default is an empty string.
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);

  /// The array of vertices hold every position of points of the model.
  /// To signal an update in this array, Geometry.verticesNeedUpdate needs to be set to true.
  external List<Vector3> get vertices;
  external set vertices(List<Vector3> v);

  /// Array of vertex colors, matching number and order of vertices.
  /// Used in ParticleSystem, Line and Ribbon.
  /// Meshes use per-face-use-of-vertex colors embedded directly in faces.
  /// To signal an update in this array, Geometry.colorsNeedUpdate needs to be set to true.
  external List<Color> get colors;
  external set colors(List<Color> v);

  /// Array of triangles or/and quads.
  /// The array of faces describe how each vertex in the model is connected with each other.
  /// To signal an update in this array, Geometry.elementsNeedUpdate needs to be set to true.
  external List<Face3> get faces;
  external set faces(List<Face3> v);

  /// Array of face UV layers.
  /// Each UV layer is an array of UV matching order and number of vertices in faces.
  /// To signal an update in this array, Geometry.uvsNeedUpdate needs to be set to true.
  external List<List<List<Vector2>>> get faceVertexUvs;
  external set faceVertexUvs(List<List<List<Vector2>>> v);

  /// Array of morph targets. Each morph target is a Javascript object:
  /// { name: "targetName", vertices: [ new THREE.Vector3(), ... ] }
  /// Morph vertices match number and order of primary vertices.
  external List<MorphTarget> get morphTargets;
  external set morphTargets(List<MorphTarget> v);

  /// Array of morph normals. Morph normals have similar structure as morph targets, each normal set is a Javascript object:
  /// morphNormal = { name: "NormalName", normals: [ new THREE.Vector3(), ... ] }
  external List<MorphNormals> get morphNormals;
  external set morphNormals(List<MorphNormals> v);

  /// Array of skinning weights, matching number and order of vertices.
  external List<Vector4> get skinWeights;
  external set skinWeights(List<Vector4> v);

  /// Array of skinning indices, matching number and order of vertices.
  external List<Vector4> get skinIndices;
  external set skinIndices(List<Vector4> v);
  external List<num> get lineDistances;
  external set lineDistances(List<num> v);

  /// Bounding box.
  external Box3 get boundingBox;
  external set boundingBox(Box3 v);

  /// Bounding sphere.
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);

  /// Set to true if the vertices array has been updated.
  external bool get verticesNeedUpdate;
  external set verticesNeedUpdate(bool v);

  /// Set to true if the faces array has been updated.
  external bool get elementsNeedUpdate;
  external set elementsNeedUpdate(bool v);

  /// Set to true if the uvs array has been updated.
  external bool get uvsNeedUpdate;
  external set uvsNeedUpdate(bool v);

  /// Set to true if the normals array has been updated.
  external bool get normalsNeedUpdate;
  external set normalsNeedUpdate(bool v);

  /// Set to true if the colors array has been updated.
  external bool get colorsNeedUpdate;
  external set colorsNeedUpdate(bool v);

  /// Set to true if the linedistances array has been updated.
  external bool get lineDistancesNeedUpdate;
  external set lineDistancesNeedUpdate(bool v);
  external bool get groupsNeedUpdate;
  external set groupsNeedUpdate(bool v);

  /// Bakes matrix transform directly into vertex coordinates.
  external Geometry applyMatrix(Matrix4 matrix);
  external Geometry rotateX(num angle);
  external Geometry rotateY(num angle);
  external Geometry rotateZ(num angle);
  external Geometry translate(num x, num y, num z);
  external Geometry scale(num x, num y, num z);
  external void lookAt(Vector3 vector);
  external Geometry fromBufferGeometry(BufferGeometry geometry);
  external Geometry center();
  external Geometry normalize();

  /// Computes face normals.
  external void computeFaceNormals();

  /// Computes vertex normals by averaging face normals.
  /// Face normals must be existing / computed beforehand.
  external void computeVertexNormals([bool areaWeighted]);

  /// Compute vertex normals, but duplicating face normals.
  external void computeFlatVertexNormals();

  /// Computes morph normals.
  external void computeMorphNormals();

  /// Computes bounding box of the geometry, updating [Geometry.boundingBox] attribute.
  external void computeBoundingBox();

  /// Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
  /// Neither bounding boxes or bounding spheres are computed by default. They need to be explicitly computed, otherwise they are null.
  external void computeBoundingSphere();
  external void merge(Geometry geometry,
      [Matrix matrix, num materialIndexOffset]);
  external void mergeMesh(Mesh mesh);

  /// Checks for duplicate vertices using hashmap.
  /// Duplicated vertices are removed and faces' vertices are updated.
  external num mergeVertices();
  external Geometry setFromPoints(List /*List<Vector2>|List<Vector3>*/ points);
  external void sortFacesByMaterialIndex();
  external dynamic toJSON();

  /// Creates a new clone of the Geometry.
  external Geometry clone();
  external Geometry copy(Geometry source);

  /// Removes The object from memory.
  /// Don't forget to call this method when you remove an geometry because it can cuase meomory leaks.
  external void dispose();

  /// These properties do not exist in a normal Geometry class, but if you use the instance that was passed by JSONLoader, it will be added.
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external AnimationClip get animation;
  external set animation(AnimationClip v);
  external List<AnimationClip> get animations;
  external set animations(List<AnimationClip> v);

  /// EventDispatcher mixins
  external void addEventListener(String type, void listener(Event event));
  external void hasEventListener(String type, void listener(Event event));
  external void removeEventListener(String type, void listener(Event event));
  external void dispatchEvent(
      dynamic /*{ type: string; [attachment: string]: any; }*/ event);
}

// Module GeometryUtils
/// Use [Geometry#merge geometry.merge( geometry2, matrix, materialIndexOffset )] instead.
@JS("GeometryUtils.merge")
external dynamic merge(dynamic geometry1, dynamic geometry2,
    [dynamic materialIndexOffset]);

/// Use [Geometry#center geometry.center()] instead.
@JS("GeometryUtils.center")
external dynamic center(dynamic geometry);
// End module GeometryUtils

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferAttribute.js">src/core/InstancedBufferAttribute.js</a>
@JS()
class InstancedBufferAttribute extends BufferAttribute {
  // @Ignore
  InstancedBufferAttribute.fakeConstructor$() : super.fakeConstructor$();
  external factory InstancedBufferAttribute(ArrayLike<num> data, num itemSize,
      [num meshPerAttribute]);
  external num get meshPerAttribute;
  external set meshPerAttribute(num v);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedBufferGeometry.js">src/core/InstancedBufferGeometry.js</a>
@JS()
class InstancedBufferGeometry extends BufferGeometry {
  // @Ignore
  InstancedBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory InstancedBufferGeometry();
  external List<dynamic /*{start: number, count: number, instances: number}*/ >
      get groups;
  external set groups(
      List<dynamic /*{start: number, count: number, instances: number}*/ > v);
  external num get maxInstancedCount;
  external set maxInstancedCount(num v);
  external void addGroup(num start, num count, num instances);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBuffer.js">src/core/InterleavedBuffer.js</a>
@JS()
class InterleavedBuffer {
  // @Ignore
  InterleavedBuffer.fakeConstructor$();
  external factory InterleavedBuffer(ArrayLike<num> array, num stride);
  external ArrayLike<num> get array;
  external set array(ArrayLike<num> v);
  external num get stride;
  external set stride(num v);
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external dynamic /*{ offset: number; count: number }*/ get updateRange;
  external set updateRange(dynamic /*{ offset: number; count: number }*/ v);
  external num get version;
  external set version(num v);
  external num get length;
  external set length(num v);
  external num get count;
  external set count(num v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external void setArray([TypedData array]);
  external InterleavedBuffer setDynamic(bool JS$dynamic);
  /*external InterleavedBuffer clone();*/
  /*external InterleavedBuffer clone();*/
  external InterleavedBuffer clone();
  external InterleavedBuffer copy(InterleavedBuffer source);
  external InterleavedBuffer copyAt(
      num index1, InterleavedBufferAttribute attribute, num index2);
  external InterleavedBuffer JS$set(ArrayLike<num> value, num index);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InstancedInterleavedBuffer.js">src/core/InstancedInterleavedBuffer.js</a>
@JS()
class InstancedInterleavedBuffer extends InterleavedBuffer {
  // @Ignore
  InstancedInterleavedBuffer.fakeConstructor$() : super.fakeConstructor$();
  external factory InstancedInterleavedBuffer(ArrayLike<num> array, num stride,
      [num meshPerAttribute]);
  external num get meshPerAttribute;
  external set meshPerAttribute(num v);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/InterleavedBufferAttribute.js">src/core/InterleavedBufferAttribute.js</a>
@JS()
class InterleavedBufferAttribute {
  // @Ignore
  InterleavedBufferAttribute.fakeConstructor$();
  external factory InterleavedBufferAttribute(
      InterleavedBuffer interleavedBuffer, num itemSize, num offset,
      [bool normalized]);
  external String get uuid;
  external set uuid(String v);
  external InterleavedBuffer get data;
  external set data(InterleavedBuffer v);
  external num get itemSize;
  external set itemSize(num v);
  external num get offset;
  external set offset(num v);
  external num get count;
  external set count(num v);
  external bool get normalized;
  external set normalized(bool v);
  external List<dynamic> get array;
  external set array(List<dynamic> v);
  external num getX(num index);
  external InterleavedBufferAttribute setX(num index, num x);
  external num getY(num index);
  external InterleavedBufferAttribute setY(num index, num y);
  external num getZ(num index);
  external InterleavedBufferAttribute setZ(num index, num z);
  external num getW(num index);
  external InterleavedBufferAttribute setW(num index, num z);
  external InterleavedBufferAttribute setXY(num index, num x, num y);
  external InterleavedBufferAttribute setXYZ(num index, num x, num y, num z);
  external InterleavedBufferAttribute setXYZW(
      num index, num x, num y, num z, num w);

  /// Use [InterleavedBufferAttribute#count .count] instead.
  external num get length;
  external set length(num v);
}

@JS()
external num get Object3DIdCount;
@JS()
external set Object3DIdCount(num v);

/// Base class for scene graph objects
@JS()
class Object3D extends EventDispatcher {
  // @Ignore
  Object3D.fakeConstructor$() : super.fakeConstructor$();
  external factory Object3D();

  /// Unique number of this object instance.
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);

  /// Optional name of the object (doesn't need to be unique).
  external String get name;
  external set name(String v);
  external String get type;
  external set type(String v);

  /// Object's parent in the scene graph.
  external Object3D get parent;
  external set parent(Object3D v);

  /// Array with object's children.
  external List<Object3D> get children;
  external set children(List<Object3D> v);

  /// Up direction.
  external Vector3 get up;
  external set up(Vector3 v);

  /// Object's local position.
  external Vector3 get position;
  external set position(Vector3 v);

  /// Object's local rotation (Euler angles), in radians.
  external Euler get rotation;
  external set rotation(Euler v);

  /// Global rotation.
  external Quaternion get quaternion;
  external set quaternion(Quaternion v);

  /// Object's local scale.
  external Vector3 get scale;
  external set scale(Vector3 v);
  external Matrix4 get modelViewMatrix;
  external set modelViewMatrix(Matrix4 v);
  external Matrix3 get normalMatrix;
  external set normalMatrix(Matrix3 v);

  /// Local transform.
  external Matrix4 get matrix;
  external set matrix(Matrix4 v);

  /// The global transform of the object. If the Object3d has no parent, then it's identical to the local transform.
  external Matrix4 get matrixWorld;
  external set matrixWorld(Matrix4 v);

  /// When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
  external bool get matrixAutoUpdate;
  external set matrixAutoUpdate(bool v);

  /// When this is set, it calculates the matrixWorld in that frame and resets this property to false.
  external bool get matrixWorldNeedsUpdate;
  external set matrixWorldNeedsUpdate(bool v);
  external Layers get layers;
  external set layers(Layers v);

  /// Object gets rendered if true.
  external bool get visible;
  external set visible(bool v);

  /// Gets rendered into shadow map.
  external bool get castShadow;
  external set castShadow(bool v);

  /// Material gets baked in shadow receiving.
  external bool get receiveShadow;
  external set receiveShadow(bool v);

  /// When this is set, it checks every frame if the object is in the frustum of the camera. Otherwise the object gets drawn every frame even if it isn't visible.
  external bool get frustumCulled;
  external set frustumCulled(bool v);
  external num get renderOrder;
  external set renderOrder(num v);

  /// An object that can be used to store custom data about the Object3d. It should not hold references to functions as these will not be cloned.
  external dynamic get userData;
  external set userData(dynamic v);

  /// Used to check whether this or derived classes are Object3Ds. Default is true.
  /// You should not change this, as it is used internally for optimisation.
  external bool get isObject3D;
  external set isObject3D(bool v);

  /// Calls before rendering object
  external Function
      /*(renderer: WebGLRenderer, scene: Scene, camera: Camera, geometry: Geometry | BufferGeometry,
                     material: Material, group: Group) => void*/
      get onBeforeRender;
  external set onBeforeRender(
      Function /*(renderer: WebGLRenderer, scene: Scene, camera: Camera, geometry: Geometry | BufferGeometry,
                     material: Material, group: Group) => void*/
      v);

  /// Calls after rendering object
  external Function
      /*(renderer: WebGLRenderer, scene: Scene, camera: Camera, geometry: Geometry | BufferGeometry,
                    material: Material, group: Group) => void*/
      get onAfterRender;
  external set onAfterRender(
      Function /*(renderer: WebGLRenderer, scene: Scene, camera: Camera, geometry: Geometry | BufferGeometry,
                    material: Material, group: Group) => void*/
      v);
  external static Vector3 get DefaultUp;
  external static set DefaultUp(Vector3 v);
  external static bool get DefaultMatrixAutoUpdate;
  external static set DefaultMatrixAutoUpdate(bool v);

  /// This updates the position, rotation and scale with the matrix.
  external void applyMatrix(Matrix4 matrix);
  external void setRotationFromAxisAngle(Vector3 axis, num angle);
  external void setRotationFromEuler(Euler euler);
  external void setRotationFromMatrix(Matrix4 m);
  external void setRotationFromQuaternion(Quaternion q);

  /// Rotate an object along an axis in object space. The axis is assumed to be normalized.
  external Object3D rotateOnAxis(Vector3 axis, num angle);

  /// Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
  external Object3D rotateOnWorldAxis(Vector3 axis, num angle);
  external Object3D rotateX(num angle);
  external Object3D rotateY(num angle);
  external Object3D rotateZ(num angle);
  external Object3D translateOnAxis(Vector3 axis, num distance);

  /// Translates object along x axis by distance.
  external Object3D translateX(num distance);

  /// Translates object along y axis by distance.
  external Object3D translateY(num distance);

  /// Translates object along z axis by distance.
  external Object3D translateZ(num distance);

  /// Updates the vector from local space to world space.
  external Vector3 localToWorld(Vector3 vector);

  /// Updates the vector from world space to local space.
  external Vector3 worldToLocal(Vector3 vector);

  /// Rotates object to face point in space.
  /*external void lookAt(Vector3 vector);*/
  /*external void lookAt(num x, num y, num z);*/
  external void lookAt(dynamic /*Vector3|num*/ vector_x, [num y, num z]);

  /// Adds object as child of this object.
  external void add(
      [Object3D object1,
      Object3D object2,
      Object3D object3,
      Object3D object4,
      Object3D object5]);

  /// Removes object as child of this object.
  external void remove(
      [Object3D object1,
      Object3D object2,
      Object3D object3,
      Object3D object4,
      Object3D object5]);

  /// Searches through the object's children and returns the first with a matching id, optionally recursive.
  external Object3D getObjectById(num id);

  /// Searches through the object's children and returns the first with a matching name, optionally recursive.
  external Object3D getObjectByName(String name);
  external Object3D getObjectByProperty(String name, String value);
  external Vector3 getWorldPosition(Vector3 target);
  external Quaternion getWorldQuaternion(Quaternion target);
  external Vector3 getWorldScale(Vector3 target);
  external Vector3 getWorldDirection(Vector3 target);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external void traverse(dynamic callback(Object3D object));
  external void traverseVisible(dynamic callback(Object3D object));
  external void traverseAncestors(dynamic callback(Object3D object));

  /// Updates local transform.
  external void updateMatrix();

  /// Updates global transform of the object and its children.
  external void updateMatrixWorld(bool force);
  external dynamic toJSON(
      [dynamic /*{ geometries: any, materials: any, textures: any, images: any }*/ meta]);
  external Object3D clone([bool recursive]);
  external Object3D copy(Object3D source, [bool recursive]);
}

@anonymous
@JS()
abstract class Intersection {
  external num get distance;
  external set distance(num v);
  external num get distanceToRay;
  external set distanceToRay(num v);
  external Vector3 get point;
  external set point(Vector3 v);
  external num get index;
  external set index(num v);
  external Face3 get face;
  external set face(Face3 v);
  external num get faceIndex;
  external set faceIndex(num v);
  external Object3D get object;
  external set object(Object3D v);
  external factory Intersection(
      {num distance,
      num distanceToRay,
      Vector3 point,
      num index,
      Face3 face,
      num faceIndex,
      Object3D object});
}

@anonymous
@JS()
abstract class RaycasterParameters {
  external dynamic get Mesh;
  external set Mesh(dynamic v);
  external dynamic get Line;
  external set Line(dynamic v);
  external dynamic get LOD;
  external set LOD(dynamic v);
  external dynamic /*{ threshold: number }*/ get Points;
  external set Points(dynamic /*{ threshold: number }*/ v);
  external dynamic get Sprite;
  external set Sprite(dynamic v);
  external factory RaycasterParameters(
      {dynamic Mesh,
      dynamic Line,
      dynamic LOD,
      dynamic /*{ threshold: number }*/ Points,
      dynamic Sprite});
}

@JS()
class Raycaster {
  // @Ignore
  Raycaster.fakeConstructor$();

  /// This creates a new raycaster object.
  external factory Raycaster(
      [Vector3 origin, Vector3 direction, num near, num far]);

  /// The Ray used for the raycasting.
  external Ray get ray;
  external set ray(Ray v);

  /// The near factor of the raycaster. This value indicates which objects can be discarded based on the
  /// distance. This value shouldn't be negative and should be smaller than the far property.
  external num get near;
  external set near(num v);

  /// The far factor of the raycaster. This value indicates which objects can be discarded based on the
  /// distance. This value shouldn't be negative and should be larger than the near property.
  external num get far;
  external set far(num v);
  external RaycasterParameters get params;
  external set params(RaycasterParameters v);

  /// The precision factor of the raycaster when intersecting Line objects.
  external num get linePrecision;
  external set linePrecision(num v);

  /// Updates the ray with a new origin and direction.
  external void JS$set(Vector3 origin, Vector3 direction);

  /// Updates the ray with a new origin and direction.
  external void setFromCamera(
      dynamic /*{ x: number; y: number; }*/ coords, Camera camera);

  /// Checks all intersection between the ray and the object with or without the descendants. Intersections are returned sorted by distance, closest first.
  external List<Intersection> intersectObject(Object3D object,
      [bool recursive, List<Intersection> optionalTarget]);

  /// Checks all intersection between the ray and the objects with or without the descendants. Intersections are returned sorted by distance, closest first. Intersections are of the same form as those returned by .intersectObject.
  external List<Intersection> intersectObjects(List<Object3D> objects,
      [bool recursive, List<Intersection> optionalTarget]);
}

@JS()
class Layers {
  // @Ignore
  Layers.fakeConstructor$();
  external factory Layers();
  external num get mask;
  external set mask(num v);
  external void JS$set(num channel);
  external void enable(num channel);
  external void toggle(num channel);
  external void disable(num channel);
  external bool test(Layers layers);
}

@JS()
class Font {
  // @Ignore
  Font.fakeConstructor$();
  external factory Font(dynamic jsondata);
  external String get data;
  external set data(String v);
  external List<dynamic> generateShapes(String text, num size, num divisions);
}

/// Lights //////////////////////////////////////////////////////////////////////////////////

/// Abstract base class for lights.
@JS()
class Light extends Object3D {
  // @Ignore
  Light.fakeConstructor$() : super.fakeConstructor$();
  external factory Light([dynamic /*num|String*/ hex, num intensity]);
  external Color get color;
  external set color(Color v);
  external num get intensity;
  external set intensity(num v);
  external bool get receiveShadow;
  external set receiveShadow(bool v);
  external LightShadow get shadow;
  external set shadow(LightShadow v);

  /// Use shadow.camera.fov instead.
  external dynamic get shadowCameraFov;
  external set shadowCameraFov(dynamic v);

  /// Use shadow.camera.left instead.
  external dynamic get shadowCameraLeft;
  external set shadowCameraLeft(dynamic v);

  /// Use shadow.camera.right instead.
  external dynamic get shadowCameraRight;
  external set shadowCameraRight(dynamic v);

  /// Use shadow.camera.top instead.
  external dynamic get shadowCameraTop;
  external set shadowCameraTop(dynamic v);

  /// Use shadow.camera.bottom instead.
  external dynamic get shadowCameraBottom;
  external set shadowCameraBottom(dynamic v);

  /// Use shadow.camera.near instead.
  external dynamic get shadowCameraNear;
  external set shadowCameraNear(dynamic v);

  /// Use shadow.camera.far instead.
  external dynamic get shadowCameraFar;
  external set shadowCameraFar(dynamic v);

  /// Use shadow.bias instead.
  external dynamic get shadowBias;
  external set shadowBias(dynamic v);

  /// Use shadow.mapSize.width instead.
  external dynamic get shadowMapWidth;
  external set shadowMapWidth(dynamic v);

  /// Use shadow.mapSize.height instead.
  external dynamic get shadowMapHeight;
  external set shadowMapHeight(dynamic v);
}

@JS()
class LightShadow {
  // @Ignore
  LightShadow.fakeConstructor$();
  external factory LightShadow(Camera camera);
  external Camera get camera;
  external set camera(Camera v);
  external num get bias;
  external set bias(num v);
  external num get radius;
  external set radius(num v);
  external Vector2 get mapSize;
  external set mapSize(Vector2 v);
  external RenderTarget get map;
  external set map(RenderTarget v);
  external Matrix4 get matrix;
  external set matrix(Matrix4 v);
  external LightShadow copy(LightShadow source);
  external LightShadow clone([bool recursive]);
  external dynamic toJSON();
}

/// This light's color gets applied to all the objects in the scene globally.
/// # example
/// var light = new THREE.AmbientLight( 0x404040 ); // soft white light
/// scene.add( light );
/// @source https://github.com/mrdoob/three.js/blob/master/src/lights/AmbientLight.js
@JS()
class AmbientLight extends Light {
  // @Ignore
  AmbientLight.fakeConstructor$() : super.fakeConstructor$();

  /// This creates a Ambientlight with a color.
  external factory AmbientLight(
      [dynamic /*Color|String|num*/ color, num intensity]);
  external bool get castShadow;
  external set castShadow(bool v);
}

/// Affects objects using MeshLambertMaterial or MeshPhongMaterial.
/// @example
/// // White directional light at half intensity shining from the top.
/// var directionalLight = new THREE.DirectionalLight( 0xffffff, 0.5 );
/// directionalLight.position.set( 0, 1, 0 );
/// scene.add( directionalLight );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/lights/DirectionalLight.js">src/lights/DirectionalLight.js</a>
@JS()
class DirectionalLight extends Light {
  // @Ignore
  DirectionalLight.fakeConstructor$() : super.fakeConstructor$();
  external factory DirectionalLight(
      [dynamic /*Color|String|num*/ color, num intensity]);

  /// Target used for shadow camera orientation.
  external Object3D get target;
  external set target(Object3D v);

  /// Light's intensity.
  /// Default — 1.0.
  external num get intensity;
  external set intensity(num v);
  external DirectionalLightShadow get shadow;
  external set shadow(DirectionalLightShadow v);
}

@JS()
class DirectionalLightShadow extends LightShadow {
  // @Ignore
  DirectionalLightShadow.fakeConstructor$() : super.fakeConstructor$();
  external OrthographicCamera get camera;
  external set camera(OrthographicCamera v);
}

@JS()
class HemisphereLight extends Light {
  // @Ignore
  HemisphereLight.fakeConstructor$() : super.fakeConstructor$();
  external factory HemisphereLight(
      [dynamic /*Color|String|num*/ skyColor,
      dynamic /*Color|String|num*/ groundColor,
      num intensity]);
  external Color get skyColor;
  external set skyColor(Color v);
  external Color get groundColor;
  external set groundColor(Color v);
  external num get intensity;
  external set intensity(num v);
}

/// Affects objects using [MeshLambertMaterial] or [MeshPhongMaterial].
/// @example
/// var light = new THREE.PointLight( 0xff0000, 1, 100 );
/// light.position.set( 50, 50, 50 );
/// scene.add( light );
@JS()
class PointLight extends Light {
  // @Ignore
  PointLight.fakeConstructor$() : super.fakeConstructor$();
  external factory PointLight(
      [dynamic /*Color|String|num*/ color,
      num intensity,
      num distance,
      num decay]);

  /// Light's intensity.
  /// Default - 1.0.
  external num get intensity;
  external set intensity(num v);

  /// If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
  /// Default — 0.0.
  external num get distance;
  external set distance(num v);
  external num get decay;
  external set decay(num v);
  external PointLightShadow get shadow;
  external set shadow(PointLightShadow v);
  external num get power;
  external set power(num v);
}

@JS()
class PointLightShadow extends LightShadow {
  // @Ignore
  PointLightShadow.fakeConstructor$() : super.fakeConstructor$();
  external PerspectiveCamera get camera;
  external set camera(PerspectiveCamera v);
}

/// A point light that can cast shadow in one direction.
@JS()
class SpotLight extends Light {
  // @Ignore
  SpotLight.fakeConstructor$() : super.fakeConstructor$();
  external factory SpotLight(
      [dynamic /*Color|String|num*/ color,
      num intensity,
      num distance,
      num angle,
      num exponent,
      num decay]);

  /// Spotlight focus points at target.position.
  /// Default position — (0,0,0).
  external Object3D get target;
  external set target(Object3D v);

  /// Light's intensity.
  /// Default — 1.0.
  external num get intensity;
  external set intensity(num v);

  /// If non-zero, light will attenuate linearly from maximum intensity at light position down to zero at distance.
  /// Default — 0.0.
  external num get distance;
  external set distance(num v);

  /// Maximum extent of the spotlight, in radians, from its direction.
  /// Default — Math.PI/2.
  external num get angle;
  external set angle(num v);

  /// Rapidity of the falloff of light from its target direction.
  /// Default — 10.0.
  external num get exponent;
  external set exponent(num v);
  external num get decay;
  external set decay(num v);
  external SpotLightShadow get shadow;
  external set shadow(SpotLightShadow v);
  external num get power;
  external set power(num v);
  external num get penumbra;
  external set penumbra(num v);
}

@JS()
class SpotLightShadow extends LightShadow {
  // @Ignore
  SpotLightShadow.fakeConstructor$() : super.fakeConstructor$();
  external PerspectiveCamera get camera;
  external set camera(PerspectiveCamera v);
  external void update(Light light);
}

/// Loaders //////////////////////////////////////////////////////////////////////////////////

/// Base class for implementing loaders.
/// Events:
/// load
/// Dispatched when the image has completed loading
/// content — loaded image
/// error
/// Dispatched when the image can't be loaded
/// message — error message
@JS()
class Loader {
  // @Ignore
  Loader.fakeConstructor$();
  external factory Loader();

  /// Will be called when load starts.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoadStart;
  external set onLoadStart(VoidFunc0 v);

  /// Will be called while load progresses.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoadProgress;
  external set onLoadProgress(VoidFunc0 v);

  /// Will be called when load completes.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoadComplete;
  external set onLoadComplete(VoidFunc0 v);

  /// default — null.
  /// If set, assigns the crossOrigin attribute of the image to the value of crossOrigin, prior to starting the load.
  external String get crossOrigin;
  external set crossOrigin(String v);

  /// Use THREE.LoaderUtils.extractUrlBase() instead.
  external String extractUrlBase(String url);
  external List<Material> initMaterials(
      List<Material> materials, String texturePath);
  external bool createMaterial(Material m, String texturePath,
      [String crossOrigin]);
  external static LoaderHandler get Handlers;
  external static set Handlers(LoaderHandler v);
}

/// Interface for all loaders
/// CompressedTextureLoader don't extends Loader class, but have load method
@anonymous
@JS()
abstract class AnyLoader {
  external dynamic load(String url,
      [void onLoad(dynamic result),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
}

@anonymous
@JS()
abstract class LoaderHandler {
  external List<dynamic /*RegExp|AnyLoader*/ > get handlers;
  external set handlers(List<dynamic /*RegExp|AnyLoader*/ > v);
  external void add(RegExp regex, AnyLoader loader);
  external AnyLoader /*AnyLoader|Null*/ JS$get(String file);
}

@JS()
class FileLoader {
  // @Ignore
  FileLoader.fakeConstructor$();
  external factory FileLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external MimeType get mimeType;
  external set mimeType(MimeType v);
  external String get path;
  external set path(String v);
  external String get responseType;
  external set responseType(String v);
  external String get withCredentials;
  external set withCredentials(String v);
  external dynamic load(String url,
      [void onLoad(dynamic /*String|ByteBuffer*/ response),
      void onProgress(ProgressEvent request),
      void onError(ErrorEvent event)]);
  external FileLoader setMimeType(MimeType mimeType);
  external FileLoader setPath(String path);
  external FileLoader setResponseType(String responseType);
  external FileLoader setWithCredentials(String value);
}

@JS()
class FontLoader {
  // @Ignore
  FontLoader.fakeConstructor$();
  external factory FontLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url,
      [void onLoad(Font responseFont),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
  external Font parse(dynamic json);
}

/// A loader for loading an image.
/// Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
@JS()
class ImageLoader {
  // @Ignore
  ImageLoader.fakeConstructor$();
  external factory ImageLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external String get withCredentials;
  external set withCredentials(String v);
  external String get path;
  external set path(String v);

  /// Begin loading from url
  external ImageElement load(String url,
      [void onLoad(ImageElement image),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
  external ImageLoader setCrossOrigin(String crossOrigin);
  external ImageLoader setWithCredentials(String value);
  external ImageLoader setPath(String value);
}

/// A loader for loading objects in JSON format.
@JS()
class JSONLoader extends Loader {
  // @Ignore
  JSONLoader.fakeConstructor$() : super.fakeConstructor$();
  external factory JSONLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external bool get withCredentials;
  external set withCredentials(bool v);
  external void load(String url,
      [void onLoad(Geometry geometry, List<Material> materials),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
  external void setTexturePath(String value);
  external dynamic /*{ geometry: Geometry; materials?: Material[] }*/ parse(
      dynamic json,
      [String texturePath]);
}

/// Handles and keeps track of loaded and pending data.
@JS()
class LoadingManager {
  // @Ignore
  LoadingManager.fakeConstructor$();
  external factory LoadingManager(
      [void onLoad(),
      void onProgress(String url, num loaded, num total),
      void onError()]);
  external VoidFunc3<String, num, num> get onStart;
  external set onStart(VoidFunc3<String, num, num> v);

  /// Will be called when load starts.
  /// The default is a function with empty body.
  external VoidFunc0 get onLoad;
  external set onLoad(VoidFunc0 v);

  /// Will be called while load progresses.
  /// The default is a function with empty body.
  external VoidFunc3<dynamic, num, num> get onProgress;
  external set onProgress(VoidFunc3<dynamic, num, num> v);

  /// Will be called when each element in the scene completes loading.
  /// The default is a function with empty body.
  external VoidFunc1<String> get onError;
  external set onError(VoidFunc1<String> v);
  external void setURLModifier([String callback(String url)]);
  external void itemStart(String url);
  external void itemEnd(String url);
  external void itemError(String url);
}

@JS()
external LoadingManager get DefaultLoadingManager;

@JS()
class BufferGeometryLoader {
  // @Ignore
  BufferGeometryLoader.fakeConstructor$();
  external factory BufferGeometryLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url, void onLoad(BufferGeometry bufferGeometry),
      [void onProgress(dynamic event), void onError(dynamic event)]);
  external BufferGeometry parse(dynamic json);
}

@JS()
class MaterialLoader {
  // @Ignore
  MaterialLoader.fakeConstructor$();
  external factory MaterialLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external dynamic /*JSMap of <String,Texture>*/ get textures;
  external set textures(dynamic /*JSMap of <String,Texture>*/ v);
  external void load(String url, void onLoad(Material material),
      [void onProgress(ProgressEvent event),
      void onError(dynamic /*Error|ErrorEvent*/ event)]);
  external void setTextures(dynamic /*JSMap of <String,Texture>*/ textures);
  external Texture getTexture(String name);
  external Material parse(dynamic json);
}

@JS()
class ObjectLoader {
  // @Ignore
  ObjectLoader.fakeConstructor$();
  external factory ObjectLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get texturePass;
  external set texturePass(String v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external void load(String url,
      [void onLoad(Object3D object),
      void onProgress(ProgressEvent event),
      void onError(dynamic /*Error|ErrorEvent*/ event)]);
  external void setTexturePath(String value);
  external void setCrossOrigin(String crossOrigin);
  external dynamic/*=T*/ parse/*<T extends Object3D>*/(dynamic json,
      [void onLoad(Object3D object)]);
  external List<dynamic> parseGeometries(dynamic json);
  external List<Material> parseMaterials(dynamic json, List<Texture> textures);
  external List<AnimationClip> parseAnimations(dynamic json);
  external dynamic /*JSMap of <String,ImageElement>*/ parseImages(
      dynamic json, void onLoad());
  external List<Texture> parseTextures(dynamic json, dynamic images);
  external dynamic/*=T*/ parseObject/*<T extends Object3D>*/(
      dynamic data, List<dynamic> geometries, List<Material> materials);
}

/// Class for loading a texture.
/// Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
@JS()
class TextureLoader {
  // @Ignore
  TextureLoader.fakeConstructor$();
  external factory TextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external String get withCredentials;
  external set withCredentials(String v);
  external String get path;
  external set path(String v);

  /// Begin loading from url
  external Texture load(String url,
      [void onLoad(Texture texture),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
  external TextureLoader setCrossOrigin(String crossOrigin);
  external TextureLoader setWithCredentials(String value);
  external TextureLoader setPath(String path);
}

@JS()
class CubeTextureLoader {
  // @Ignore
  CubeTextureLoader.fakeConstructor$();
  external factory CubeTextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get crossOrigin;
  external set crossOrigin(String v);
  external String get path;
  external set path(String v);
  external CubeTexture load(List<String> urls,
      [void onLoad(CubeTexture texture),
      void onProgress(ProgressEvent event),
      void onError(ErrorEvent event)]);
  external CubeTextureLoader setCrossOrigin(String crossOrigin);
  external CubeTextureLoader setPath(String path);
}

@JS()
class DataTextureLoader {
  // @Ignore
  DataTextureLoader.fakeConstructor$();
  external factory DataTextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external void load(String url, void onLoad(DataTexture dataTexture),
      [void onProgress(ProgressEvent event), void onError(ErrorEvent event)]);
}

/// since 0.84.0. Use [DataTextureLoader] (renamed)
@JS()
class BinaryTextureLoader extends DataTextureLoader {
  // @Ignore
  BinaryTextureLoader.fakeConstructor$() : super.fakeConstructor$();
}

@JS()
class CompressedTextureLoader {
  // @Ignore
  CompressedTextureLoader.fakeConstructor$();
  external factory CompressedTextureLoader([LoadingManager manager]);
  external LoadingManager get manager;
  external set manager(LoadingManager v);
  external String get path;
  external set path(String v);
  external void load(String url, void onLoad(CompressedTexture texture),
      [void onProgress(ProgressEvent event), void onError(ErrorEvent event)]);
  external CompressedTextureLoader setPath(String path);
}

@JS()
class AudioLoader {
  // @Ignore
  AudioLoader.fakeConstructor$();
  external factory AudioLoader([LoadingManager manager]);
  external void load(
      String url, Function onLoad, Function onPrgress, Function onError);
}

// Module Cache
@JS("Cache.enabled")
external bool get enabled;
@JS("Cache.enabled")
external set enabled(bool v);
@JS("Cache.files")
external dynamic get files;
@JS("Cache.files")
external set files(dynamic v);
@JS("Cache.add")
external void add(String key, dynamic file);
@JS("Cache.get")
external dynamic JS$get(String key);
@JS("Cache.remove")
external void remove(String key);
@JS("Cache.clear")
external void clear();

// End module Cache
@JS()
class LoaderUtils {
  // @Ignore
  LoaderUtils.fakeConstructor$();
  external static String decodeText(
      dynamic /*Int8List|Uint8List|Uint8ClampedList|Int16List|Uint16List|Int32List|Uint32List|Float32List|Float64List*/ array);
  external static String extractUrlBase(String url);
}

/// Materials //////////////////////////////////////////////////////////////////////////////////
@JS()
external num get MaterialIdCount;
@JS()
external set MaterialIdCount(num v);

@anonymous
@JS()
abstract class MaterialParameters {
  external num get alphaTest;
  external set alphaTest(num v);
  external num /*enum BlendingDstFactor*/ get blendDst;
  external set blendDst(num /*enum BlendingDstFactor*/ v);
  external num get blendDstAlpha;
  external set blendDstAlpha(num v);
  external num /*enum BlendingEquation*/ get blendEquation;
  external set blendEquation(num /*enum BlendingEquation*/ v);
  external num get blendEquationAlpha;
  external set blendEquationAlpha(num v);
  external num /*enum Blending*/ get blending;
  external set blending(num /*enum Blending*/ v);
  external num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ get blendSrc;
  external set blendSrc(
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ v);
  external num get blendSrcAlpha;
  external set blendSrcAlpha(num v);
  external bool get clipIntersection;
  external set clipIntersection(bool v);
  external List<Plane> get clippingPlanes;
  external set clippingPlanes(List<Plane> v);
  external bool get clipShadows;
  external set clipShadows(bool v);
  external bool get colorWrite;
  external set colorWrite(bool v);
  external num /*enum DepthModes*/ get depthFunc;
  external set depthFunc(num /*enum DepthModes*/ v);
  external bool get depthTest;
  external set depthTest(bool v);
  external bool get depthWrite;
  external set depthWrite(bool v);
  external bool get fog;
  external set fog(bool v);
  external bool get lights;
  external set lights(bool v);
  external String get name;
  external set name(String v);
  external num get opacity;
  external set opacity(num v);
  external num get overdraw;
  external set overdraw(num v);
  external bool get polygonOffset;
  external set polygonOffset(bool v);
  external num get polygonOffsetFactor;
  external set polygonOffsetFactor(num v);
  external num get polygonOffsetUnits;
  external set polygonOffsetUnits(num v);
  external String /*'highp'|'mediump'|'lowp'|Null*/ get precision;
  external set precision(String /*'highp'|'mediump'|'lowp'|Null*/ v);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);
  external bool get dithering;
  external set dithering(bool v);
  external bool get flatShading;
  external set flatShading(bool v);
  external num /*enum Side*/ get side;
  external set side(num /*enum Side*/ v);
  external bool get transparent;
  external set transparent(bool v);
  external num /*enum Colors*/ get vertexColors;
  external set vertexColors(num /*enum Colors*/ v);
  external bool get visible;
  external set visible(bool v);
  external factory MaterialParameters(
      {num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

/// Materials describe the appearance of objects. They are defined in a (mostly) renderer-independent way, so you don't have to rewrite materials if you decide to use a different renderer.
@JS()
class Material extends EventDispatcher {
  // @Ignore
  Material.fakeConstructor$() : super.fakeConstructor$();
  external factory Material();

  /// Sets the alpha value to be used when running an alpha test. Default is 0.
  external num get alphaTest;
  external set alphaTest(num v);

  /// Blending destination. It's one of the blending mode constants defined in Three.js. Default is [OneMinusSrcAlphaFactor].
  external num /*enum BlendingDstFactor*/ get blendDst;
  external set blendDst(num /*enum BlendingDstFactor*/ v);

  /// The tranparency of the .blendDst. Default is null.
  external num get blendDstAlpha;
  external set blendDstAlpha(num v);

  /// Blending equation to use when applying blending. It's one of the constants defined in Three.js. Default is [AddEquation].
  external num /*enum BlendingEquation*/ get blendEquation;
  external set blendEquation(num /*enum BlendingEquation*/ v);

  /// The tranparency of the .blendEquation. Default is null.
  external num get blendEquationAlpha;
  external set blendEquationAlpha(num v);

  /// Which blending to use when displaying objects with this material. Default is [NormalBlending].
  external num /*enum Blending*/ get blending;
  external set blending(num /*enum Blending*/ v);

  /// Blending source. It's one of the blending mode constants defined in Three.js. Default is [SrcAlphaFactor].
  external num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ get blendSrc;
  external set blendSrc(
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ v);

  /// The tranparency of the .blendSrc. Default is null.
  external num get blendSrcAlpha;
  external set blendSrcAlpha(num v);

  /// Changes the behavior of clipping planes so that only their intersection is clipped, rather than their union. Default is false.
  external bool get clipIntersection;
  external set clipIntersection(bool v);

  /// User-defined clipping planes specified as THREE.Plane objects in world space. These planes apply to the objects this material is attached to. Points in space whose signed distance to the plane is negative are clipped (not rendered). See the WebGL / clipping /intersection example. Default is null.
  external dynamic get clippingPlanes;
  external set clippingPlanes(dynamic v);

  /// Defines whether to clip shadows according to the clipping planes specified on this material. Default is false.
  external bool get clipShadows;
  external set clipShadows(bool v);

  /// Whether to render the material's color. This can be used in conjunction with a mesh's .renderOrder property to create invisible objects that occlude other objects. Default is true.
  external bool get colorWrite;
  external set colorWrite(bool v);

  /// Which depth function to use. Default is [LessEqualDepth]. See the depth mode constants for all possible values.
  external num /*enum DepthModes*/ get depthFunc;
  external set depthFunc(num /*enum DepthModes*/ v);

  /// Whether to have depth test enabled when rendering this material. Default is true.
  external bool get depthTest;
  external set depthTest(bool v);

  /// Whether rendering this material has any effect on the depth buffer. Default is true.
  /// When drawing 2D overlays it can be useful to disable the depth writing in order to layer several things together without creating z-index artifacts.
  external bool get depthWrite;
  external set depthWrite(bool v);

  /// Whether the material is affected by fog. Default is true.
  external bool get fog;
  external set fog(bool v);

  /// Unique number of this material instance.
  external num get id;
  external set id(num v);

  /// Used to check whether this or derived classes are materials. Default is true.
  /// You should not change this, as it used internally for optimisation.
  external bool get isMaterial;
  external set isMaterial(bool v);

  /// Whether the material is affected by lights. Default is true.
  external bool get lights;
  external set lights(bool v);

  /// Material name. Default is an empty string.
  external String get name;
  external set name(String v);

  /// Specifies that the material needs to be updated, WebGL wise. Set it to true if you made changes that need to be reflected in WebGL.
  /// This property is automatically set to true when instancing a new material.
  external bool get needsUpdate;
  external set needsUpdate(bool v);

  /// Opacity. Default is 1.
  external num get opacity;
  external set opacity(num v);

  /// Enables/disables overdraw. If greater than zero, polygons are drawn slightly bigger in order to fix antialiasing gaps when using the CanvasRenderer. Default is 0.
  external num get overdraw;
  external set overdraw(num v);

  /// Whether to use polygon offset. Default is false. This corresponds to the POLYGON_OFFSET_FILL WebGL feature.
  external bool get polygonOffset;
  external set polygonOffset(bool v);

  /// Sets the polygon offset factor. Default is 0.
  external num get polygonOffsetFactor;
  external set polygonOffsetFactor(num v);

  /// Sets the polygon offset units. Default is 0.
  external num get polygonOffsetUnits;
  external set polygonOffsetUnits(num v);

  /// Override the renderer's default precision for this material. Can be "highp", "mediump" or "lowp". Defaults is null.
  external String /*'highp'|'mediump'|'lowp'|Null*/ get precision;
  external set precision(String /*'highp'|'mediump'|'lowp'|Null*/ v);

  /// Whether to premultiply the alpha (transparency) value. See WebGL / Materials / Transparency for an example of the difference. Default is false.
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);

  /// Whether to apply dithering to the color to remove the appearance of banding. Default is false.
  external bool get dithering;
  external set dithering(bool v);

  /// Define whether the material is rendered with flat shading. Default is false.
  external bool get flatShading;
  external set flatShading(bool v);

  /// Defines which of the face sides will be rendered - front, back or both.
  /// Default is THREE.FrontSide. Other options are THREE.BackSide and THREE.DoubleSide.
  external num /*enum Side*/ get side;
  external set side(num /*enum Side*/ v);

  /// Defines whether this material is transparent. This has an effect on rendering as transparent objects need special treatment and are rendered after non-transparent objects.
  /// When set to true, the extent to which the material is transparent is controlled by setting it's .opacity property.
  /// Default is false.
  external bool get transparent;
  external set transparent(bool v);

  /// Value is the string 'Material'. This shouldn't be changed, and can be used to find all objects of this type in a scene.
  external String get type;
  external set type(String v);

  /// UUID of this material instance. This gets automatically assigned, so this shouldn't be edited.
  external String get uuid;
  external set uuid(String v);

  /// Defines whether vertex coloring is used. Default is THREE.NoColors. Other options are THREE.VertexColors and THREE.FaceColors.
  external num /*enum Colors*/ get vertexColors;
  external set vertexColors(num /*enum Colors*/ v);

  /// Defines whether this material is visible. Default is true.
  external bool get visible;
  external set visible(bool v);

  /// An object that can be used to store custom data about the Material. It should not hold references to functions as these will not be cloned.
  external dynamic get userData;
  external set userData(dynamic v);

  /// Return a new material with the same parameters as this material.
  external Material clone();

  /// Copy the parameters from the passed material into this material.
  external Material copy(Material material);

  /// This disposes the material. Textures of a material don't get disposed. These needs to be disposed by [Texture].
  external void dispose();

  /// Sets the properties based on the values.
  external void setValues(MaterialParameters values);

  /// Convert the material to three.js JSON format.
  external dynamic toJSON([dynamic meta]);

  /// Call .dispatchEvent ( { type: 'update' }) on the material.
  external void update();
}

@anonymous
@JS()
abstract class LineBasicMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external num get linewidth;
  external set linewidth(num v);
  external String get linecap;
  external set linecap(String v);
  external String get linejoin;
  external set linejoin(String v);
  external factory LineBasicMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      num linewidth,
      String linecap,
      String linejoin,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class LineBasicMaterial extends Material {
  // @Ignore
  LineBasicMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory LineBasicMaterial([LineBasicMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external num get linewidth;
  external set linewidth(num v);
  external String get linecap;
  external set linecap(String v);
  external String get linejoin;
  external set linejoin(String v);
  external void setValues(LineBasicMaterialParameters parameters);
}

@anonymous
@JS()
abstract class LineDashedMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external num get linewidth;
  external set linewidth(num v);
  external num get scale;
  external set scale(num v);
  external num get dashSize;
  external set dashSize(num v);
  external num get gapSize;
  external set gapSize(num v);
  external factory LineDashedMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      num linewidth,
      num scale,
      num dashSize,
      num gapSize,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class LineDashedMaterial extends Material {
  // @Ignore
  LineDashedMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory LineDashedMaterial(
      [LineDashedMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external num get linewidth;
  external set linewidth(num v);
  external num get scale;
  external set scale(num v);
  external num get dashSize;
  external set dashSize(num v);
  external num get gapSize;
  external set gapSize(num v);
  external void setValues(LineDashedMaterialParameters parameters);
}

/// parameters is an object with one or more properties defining the material's appearance.
@anonymous
@JS()
abstract class MeshBasicMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external num get opacity;
  external set opacity(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external factory MeshBasicMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      num opacity,
      Texture map,
      Texture aoMap,
      num aoMapIntensity,
      Texture specularMap,
      Texture alphaMap,
      Texture envMap,
      num /*enum Combine*/ combine,
      num reflectivity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      String wireframeLinecap,
      String wireframeLinejoin,
      bool skinning,
      bool morphTargets,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshBasicMaterial extends Material {
  // @Ignore
  MeshBasicMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshBasicMaterial([MeshBasicMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Texture get map;
  external set map(Texture v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external void setValues(MeshBasicMaterialParameters parameters);
}

@anonymous
@JS()
abstract class MeshDepthMaterialParameters implements MaterialParameters {
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external factory MeshDepthMaterialParameters(
      {bool wireframe,
      num wireframeLinewidth,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshDepthMaterial extends Material {
  // @Ignore
  MeshDepthMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshDepthMaterial([MeshDepthMaterialParameters parameters]);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external void setValues(MeshDepthMaterialParameters parameters);
}

@anonymous
@JS()
abstract class MeshLambertMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external dynamic /*Color|String|num*/ get emissive;
  external set emissive(dynamic /*Color|String|num*/ v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory MeshLambertMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      dynamic /*Color|String|num*/ emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture map,
      Texture lightMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      Texture specularMap,
      Texture alphaMap,
      Texture envMap,
      num /*enum Combine*/ combine,
      num reflectivity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      String wireframeLinecap,
      String wireframeLinejoin,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshLambertMaterial extends Material {
  // @Ignore
  MeshLambertMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshLambertMaterial(
      [MeshLambertMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Color get emissive;
  external set emissive(Color v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external void setValues(MeshLambertMaterialParameters parameters);
}

@anonymous
@JS()
abstract class MeshStandardMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external num get roughness;
  external set roughness(num v);
  external num get metalness;
  external set metalness(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external dynamic /*Color|String|num*/ get emissive;
  external set emissive(dynamic /*Color|String|num*/ v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external Vector2 get normalScale;
  external set normalScale(Vector2 v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get roughnessMap;
  external set roughnessMap(Texture v);
  external Texture get metalnessMap;
  external set metalnessMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num get envMapIntensity;
  external set envMapIntensity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory MeshStandardMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      num roughness,
      num metalness,
      Texture map,
      Texture lightMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      dynamic /*Color|String|num*/ emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture bumpMap,
      num bumpScale,
      Texture normalMap,
      Vector2 normalScale,
      Texture displacementMap,
      num displacementScale,
      num displacementBias,
      Texture roughnessMap,
      Texture metalnessMap,
      Texture alphaMap,
      Texture envMap,
      num envMapIntensity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshStandardMaterial extends Material {
  // @Ignore
  MeshStandardMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshStandardMaterial(
      [MeshStandardMaterialParameters parameters]);
  external dynamic get defines;
  external set defines(dynamic v);
  external Color get color;
  external set color(Color v);
  external num get roughness;
  external set roughness(num v);
  external num get metalness;
  external set metalness(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Color get emissive;
  external set emissive(Color v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external num get normalScale;
  external set normalScale(num v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get roughnessMap;
  external set roughnessMap(Texture v);
  external Texture get metalnessMap;
  external set metalnessMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num get envMapIntensity;
  external set envMapIntensity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external void setValues(MeshStandardMaterialParameters parameters);
}

@anonymous
@JS()
abstract class MeshNormalMaterialParameters implements MaterialParameters {
  /// Render geometry as wireframe. Default is false (i.e. render as smooth shaded).
  external bool get wireframe;
  external set wireframe(bool v);

  /// Controls wireframe thickness. Default is 1.
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external factory MeshNormalMaterialParameters(
      {bool wireframe,
      num wireframeLinewidth,
      bool morphTargets,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshNormalMaterial extends Material {
  // @Ignore
  MeshNormalMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshNormalMaterial(
      [MeshNormalMaterialParameters parameters]);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external void setValues(MeshNormalMaterialParameters parameters);
}

@anonymous
@JS()
abstract class MeshPhongMaterialParameters implements MaterialParameters {
  /// geometry color in hexadecimal. Default is 0xffffff.
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external dynamic /*Color|String|num*/ get specular;
  external set specular(dynamic /*Color|String|num*/ v);
  external num get shininess;
  external set shininess(num v);
  external num get opacity;
  external set opacity(num v);
  external Texture get map;
  external set map(Texture v);
  external Texture get lightMap;
  external set lightMap(Texture v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture get aoMap;
  external set aoMap(Texture v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external dynamic /*Color|String|num*/ get emissive;
  external set emissive(dynamic /*Color|String|num*/ v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture get emissiveMap;
  external set emissiveMap(Texture v);
  external Texture get bumpMap;
  external set bumpMap(Texture v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture get normalMap;
  external set normalMap(Texture v);
  external Vector2 get normalScale;
  external set normalScale(Vector2 v);
  external Texture get displacementMap;
  external set displacementMap(Texture v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture get specularMap;
  external set specularMap(Texture v);
  external Texture get alphaMap;
  external set alphaMap(Texture v);
  external Texture get envMap;
  external set envMap(Texture v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory MeshPhongMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      dynamic /*Color|String|num*/ specular,
      num shininess,
      num opacity,
      Texture map,
      Texture lightMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      dynamic /*Color|String|num*/ emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture bumpMap,
      num bumpScale,
      Texture normalMap,
      Vector2 normalScale,
      Texture displacementMap,
      num displacementScale,
      num displacementBias,
      Texture specularMap,
      Texture alphaMap,
      Texture envMap,
      num /*enum Combine*/ combine,
      num reflectivity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      String wireframeLinecap,
      String wireframeLinejoin,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshPhongMaterial extends Material {
  // @Ignore
  MeshPhongMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshPhongMaterial([MeshPhongMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Color get specular;
  external set specular(Color v);
  external num get shininess;
  external set shininess(num v);
  external Texture /*Texture|Null*/ get map;
  external set map(Texture /*Texture|Null*/ v);
  external Texture /*Texture|Null*/ get lightMap;
  external set lightMap(Texture /*Texture|Null*/ v);
  external num get lightMapIntensity;
  external set lightMapIntensity(num v);
  external Texture /*Texture|Null*/ get aoMap;
  external set aoMap(Texture /*Texture|Null*/ v);
  external num get aoMapIntensity;
  external set aoMapIntensity(num v);
  external Color get emissive;
  external set emissive(Color v);
  external num get emissiveIntensity;
  external set emissiveIntensity(num v);
  external Texture /*Texture|Null*/ get emissiveMap;
  external set emissiveMap(Texture /*Texture|Null*/ v);
  external Texture /*Texture|Null*/ get bumpMap;
  external set bumpMap(Texture /*Texture|Null*/ v);
  external num get bumpScale;
  external set bumpScale(num v);
  external Texture /*Texture|Null*/ get normalMap;
  external set normalMap(Texture /*Texture|Null*/ v);
  external Vector2 get normalScale;
  external set normalScale(Vector2 v);
  external Texture /*Texture|Null*/ get displacementMap;
  external set displacementMap(Texture /*Texture|Null*/ v);
  external num get displacementScale;
  external set displacementScale(num v);
  external num get displacementBias;
  external set displacementBias(num v);
  external Texture /*Texture|Null*/ get specularMap;
  external set specularMap(Texture /*Texture|Null*/ v);
  external Texture /*Texture|Null*/ get alphaMap;
  external set alphaMap(Texture /*Texture|Null*/ v);
  external Texture /*Texture|Null*/ get envMap;
  external set envMap(Texture /*Texture|Null*/ v);
  external num /*enum Combine*/ get combine;
  external set combine(num /*enum Combine*/ v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get refractionRatio;
  external set refractionRatio(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external String get wireframeLinecap;
  external set wireframeLinecap(String v);
  external String get wireframeLinejoin;
  external set wireframeLinejoin(String v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);

  /// Use [MeshStandardMaterial THREE.MeshStandardMaterial] instead.
  external bool get metal;
  external set metal(bool v);
  external void setValues(MeshPhongMaterialParameters parameters);
}

@anonymous
@JS()
abstract class MeshPhysicalMaterialParameters
    implements MeshStandardMaterialParameters {
  external num get reflectivity;
  external set reflectivity(num v);
  external num get clearCoat;
  external set clearCoat(num v);
  external num get clearCoatRoughness;
  external set clearCoatRoughness(num v);
  external factory MeshPhysicalMaterialParameters(
      {num reflectivity,
      num clearCoat,
      num clearCoatRoughness,
      dynamic /*Color|String|num*/ color,
      num roughness,
      num metalness,
      Texture map,
      Texture lightMap,
      num lightMapIntensity,
      Texture aoMap,
      num aoMapIntensity,
      dynamic /*Color|String|num*/ emissive,
      num emissiveIntensity,
      Texture emissiveMap,
      Texture bumpMap,
      num bumpScale,
      Texture normalMap,
      Vector2 normalScale,
      Texture displacementMap,
      num displacementScale,
      num displacementBias,
      Texture roughnessMap,
      Texture metalnessMap,
      Texture alphaMap,
      Texture envMap,
      num envMapIntensity,
      num refractionRatio,
      bool wireframe,
      num wireframeLinewidth,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class MeshPhysicalMaterial extends MeshStandardMaterial {
  // @Ignore
  MeshPhysicalMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MeshPhysicalMaterial(
      MeshPhysicalMaterialParameters parameters);
  external dynamic get defines;
  external set defines(dynamic v);
  external num get reflectivity;
  external set reflectivity(num v);
  external num get clearCoat;
  external set clearCoat(num v);
  external num get clearCoatRoughness;
  external set clearCoatRoughness(num v);
}

/// MultiMaterial does not inherit the Material class in the original code. However, it should treat as Material class.
/// See tests/canvas/canvas_materials.ts.
/// Use an Array instead.
@JS()
class MultiMaterial extends Material {
  // @Ignore
  MultiMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory MultiMaterial([List<Material> materials]);
  external get isMultiMaterial;
  external set isMultiMaterial(v);
  external List<Material> get materials;
  external set materials(List<Material> v);
  external dynamic toJSON(dynamic meta);
}

/// Use [MultiMaterial] instead.
@JS()
class MeshFaceMaterial extends MultiMaterial {
  // @Ignore
  MeshFaceMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@anonymous
@JS()
abstract class PointsMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external Texture get map;
  external set map(Texture v);
  external num get size;
  external set size(num v);
  external bool get sizeAttenuation;
  external set sizeAttenuation(bool v);
  external factory PointsMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      Texture map,
      num size,
      bool sizeAttenuation,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class PointsMaterial extends Material {
  // @Ignore
  PointsMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory PointsMaterial([PointsMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Texture get map;
  external set map(Texture v);
  external num get size;
  external set size(num v);
  external bool get sizeAttenuation;
  external set sizeAttenuation(bool v);
  external void setValues(PointsMaterialParameters parameters);
}

/// Use [PointsMaterial THREE.PointsMaterial] instead
@JS()
class PointCloudMaterial extends PointsMaterial {
  // @Ignore
  PointCloudMaterial.fakeConstructor$() : super.fakeConstructor$();
}

/// Use [PointsMaterial THREE.PointsMaterial] instead
@JS()
class ParticleBasicMaterial extends PointsMaterial {
  // @Ignore
  ParticleBasicMaterial.fakeConstructor$() : super.fakeConstructor$();
}

/// Use [PointsMaterial THREE.PointsMaterial] instead
@JS()
class ParticleSystemMaterial extends PointsMaterial {
  // @Ignore
  ParticleSystemMaterial.fakeConstructor$() : super.fakeConstructor$();
}

@anonymous
@JS()
abstract class ShaderMaterialParameters implements MaterialParameters {
  external dynamic get defines;
  external set defines(dynamic v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external String get vertexShader;
  external set vertexShader(String v);
  external String get fragmentShader;
  external set fragmentShader(String v);
  external num get lineWidth;
  external set lineWidth(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get lights;
  external set lights(bool v);
  external bool get clipping;
  external set clipping(bool v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);
  external factory ShaderMaterialParameters(
      {dynamic defines,
      dynamic uniforms,
      String vertexShader,
      String fragmentShader,
      num lineWidth,
      bool wireframe,
      num wireframeLinewidth,
      bool lights,
      bool clipping,
      bool skinning,
      bool morphTargets,
      bool morphNormals,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class ShaderMaterial extends Material {
  // @Ignore
  ShaderMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory ShaderMaterial([ShaderMaterialParameters parameters]);
  external dynamic get defines;
  external set defines(dynamic v);
  external dynamic /*JSMap of <String,IUniform>*/ get uniforms;
  external set uniforms(dynamic /*JSMap of <String,IUniform>*/ v);
  external String get vertexShader;
  external set vertexShader(String v);
  external String get fragmentShader;
  external set fragmentShader(String v);
  external num get linewidth;
  external set linewidth(num v);
  external bool get wireframe;
  external set wireframe(bool v);
  external num get wireframeLinewidth;
  external set wireframeLinewidth(num v);
  external bool get lights;
  external set lights(bool v);
  external bool get clipping;
  external set clipping(bool v);
  external bool get skinning;
  external set skinning(bool v);
  external bool get morphTargets;
  external set morphTargets(bool v);
  external bool get morphNormals;
  external set morphNormals(bool v);

  /// Use [ShaderMaterial#extensions.derivatives extensions.derivatives] instead.
  external dynamic get derivatives;
  external set derivatives(dynamic v);
  external dynamic /*{ derivatives: boolean; fragDepth: boolean; drawBuffers: boolean; shaderTextureLOD: boolean }*/ get extensions;
  external set extensions(
      dynamic /*{ derivatives: boolean; fragDepth: boolean; drawBuffers: boolean; shaderTextureLOD: boolean }*/ v);
  external dynamic get defaultAttributeValues;
  external set defaultAttributeValues(dynamic v);
  external String get index0AttributeName;
  external set index0AttributeName(String v);
  external void setValues(ShaderMaterialParameters parameters);
  external dynamic toJSON(dynamic meta);
}

@JS()
class RawShaderMaterial extends ShaderMaterial {
  // @Ignore
  RawShaderMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory RawShaderMaterial([ShaderMaterialParameters parameters]);
}

@anonymous
@JS()
abstract class SpriteMaterialParameters implements MaterialParameters {
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external Texture get map;
  external set map(Texture v);
  external num get rotation;
  external set rotation(num v);
  external factory SpriteMaterialParameters(
      {dynamic /*Color|String|num*/ color,
      Texture map,
      num rotation,
      num alphaTest,
      num /*enum BlendingDstFactor*/ blendDst,
      num blendDstAlpha,
      num /*enum BlendingEquation*/ blendEquation,
      num blendEquationAlpha,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num blendSrcAlpha,
      bool clipIntersection,
      List<Plane> clippingPlanes,
      bool clipShadows,
      bool colorWrite,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool fog,
      bool lights,
      String name,
      num opacity,
      num overdraw,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      String /*'highp'|'mediump'|'lowp'|Null*/ precision,
      bool premultipliedAlpha,
      bool dithering,
      bool flatShading,
      num /*enum Side*/ side,
      bool transparent,
      num /*enum Colors*/ vertexColors,
      bool visible});
}

@JS()
class SpriteMaterial extends Material {
  // @Ignore
  SpriteMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory SpriteMaterial([SpriteMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external Texture get map;
  external set map(Texture v);
  external num get rotation;
  external set rotation(num v);
  external void setValues(SpriteMaterialParameters parameters);
}

@JS()
class ShadowMaterial extends ShaderMaterial {
  // @Ignore
  ShadowMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory ShadowMaterial([ShaderMaterialParameters parameters]);
}

/// Math //////////////////////////////////////////////////////////////////////////////////
@JS()
class Box2 {
  // @Ignore
  Box2.fakeConstructor$();
  external factory Box2([Vector2 min, Vector2 max]);
  external Vector2 get max;
  external set max(Vector2 v);
  external Vector2 get min;
  external set min(Vector2 v);
  external Box2 JS$set(Vector2 min, Vector2 max);
  external Box2 setFromPoints(List<Vector2> points);
  external Box2 setFromCenterAndSize(Vector2 center, Vector2 size);
  external Box2 clone();
  external Box2 copy(Box2 box);
  external Box2 makeEmpty();
  external bool isEmpty();
  external Vector2 getCenter(Vector2 target);
  external Vector2 getSize(Vector2 target);
  external Box2 expandByPoint(Vector2 point);
  external Box2 expandByVector(Vector2 vector);
  external Box2 expandByScalar(num scalar);
  external bool containsPoint(Vector2 point);
  external bool containsBox(Box2 box);
  external Vector2 getParameter(Vector2 point);
  external bool intersectsBox(Box2 box);
  external Vector2 clampPoint(Vector2 point, Vector2 target);
  external num distanceToPoint(Vector2 point);
  external Box2 intersect(Box2 box);
  external Box2 union(Box2 box);
  external Box2 translate(Vector2 offset);
  external bool equals(Box2 box);

  /// Use [Box2#isEmpty .isEmpty()] instead.
  external dynamic empty();

  /// Use [Box2#intersectsBox .intersectsBox()] instead.
  external dynamic isIntersectionBox(dynamic b);
}

@JS()
class Box3 {
  // @Ignore
  Box3.fakeConstructor$();
  external factory Box3([Vector3 min, Vector3 max]);
  external Vector3 get max;
  external set max(Vector3 v);
  external Vector3 get min;
  external set min(Vector3 v);
  external Box3 JS$set(Vector3 min, Vector3 max);
  external Box3 setFromArray(ArrayLike<num> array);
  external Box3 setFromPoints(List<Vector3> points);
  external Box3 setFromCenterAndSize(Vector3 center, Vector3 size);
  external Box3 setFromObject(Object3D object);
  external Box3 clone();
  external Box3 copy(Box3 box);
  external Box3 makeEmpty();
  external bool isEmpty();
  external Vector3 getCenter(Vector3 target);
  external Vector3 getSize(Vector3 target);
  external Box3 expandByPoint(Vector3 point);
  external Box3 expandByVector(Vector3 vector);
  external Box3 expandByScalar(num scalar);
  external Box3 expandByObject(Object3D object);
  external bool containsPoint(Vector3 point);
  external bool containsBox(Box3 box);
  external Vector3 getParameter(Vector3 point);
  external bool intersectsBox(Box3 box);
  external bool intersectsSphere(Sphere sphere);
  external bool intersectsPlane(Plane plane);
  external Vector3 clampPoint(Vector3 point, Vector3 target);
  external num distanceToPoint(Vector3 point);
  external Sphere getBoundingSphere(Sphere target);
  external Box3 intersect(Box3 box);
  external Box3 union(Box3 box);
  external Box3 applyMatrix4(Matrix4 matrix);
  external Box3 translate(Vector3 offset);
  external bool equals(Box3 box);

  /// Use [Box3#isEmpty .isEmpty()] instead.
  external dynamic empty();

  /// Use [Box3#intersectsBox .intersectsBox()] instead.
  external dynamic isIntersectionBox(dynamic b);

  /// Use [Box3#intersectsSphere .intersectsSphere()] instead.
  external dynamic isIntersectionSphere(dynamic s);
}

@anonymous
@JS()
abstract class HSL {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get l;
  external set l(num v);
  external factory HSL({num h, num s, num l});
}

/// Represents a color. See also [ColorUtils].
/// @example
/// var color = new THREE.Color( 0xff0000 );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Color.js">src/math/Color.js</a>
@JS()
class Color {
  // @Ignore
  Color.fakeConstructor$();
  /*external factory Color([Color color]);*/
  /*external factory Color([String color]);*/
  /*external factory Color([num color]);*/
  /*external factory Color(num r, num g, num b);*/
  external factory Color([dynamic /*Color|String|num*/ color_r, num g, num b]);

  /// Red channel value between 0 and 1. Default is 1.
  external num get r;
  external set r(num v);

  /// Green channel value between 0 and 1. Default is 1.
  external num get g;
  external set g(num v);

  /// Blue channel value between 0 and 1. Default is 1.
  external num get b;
  external set b(num v);
  /*external Color JS$set(Color color);*/
  /*external Color JS$set(num color);*/
  /*external Color JS$set(String color);*/
  external Color JS$set(dynamic /*Color|num|String*/ color);
  external Color setScalar(num scalar);
  external Color setHex(num hex);

  /// Sets this color from RGB values.
  external Color setRGB(num r, num g, num b);

  /// Sets this color from HSL values.
  /// Based on MochiKit implementation by Bob Ippolito.
  external Color setHSL(num h, num s, num l);

  /// Sets this color from a CSS context style string.
  external Color setStyle(String style);

  /// Clones this color.
  external Color clone();

  /// Copies given color.
  external Color copy(Color color);

  /// Copies given color making conversion from gamma to linear space.
  external Color copyGammaToLinear(Color color, [num gammaFactor]);

  /// Copies given color making conversion from linear to gamma space.
  external Color copyLinearToGamma(Color color, [num gammaFactor]);

  /// Converts this color from gamma to linear space.
  external Color convertGammaToLinear();

  /// Converts this color from linear to gamma space.
  external Color convertLinearToGamma();

  /// Returns the hexadecimal value of this color.
  external num getHex();

  /// Returns the string formated hexadecimal value of this color.
  external String getHexString();
  external HSL getHSL();

  /// Returns the value of this color in CSS context style.
  /// Example: rgb(r, g, b)
  external String getStyle();
  external Color offsetHSL(num h, num s, num l);
  external Color add(Color color);
  external Color addColors(Color color1, Color color2);
  external Color addScalar(num s);
  external Color sub(Color color);
  external Color multiply(Color color);
  external Color multiplyScalar(num s);
  external Color lerp(Color color, num alpha);
  external bool equals(Color color);
  external Color fromArray(List<num> rgb, [num offset]);
  external List<num> toArray([List<num> array, num offset]);
}

// Module ColorKeywords
@JS("ColorKeywords.aliceblue")
external num get aliceblue;
@JS("ColorKeywords.antiquewhite")
external num get antiquewhite;
@JS("ColorKeywords.aqua")
external num get aqua;
@JS("ColorKeywords.aquamarine")
external num get aquamarine;
@JS("ColorKeywords.azure")
external num get azure;
@JS("ColorKeywords.beige")
external num get beige;
@JS("ColorKeywords.bisque")
external num get bisque;
@JS("ColorKeywords.black")
external num get black;
@JS("ColorKeywords.blanchedalmond")
external num get blanchedalmond;
@JS("ColorKeywords.blue")
external num get blue;
@JS("ColorKeywords.blueviolet")
external num get blueviolet;
@JS("ColorKeywords.brown")
external num get brown;
@JS("ColorKeywords.burlywood")
external num get burlywood;
@JS("ColorKeywords.cadetblue")
external num get cadetblue;
@JS("ColorKeywords.chartreuse")
external num get chartreuse;
@JS("ColorKeywords.chocolate")
external num get chocolate;
@JS("ColorKeywords.coral")
external num get coral;
@JS("ColorKeywords.cornflowerblue")
external num get cornflowerblue;
@JS("ColorKeywords.cornsilk")
external num get cornsilk;
@JS("ColorKeywords.crimson")
external num get crimson;
@JS("ColorKeywords.cyan")
external num get cyan;
@JS("ColorKeywords.darkblue")
external num get darkblue;
@JS("ColorKeywords.darkcyan")
external num get darkcyan;
@JS("ColorKeywords.darkgoldenrod")
external num get darkgoldenrod;
@JS("ColorKeywords.darkgray")
external num get darkgray;
@JS("ColorKeywords.darkgreen")
external num get darkgreen;
@JS("ColorKeywords.darkgrey")
external num get darkgrey;
@JS("ColorKeywords.darkkhaki")
external num get darkkhaki;
@JS("ColorKeywords.darkmagenta")
external num get darkmagenta;
@JS("ColorKeywords.darkolivegreen")
external num get darkolivegreen;
@JS("ColorKeywords.darkorange")
external num get darkorange;
@JS("ColorKeywords.darkorchid")
external num get darkorchid;
@JS("ColorKeywords.darkred")
external num get darkred;
@JS("ColorKeywords.darksalmon")
external num get darksalmon;
@JS("ColorKeywords.darkseagreen")
external num get darkseagreen;
@JS("ColorKeywords.darkslateblue")
external num get darkslateblue;
@JS("ColorKeywords.darkslategray")
external num get darkslategray;
@JS("ColorKeywords.darkslategrey")
external num get darkslategrey;
@JS("ColorKeywords.darkturquoise")
external num get darkturquoise;
@JS("ColorKeywords.darkviolet")
external num get darkviolet;
@JS("ColorKeywords.deeppink")
external num get deeppink;
@JS("ColorKeywords.deepskyblue")
external num get deepskyblue;
@JS("ColorKeywords.dimgray")
external num get dimgray;
@JS("ColorKeywords.dimgrey")
external num get dimgrey;
@JS("ColorKeywords.dodgerblue")
external num get dodgerblue;
@JS("ColorKeywords.firebrick")
external num get firebrick;
@JS("ColorKeywords.floralwhite")
external num get floralwhite;
@JS("ColorKeywords.forestgreen")
external num get forestgreen;
@JS("ColorKeywords.fuchsia")
external num get fuchsia;
@JS("ColorKeywords.gainsboro")
external num get gainsboro;
@JS("ColorKeywords.ghostwhite")
external num get ghostwhite;
@JS("ColorKeywords.gold")
external num get gold;
@JS("ColorKeywords.goldenrod")
external num get goldenrod;
@JS("ColorKeywords.gray")
external num get gray;
@JS("ColorKeywords.green")
external num get green;
@JS("ColorKeywords.greenyellow")
external num get greenyellow;
@JS("ColorKeywords.grey")
external num get grey;
@JS("ColorKeywords.honeydew")
external num get honeydew;
@JS("ColorKeywords.hotpink")
external num get hotpink;
@JS("ColorKeywords.indianred")
external num get indianred;
@JS("ColorKeywords.indigo")
external num get indigo;
@JS("ColorKeywords.ivory")
external num get ivory;
@JS("ColorKeywords.khaki")
external num get khaki;
@JS("ColorKeywords.lavender")
external num get lavender;
@JS("ColorKeywords.lavenderblush")
external num get lavenderblush;
@JS("ColorKeywords.lawngreen")
external num get lawngreen;
@JS("ColorKeywords.lemonchiffon")
external num get lemonchiffon;
@JS("ColorKeywords.lightblue")
external num get lightblue;
@JS("ColorKeywords.lightcoral")
external num get lightcoral;
@JS("ColorKeywords.lightcyan")
external num get lightcyan;
@JS("ColorKeywords.lightgoldenrodyellow")
external num get lightgoldenrodyellow;
@JS("ColorKeywords.lightgray")
external num get lightgray;
@JS("ColorKeywords.lightgreen")
external num get lightgreen;
@JS("ColorKeywords.lightgrey")
external num get lightgrey;
@JS("ColorKeywords.lightpink")
external num get lightpink;
@JS("ColorKeywords.lightsalmon")
external num get lightsalmon;
@JS("ColorKeywords.lightseagreen")
external num get lightseagreen;
@JS("ColorKeywords.lightskyblue")
external num get lightskyblue;
@JS("ColorKeywords.lightslategray")
external num get lightslategray;
@JS("ColorKeywords.lightslategrey")
external num get lightslategrey;
@JS("ColorKeywords.lightsteelblue")
external num get lightsteelblue;
@JS("ColorKeywords.lightyellow")
external num get lightyellow;
@JS("ColorKeywords.lime")
external num get lime;
@JS("ColorKeywords.limegreen")
external num get limegreen;
@JS("ColorKeywords.linen")
external num get linen;
@JS("ColorKeywords.magenta")
external num get magenta;
@JS("ColorKeywords.maroon")
external num get maroon;
@JS("ColorKeywords.mediumaquamarine")
external num get mediumaquamarine;
@JS("ColorKeywords.mediumblue")
external num get mediumblue;
@JS("ColorKeywords.mediumorchid")
external num get mediumorchid;
@JS("ColorKeywords.mediumpurple")
external num get mediumpurple;
@JS("ColorKeywords.mediumseagreen")
external num get mediumseagreen;
@JS("ColorKeywords.mediumslateblue")
external num get mediumslateblue;
@JS("ColorKeywords.mediumspringgreen")
external num get mediumspringgreen;
@JS("ColorKeywords.mediumturquoise")
external num get mediumturquoise;
@JS("ColorKeywords.mediumvioletred")
external num get mediumvioletred;
@JS("ColorKeywords.midnightblue")
external num get midnightblue;
@JS("ColorKeywords.mintcream")
external num get mintcream;
@JS("ColorKeywords.mistyrose")
external num get mistyrose;
@JS("ColorKeywords.moccasin")
external num get moccasin;
@JS("ColorKeywords.navajowhite")
external num get navajowhite;
@JS("ColorKeywords.navy")
external num get navy;
@JS("ColorKeywords.oldlace")
external num get oldlace;
@JS("ColorKeywords.olive")
external num get olive;
@JS("ColorKeywords.olivedrab")
external num get olivedrab;
@JS("ColorKeywords.orange")
external num get orange;
@JS("ColorKeywords.orangered")
external num get orangered;
@JS("ColorKeywords.orchid")
external num get orchid;
@JS("ColorKeywords.palegoldenrod")
external num get palegoldenrod;
@JS("ColorKeywords.palegreen")
external num get palegreen;
@JS("ColorKeywords.paleturquoise")
external num get paleturquoise;
@JS("ColorKeywords.palevioletred")
external num get palevioletred;
@JS("ColorKeywords.papayawhip")
external num get papayawhip;
@JS("ColorKeywords.peachpuff")
external num get peachpuff;
@JS("ColorKeywords.peru")
external num get peru;
@JS("ColorKeywords.pink")
external num get pink;
@JS("ColorKeywords.plum")
external num get plum;
@JS("ColorKeywords.powderblue")
external num get powderblue;
@JS("ColorKeywords.purple")
external num get purple;
@JS("ColorKeywords.red")
external num get red;
@JS("ColorKeywords.rosybrown")
external num get rosybrown;
@JS("ColorKeywords.royalblue")
external num get royalblue;
@JS("ColorKeywords.saddlebrown")
external num get saddlebrown;
@JS("ColorKeywords.salmon")
external num get salmon;
@JS("ColorKeywords.sandybrown")
external num get sandybrown;
@JS("ColorKeywords.seagreen")
external num get seagreen;
@JS("ColorKeywords.seashell")
external num get seashell;
@JS("ColorKeywords.sienna")
external num get sienna;
@JS("ColorKeywords.silver")
external num get silver;
@JS("ColorKeywords.skyblue")
external num get skyblue;
@JS("ColorKeywords.slateblue")
external num get slateblue;
@JS("ColorKeywords.slategray")
external num get slategray;
@JS("ColorKeywords.slategrey")
external num get slategrey;
@JS("ColorKeywords.snow")
external num get snow;
@JS("ColorKeywords.springgreen")
external num get springgreen;
@JS("ColorKeywords.steelblue")
external num get steelblue;
@JS("ColorKeywords.tan")
external num get tan;
@JS("ColorKeywords.teal")
external num get teal;
@JS("ColorKeywords.thistle")
external num get thistle;
@JS("ColorKeywords.tomato")
external num get tomato;
@JS("ColorKeywords.turquoise")
external num get turquoise;
@JS("ColorKeywords.violet")
external num get violet;
@JS("ColorKeywords.wheat")
external num get wheat;
@JS("ColorKeywords.white")
external num get white;
@JS("ColorKeywords.whitesmoke")
external num get whitesmoke;
@JS("ColorKeywords.yellow")
external num get yellow;
@JS("ColorKeywords.yellowgreen")
external num get yellowgreen;

// End module ColorKeywords
@JS()
class Euler {
  // @Ignore
  Euler.fakeConstructor$();
  external factory Euler([num x, num y, num z, String order]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external String get order;
  external set order(String v);
  external Function get onChangeCallback;
  external set onChangeCallback(Function v);
  external Euler JS$set(num x, num y, num z, [String order]);
  external Euler clone();
  external Euler copy(Euler euler);
  external Euler setFromRotationMatrix(Matrix4 m, [String order, bool update]);
  external Euler setFromQuaternion(Quaternion q, [String order, bool update]);
  external Euler setFromVector3(Vector3 v, [String order]);
  external Euler reorder(String newOrder);
  external bool equals(Euler euler);
  external Euler fromArray(List<dynamic> xyzo);
  external List<num> toArray([List<num> array, num offset]);
  external Vector3 toVector3([Vector3 optionalResult]);
  external void onChange(Function callback);
  external static List<String> get RotationOrders;
  external static set RotationOrders(List<String> v);
  external static String get DefaultOrder;
  external static set DefaultOrder(String v);
}

/// Frustums are used to determine what is inside the camera's field of view. They help speed up the rendering process.
@JS()
class Frustum {
  // @Ignore
  Frustum.fakeConstructor$();
  external factory Frustum(
      [Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5]);

  /// Array of 6 vectors.
  external List<Plane> get planes;
  external set planes(List<Plane> v);
  external Frustum JS$set([num p0, num p1, num p2, num p3, num p4, num p5]);
  external Frustum clone();
  external Frustum copy(Frustum frustum);
  external Frustum setFromMatrix(Matrix4 m);
  /*external bool intersectsObject(Object3D object);*/
  /*external bool intersectsObject(Sprite sprite);*/
  external bool intersectsObject(dynamic /*Object3D|Sprite*/ object_sprite);
  external bool intersectsSphere(Sphere sphere);
  external bool intersectsBox(Box3 box);
  external bool containsPoint(Vector3 point);
}

@JS()
class Line3 {
  // @Ignore
  Line3.fakeConstructor$();
  external factory Line3([Vector3 start, Vector3 end]);
  external Vector3 get start;
  external set start(Vector3 v);
  external Vector3 get end;
  external set end(Vector3 v);
  external Line3 JS$set([Vector3 start, Vector3 end]);
  external Line3 clone();
  external Line3 copy(Line3 line);
  external Vector3 getCenter(Vector3 target);
  external Vector3 delta(Vector3 target);
  external num distanceSq();
  external num distance();
  external Vector3 at(num t, Vector3 target);
  external num closestPointToPointParameter(Vector3 point, [bool clampToLine]);
  external Vector3 closestPointToPoint(
      Vector3 point, bool clampToLine, Vector3 target);
  external Line3 applyMatrix4(Matrix4 matrix);
  external bool equals(Line3 line);
}

/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Math.js">src/math/Math.js</a>

// Module Math
@JS("Math.DEG2RAD")
external num get DEG2RAD;
@JS("Math.RAD2DEG")
external num get RAD2DEG;
@JS("Math.generateUUID")
external String generateUUID();

/// Clamps the x to be between a and b.
@JS("Math.clamp")
external num clamp(num value, num min, num max);
@JS("Math.euclideanModulo")
external num euclideanModulo(num n, num m);

/// Linear mapping of x from range [a1, a2] to range [b1, b2].
@JS("Math.mapLinear")
external num mapLinear(num x, num a1, num a2, num b1, num b2);
@JS("Math.smoothstep")
external num smoothstep(num x, num min, num max);
@JS("Math.smootherstep")
external num smootherstep(num x, num min, num max);

/// Random float from 0 to 1 with 16 bits of randomness.
/// Standard Math.random() creates repetitive patterns when applied over larger space.
/// Use [Math#random Math.random()]
@JS("Math.random16")
external num random16();

/// Random integer from low to high interval.
@JS("Math.randInt")
external num randInt(num low, num high);

/// Random float from low to high interval.
@JS("Math.randFloat")
external num randFloat(num low, num high);

/// Random float from - range / 2 to range / 2 interval.
@JS("Math.randFloatSpread")
external num randFloatSpread(num range);
@JS("Math.degToRad")
external num degToRad(num degrees);
@JS("Math.radToDeg")
external num radToDeg(num radians);
@JS("Math.isPowerOfTwo")
external bool isPowerOfTwo(num value);

/// Use [Math#floorPowerOfTwo .floorPowerOfTwo()]
@JS("Math.nearestPowerOfTwo")
external num nearestPowerOfTwo(num value);

/// Use [Math#ceilPowerOfTwo .ceilPowerOfTwo()]
@JS("Math.nextPowerOfTwo")
external num nextPowerOfTwo(num value);
@JS("Math.floorPowerOfTwo")
external num floorPowerOfTwo(num value);
@JS("Math.ceilPowerOfTwo")
external num ceilPowerOfTwo(num value);
// End module Math

/// ( interface Matrix&lt;T&gt; )
@anonymous
@JS()
abstract class Matrix {
  /// Float32Array with matrix values.
  external Float32List get elements;
  external set elements(Float32List v);

  /// identity():T;
  external Matrix identity();

  /// copy(m:T):T;
  external Matrix copy(Matrix m);

  /// multiplyScalar(s:number):T;
  external Matrix multiplyScalar(num s);
  external num determinant();

  /// getInverse(matrix:T, throwOnInvertible?:boolean):T;
  external Matrix getInverse(Matrix matrix, [bool throwOnInvertible]);

  /// transpose():T;
  external Matrix transpose();

  /// clone():T;
  external Matrix clone();
}

/// ( class Matrix3 implements Matrix&lt;Matrix3&gt; )
@JS()
class Matrix3 implements Matrix {
  // @Ignore
  Matrix3.fakeConstructor$();

  /// Creates an identity matrix.
  external factory Matrix3();

  /// Float32Array with matrix values.
  external Float32List get elements;
  external set elements(Float32List v);
  external Matrix3 JS$set(num n11, num n12, num n13, num n21, num n22, num n23,
      num n31, num n32, num n33);
  external Matrix3 identity();
  external Matrix3 clone();
  external Matrix3 copy(Matrix3 m);
  external Matrix3 setFromMatrix4(Matrix4 m);

  /// Use [Matrix3#applyToBufferAttribute matrix3.applyToBufferAttribute( attribute )] instead.
  external BufferAttribute applyToBuffer(BufferAttribute buffer,
      [num offset, num length]);
  external BufferAttribute applyToBufferAttribute(BufferAttribute attribute);
  external Matrix3 multiplyScalar(num s);
  external num determinant();
  /*external Matrix3 getInverse(Matrix3 matrix, [bool throwOnDegenerate]);*/
  /*external Matrix3 getInverse(Matrix4 matrix, [bool throwOnDegenerate]);*/
  external Matrix3 getInverse(dynamic /*Matrix3|Matrix4*/ matrix,
      [bool throwOnDegenerate]);

  /// Transposes this matrix in place.
  external Matrix3 transpose();
  external Matrix3 getNormalMatrix(Matrix4 matrix4);

  /// Transposes this matrix into the supplied array r, and returns itself.
  external List<num> transposeIntoArray(List<num> r);
  external Matrix3 fromArray(List<num> array, [num offset]);
  external List<num> toArray();

  /// Multiplies this matrix by m.
  external Matrix3 multiply(Matrix3 m);
  external Matrix3 premultiply(Matrix3 m);

  /// Sets this matrix to a x b.
  external Matrix3 multiplyMatrices(Matrix3 a, Matrix3 b);

  /// Use [Vector3.applyMatrix3 vector.applyMatrix3( matrix )] instead.
  external dynamic multiplyVector3(Vector3 vector);

  /// This method has been removed completely.
  external dynamic multiplyVector3Array(dynamic a);

  /// Use [Matrix3#toArray .toArray()] instead.
  external List<num> flattenToArrayOffset(List<num> array, num offset);
}

/// A 4x4 Matrix.
/// @example
/// // Simple rig for rotating around 3 axes
/// var m = new THREE.Matrix4();
/// var m1 = new THREE.Matrix4();
/// var m2 = new THREE.Matrix4();
/// var m3 = new THREE.Matrix4();
/// var alpha = 0;
/// var beta = Math.PI;
/// var gamma = Math.PI/2;
/// m1.makeRotationX( alpha );
/// m2.makeRotationY( beta );
/// m3.makeRotationZ( gamma );
/// m.multiplyMatrices( m1, m2 );
/// m.multiply( m3 );
@JS()
class Matrix4 implements Matrix {
  // @Ignore
  Matrix4.fakeConstructor$();
  external factory Matrix4();

  /// Float32Array with matrix values.
  external Float32List get elements;
  external set elements(Float32List v);

  /// Sets all fields of this matrix.
  external Matrix4 JS$set(
      num n11,
      num n12,
      num n13,
      num n14,
      num n21,
      num n22,
      num n23,
      num n24,
      num n31,
      num n32,
      num n33,
      num n34,
      num n41,
      num n42,
      num n43,
      num n44);

  /// Resets this matrix to identity.
  external Matrix4 identity();
  external Matrix4 clone();
  external Matrix4 copy(Matrix4 m);
  external Matrix4 copyPosition(Matrix4 m);
  external Matrix4 extractBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis);
  external Matrix4 makeBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis);

  /// Copies the rotation component of the supplied matrix m into this matrix rotation component.
  external Matrix4 extractRotation(Matrix4 m);
  external Matrix4 makeRotationFromEuler(Euler euler);
  external Matrix4 makeRotationFromQuaternion(Quaternion q);

  /// Constructs a rotation matrix, looking from eye towards center with defined up vector.
  external Matrix4 lookAt(Vector3 eye, Vector3 target, Vector3 up);

  /// Multiplies this matrix by m.
  external Matrix4 multiply(Matrix4 m);
  external Matrix4 premultiply(Matrix4 m);

  /// Sets this matrix to a x b.
  external Matrix4 multiplyMatrices(Matrix4 a, Matrix4 b);

  /// Sets this matrix to a x b and stores the result into the flat array r.
  /// r can be either a regular Array or a TypedArray.
  /// This method has been removed completely.
  external Matrix4 multiplyToArray(Matrix4 a, Matrix4 b, List<num> r);

  /// Multiplies this matrix by s.
  external Matrix4 multiplyScalar(num s);

  /// Use [Matrix4#applyToBufferAttribute matrix4.applyToBufferAttribute( attribute )] instead.
  external BufferAttribute applyToBuffer(BufferAttribute buffer,
      [num offset, num length]);
  external BufferAttribute applyToBufferAttribute(BufferAttribute attribute);

  /// Computes determinant of this matrix.
  /// Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
  external num determinant();

  /// Transposes this matrix.
  external Matrix4 transpose();

  /// Sets the position component for this matrix from vector v.
  external Matrix4 setPosition(Vector3 v);

  /// Sets this matrix to the inverse of matrix m.
  /// Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm.
  external Matrix4 getInverse(Matrix4 m, [bool throwOnDegeneratee]);

  /// Multiplies the columns of this matrix by vector v.
  external Matrix4 scale(Vector3 v);
  external num getMaxScaleOnAxis();

  /// Sets this matrix as translation transform.
  external Matrix4 makeTranslation(num x, num y, num z);

  /// Sets this matrix as rotation transform around x axis by theta radians.
  external Matrix4 makeRotationX(num theta);

  /// Sets this matrix as rotation transform around y axis by theta radians.
  external Matrix4 makeRotationY(num theta);

  /// Sets this matrix as rotation transform around z axis by theta radians.
  external Matrix4 makeRotationZ(num theta);

  /// Sets this matrix as rotation transform around axis by angle radians.
  /// Based on http://www.gamedev.net/reference/articles/article1199.asp.
  external Matrix4 makeRotationAxis(Vector3 axis, num angle);

  /// Sets this matrix as scale transform.
  external Matrix4 makeScale(num x, num y, num z);

  /// Sets this matrix to the transformation composed of translation, rotation and scale.
  external Matrix4 compose(
      Vector3 translation, Quaternion rotation, Vector3 scale);

  /// Decomposes this matrix into the translation, rotation and scale components.
  /// If parameters are not passed, new instances will be created.
  external List<Object> decompose(
      [Vector3 translation, Quaternion rotation, Vector3 scale]);

  /// Creates a frustum matrix.
  /*external Matrix4 makePerspective(
    num left, num right, num bottom, num top, num near, num far);*/
  /// Creates a perspective projection matrix.
  /*external Matrix4 makePerspective(num fov, num aspect, num near, num far);*/
  external Matrix4 makePerspective(
      num left_fov, num right_aspect, num bottom_near, num top_far,
      [num near, num far]);

  /// Creates an orthographic projection matrix.
  external Matrix4 makeOrthographic(
      num left, num right, num top, num bottom, num near, num far);
  external bool equals(Matrix4 matrix);
  external Matrix4 fromArray(List<num> array, [num offset]);
  external List<num> toArray();

  /// Use [Matrix4#copyPosition .copyPosition()] instead.
  external Matrix4 extractPosition(Matrix4 m);

  /// Use [Matrix4#makeRotationFromQuaternion .makeRotationFromQuaternion()] instead.
  external Matrix4 setRotationFromQuaternion(Quaternion q);

  /// Use [Vector3#applyMatrix4 vector.applyMatrix4( matrix )] instead.
  external dynamic multiplyVector3(dynamic v);

  /// Use [Vector4#applyMatrix4 vector.applyMatrix4( matrix )] instead.
  external dynamic multiplyVector4(dynamic v);

  /// This method has been removed completely.
  external List<num> multiplyVector3Array(List<num> array);

  /// Use [Vector3#transformDirection Vector3.transformDirection( matrix )] instead.
  external void rotateAxis(dynamic v);

  /// Use [Vector3#applyMatrix4 vector.applyMatrix4( matrix )] instead.
  external void crossVector(dynamic v);

  /// Use [Matrix4#toArray .toArray()] instead.
  external List<num> flattenToArrayOffset(List<num> array, num offset);
}

@JS()
class Plane {
  // @Ignore
  Plane.fakeConstructor$();
  external factory Plane([Vector3 normal, num constant]);
  external Vector3 get normal;
  external set normal(Vector3 v);
  external num get constant;
  external set constant(num v);
  external Plane JS$set(Vector3 normal, num constant);
  external Plane setComponents(num x, num y, num z, num w);
  external Plane setFromNormalAndCoplanarPoint(Vector3 normal, Vector3 point);
  external Plane setFromCoplanarPoints(Vector3 a, Vector3 b, Vector3 c);
  external Plane clone();
  external Plane copy(Plane plane);
  external Plane normalize();
  external Plane negate();
  external num distanceToPoint(Vector3 point);
  external num distanceToSphere(Sphere sphere);
  external Vector3 projectPoint(Vector3 point, Vector3 target);
  external Vector3 orthoPoint(Vector3 point, Vector3 target);
  external Vector3 intersectLine(Line3 line, Vector3 target);
  external bool intersectsLine(Line3 line);
  external bool intersectsBox(Box3 box);
  external Vector3 coplanarPoint(Vector3 target);
  external Plane applyMatrix4(Matrix4 matrix, [Matrix3 optionalNormalMatrix]);
  external Plane translate(Vector3 offset);
  external bool equals(Plane plane);

  /// Use [Plane#intersectsLine .intersectsLine()] instead.
  external dynamic isIntersectionLine(dynamic l);
}

@JS()
class Spherical {
  // @Ignore
  Spherical.fakeConstructor$();
  external factory Spherical([num radius, num phi, num theta]);
  external num get radius;
  external set radius(num v);
  external num get phi;
  external set phi(num v);
  external num get theta;
  external set theta(num v);
  external Spherical JS$set(num radius, num phi, num theta);
  external Spherical clone();
  external Spherical copy(Spherical other);
  external void makeSafe();
  external Spherical setFromVector3(Vector3 vec3);
}

@JS()
class Cylindrical {
  // @Ignore
  Cylindrical.fakeConstructor$();
  external factory Cylindrical([num radius, num theta, num y]);
  external num get radius;
  external set radius(num v);
  external num get theta;
  external set theta(num v);
  external num get y;
  external set y(num v);
  external Cylindrical clone();
  external Cylindrical copy(Cylindrical other);
  external Cylindrical JS$set(num radius, num theta, num y);
  external Cylindrical setFromVector3(Vector3 vec3);
}

/// Implementation of a quaternion. This is used for rotating things without incurring in the dreaded gimbal lock issue, amongst other advantages.
/// @example
/// var quaternion = new THREE.Quaternion();
/// quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
/// var vector = new THREE.Vector3( 1, 0, 0 );
/// vector.applyQuaternion( quaternion );
@JS()
class Quaternion {
  // @Ignore
  Quaternion.fakeConstructor$();
  external factory Quaternion([num x, num y, num z, num w]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get w;
  external set w(num v);

  /// Sets values of this quaternion.
  external Quaternion JS$set(num x, num y, num z, num w);

  /// Clones this quaternion.
  external Quaternion clone();

  /// Copies values of q to this quaternion.
  external Quaternion copy(Quaternion q);

  /// Sets this quaternion from rotation specified by Euler angles.
  external Quaternion setFromEuler(Euler euler, [bool update]);

  /// Sets this quaternion from rotation specified by axis and angle.
  /// Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
  /// Axis have to be normalized, angle is in radians.
  external Quaternion setFromAxisAngle(Vector3 axis, num angle);

  /// Sets this quaternion from rotation component of m. Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
  external Quaternion setFromRotationMatrix(Matrix4 m);
  external Quaternion setFromUnitVectors(Vector3 vFrom, Vector3 vTo);

  /// Inverts this quaternion.
  external Quaternion inverse();
  external Quaternion conjugate();
  external num dot(Quaternion v);
  external num lengthSq();

  /// Computes length of this quaternion.
  external num length();

  /// Normalizes this quaternion.
  external Quaternion normalize();

  /// Multiplies this quaternion by b.
  external Quaternion multiply(Quaternion q);
  external Quaternion premultiply(Quaternion q);

  /// Sets this quaternion to a x b
  /// Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/code/index.htm.
  external Quaternion multiplyQuaternions(Quaternion a, Quaternion b);
  /*external Quaternion slerp(Quaternion qb, num t);*/
  /// Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/.
  /*external static Quaternion slerp(Quaternion qa, Quaternion qb, Quaternion qm, num t);*/
  external Quaternion slerp(Quaternion qb_qa, dynamic /*num|Quaternion*/ t_qb,
      [Quaternion qm, num t]);
  external bool equals(Quaternion v);
  /*external Quaternion fromArray(List<num> n);*/
  /*external Quaternion fromArray(List<num> xyzw, [num offset]);*/
  external Quaternion fromArray(List<num> n_xyzw, [num offset]);
  /*external List<num> toArray();*/
  /*external List<num> toArray([List<num> xyzw, num offset]);*/
  external List<num> toArray([List<num> xyzw, num offset]);
  external Quaternion onChange(Function callback);
  external Function get onChangeCallback;
  external set onChangeCallback(Function v);
  external static Quaternion slerpFlat(List<num> dst, num dstOffset,
      List<num> src0, num srcOffset, List<num> src1, num stcOffset1, num t);

  /// Use [Vector#applyQuaternion vector.applyQuaternion( quaternion )] instead.
  external dynamic multiplyVector3(dynamic v);
}

@JS()
class Ray {
  // @Ignore
  Ray.fakeConstructor$();
  external factory Ray([Vector3 origin, Vector3 direction]);
  external Vector3 get origin;
  external set origin(Vector3 v);
  external Vector3 get direction;
  external set direction(Vector3 v);
  external Ray JS$set(Vector3 origin, Vector3 direction);
  external Ray clone();
  external Ray copy(Ray ray);
  external Vector3 at(num t, Vector3 target);
  external Vector3 lookAt(Vector3 v);
  external Ray recast(num t);
  external Vector3 closestPointToPoint(Vector3 point, Vector3 target);
  external num distanceToPoint(Vector3 point);
  external num distanceSqToPoint(Vector3 point);
  external num distanceSqToSegment(Vector3 v0, Vector3 v1,
      [Vector3 optionalPointOnRay, Vector3 optionalPointOnSegment]);
  external Vector3 intersectSphere(Sphere sphere, Vector3 target);
  external bool intersectsSphere(Sphere sphere);
  external num distanceToPlane(Plane plane);
  external Vector3 intersectPlane(Plane plane, Vector3 target);
  external bool intersectsPlane(Plane plane);
  external Vector3 intersectBox(Box3 box, Vector3 target);
  external bool intersectsBox(Box3 box);
  external Vector3 intersectTriangle(
      Vector3 a, Vector3 b, Vector3 c, bool backfaceCulling, Vector3 target);
  external Ray applyMatrix4(Matrix4 matrix4);
  external bool equals(Ray ray);

  /// Use [Ray#intersectsBox .intersectsBox()] instead.
  external dynamic isIntersectionBox(dynamic b);

  /// Use [Ray#intersectsPlane .intersectsPlane()] instead.
  external dynamic isIntersectionPlane(dynamic p);

  /// Use [Ray#intersectsSphere .intersectsSphere()] instead.
  external dynamic isIntersectionSphere(dynamic s);
}

@JS()
class Sphere {
  // @Ignore
  Sphere.fakeConstructor$();
  external factory Sphere([Vector3 center, num radius]);
  external Vector3 get center;
  external set center(Vector3 v);
  external num get radius;
  external set radius(num v);
  external Sphere JS$set(Vector3 center, num radius);
  external Sphere setFromPoints(List<Vector3> points, [Vector3 optionalCenter]);
  external Sphere clone();
  external Sphere copy(Sphere sphere);
  external bool empty();
  external bool containsPoint(Vector3 point);
  external num distanceToPoint(Vector3 point);
  external bool intersectsSphere(Sphere sphere);
  external bool intersectsBox(Box3 box);
  external bool intersectsPlane(Plane plane);
  external Vector3 clampPoint(Vector3 point, Vector3 target);
  external Box3 getBoundingBox(Box3 target);
  external Sphere applyMatrix4(Matrix4 matrix);
  external Sphere translate(Vector3 offset);
  external bool equals(Sphere sphere);
}

@anonymous
@JS()
abstract class SplineControlPoint {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external factory SplineControlPoint({num x, num y, num z});
}

@JS()
class Triangle {
  // @Ignore
  Triangle.fakeConstructor$();
  external factory Triangle([Vector3 a, Vector3 b, Vector3 c]);
  external Vector3 get a;
  external set a(Vector3 v);
  external Vector3 get b;
  external set b(Vector3 v);
  external Vector3 get c;
  external set c(Vector3 v);
  external Triangle JS$set(Vector3 a, Vector3 b, Vector3 c);
  external Triangle setFromPointsAndIndices(
      List<Vector3> points, num i0, num i1, num i2);
  external Triangle clone();
  external Triangle copy(Triangle triangle);
  external num getArea();
  external Vector3 getMidpoint(Vector3 target);
  /*external Vector3 getNormal(Vector3 target);*/
  /*external static Vector3 getNormal(Vector3 a, Vector3 b, Vector3 c, Vector3 target);*/
  external Vector3 getNormal(Vector3 target_a,
      [Vector3 b, Vector3 c, Vector3 target]);
  external Plane getPlane(Vector3 target);
  /*external Vector3 getBarycoord(Vector3 point, Vector3 target);*/
  /*external static Vector3 getBarycoord(Vector3 point, Vector3 a, Vector3 b, Vector3 c, Vector3 target);*/
  external Vector3 getBarycoord(Vector3 point, Vector3 target_a,
      [Vector3 b, Vector3 c, Vector3 target]);
  /*external bool containsPoint(Vector3 point);*/
  /*external static bool containsPoint(Vector3 point, Vector3 a, Vector3 b, Vector3 c);*/
  external bool containsPoint(Vector3 point, [Vector3 a, Vector3 b, Vector3 c]);
  external Vector3 closestPointToPoint(Vector3 point, Vector3 target);
  external bool equals(Triangle triangle);
}

/// ( interface Vector&lt;T&gt; )
/// Abstract interface of Vector2, Vector3 and Vector4.
/// Currently the members of Vector is NOT type safe because it accepts different typed vectors.
/// Those definitions will be changed when TypeScript innovates Generics to be type safe.
/// @example
/// var v:THREE.Vector = new THREE.Vector3();
/// v.addVectors(new THREE.Vector2(0, 1), new THREE.Vector2(2, 3));    // invalid but compiled successfully
@anonymous
@JS()
abstract class Vector {
  external void setComponent(num index, num value);
  external num getComponent(num index);

  /// copy(v:T):T;
  external Vector copy(Vector v);

  /// add(v:T):T;
  external Vector add(Vector v);

  /// addVectors(a:T, b:T):T;
  external Vector addVectors(Vector a, Vector b);

  /// sub(v:T):T;
  external Vector sub(Vector v);

  /// subVectors(a:T, b:T):T;
  external Vector subVectors(Vector a, Vector b);

  /// multiplyScalar(s:number):T;
  external Vector multiplyScalar(num s);

  /// divideScalar(s:number):T;
  external Vector divideScalar(num s);

  /// negate():T;
  external Vector negate();

  /// dot(v:T):T;
  external num dot(Vector v);

  /// lengthSq():number;
  external num lengthSq();

  /// length():number;
  external num length();

  /// normalize():T;
  external Vector normalize();

  /// NOTE: Vector4 doesn't have the property.
  /// distanceTo(v:T):number;
  external num distanceTo(Vector v);

  /// NOTE: Vector4 doesn't have the property.
  /// distanceToSquared(v:T):number;
  external num distanceToSquared(Vector v);

  /// setLength(l:number):T;
  external Vector setLength(num l);

  /// lerp(v:T, alpha:number):T;
  external Vector lerp(Vector v, num alpha);

  /// equals(v:T):boolean;
  external bool equals(Vector v);

  /// clone():T;
  external Vector clone();
}

/// 2D vector.
/// ( class Vector2 implements Vector<Vector2> )
@JS()
class Vector2 implements Vector {
  // @Ignore
  Vector2.fakeConstructor$();
  external factory Vector2([num x, num y]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);

  /// Sets value of this vector.
  external Vector2 JS$set(num x, num y);

  /// Sets the x and y values of this vector both equal to scalar.
  external Vector2 setScalar(num scalar);

  /// Sets X component of this vector.
  external Vector2 setX(num x);

  /// Sets Y component of this vector.
  external Vector2 setY(num y);

  /// Sets a component of this vector.
  external void setComponent(num index, num value);

  /// Gets a component of this vector.
  external num getComponent(num index);

  /// Clones this vector.
  external Vector2 clone();

  /// Copies value of v to this vector.
  external Vector2 copy(Vector2 v);

  /// Adds v to this vector.
  external Vector2 add(Vector2 v);

  /// Adds the scalar value s to this vector's x and y values.
  external Vector2 addScalar(num s);

  /// Sets this vector to a + b.
  external Vector2 addVectors(Vector2 a, Vector2 b);

  /// Adds the multiple of v and s to this vector.
  external Vector2 addScaledVector(Vector2 v, num s);

  /// Subtracts v from this vector.
  external Vector2 sub(Vector2 v);

  /// Subtracts s from this vector's x and y components.
  external Vector2 subScalar(num s);

  /// Sets this vector to a - b.
  external Vector2 subVectors(Vector2 a, Vector2 b);

  /// Multiplies this vector by v.
  external Vector2 multiply(Vector2 v);

  /// Multiplies this vector by scalar s.
  external Vector2 multiplyScalar(num scalar);

  /// Divides this vector by v.
  external Vector2 divide(Vector2 v);

  /// Divides this vector by scalar s.
  /// Set vector to ( 0, 0 ) if s == 0.
  external Vector2 divideScalar(num s);

  /// Multiplies this vector (with an implicit 1 as the 3rd component) by m.
  external Vector2 applyMatrix3(Matrix3 m);

  /// If this vector's x or y value is greater than v's x or y value, replace that value with the corresponding min value.
  external Vector2 min(Vector2 v);

  /// If this vector's x or y value is less than v's x or y value, replace that value with the corresponding max value.
  external Vector2 max(Vector2 v);

  /// If this vector's x or y value is greater than the max vector's x or y value, it is replaced by the corresponding value.
  /// If this vector's x or y value is less than the min vector's x or y value, it is replaced by the corresponding value.
  external Vector2 clamp(Vector2 min, Vector2 max);

  /// If this vector's x or y values are greater than the max value, they are replaced by the max value.
  /// If this vector's x or y values are less than the min value, they are replaced by the min value.
  external Vector2 clampScalar(num min, num max);

  /// If this vector's length is greater than the max value, it is replaced by the max value.
  /// If this vector's length is less than the min value, it is replaced by the min value.
  external Vector2 clampLength(num min, num max);

  /// The components of the vector are rounded down to the nearest integer value.
  external Vector2 floor();

  /// The x and y components of the vector are rounded up to the nearest integer value.
  external Vector2 ceil();

  /// The components of the vector are rounded to the nearest integer value.
  external Vector2 round();

  /// The components of the vector are rounded towards zero (up if negative, down if positive) to an integer value.
  external Vector2 roundToZero();

  /// Inverts this vector.
  external Vector2 negate();

  /// Computes dot product of this vector and v.
  external num dot(Vector2 v);

  /// Computes squared length of this vector.
  external num lengthSq();

  /// Computes length of this vector.
  external num length();

  /// Use [Vector2#manhattanLength .manhattanLength()] instead.
  external num lengthManhattan();

  /// Normalizes this vector.
  external Vector2 normalize();

  /// computes the angle in radians with respect to the positive x-axis
  external num angle();

  /// Computes distance of this vector to v.
  external num distanceTo(Vector2 v);

  /// Computes squared distance of this vector to v.
  external num distanceToSquared(Vector2 v);

  /// Use [Vector2#manhattanDistanceTo .manhattanDistanceTo()] instead.
  external num distanceToManhattan(Vector2 v);

  /// Normalizes this vector and multiplies it by l.
  external Vector2 setLength(num length);

  /// Linearly interpolates between this vector and v, where alpha is the distance along the line - alpha = 0 will be this vector, and alpha = 1 will be v.
  external Vector2 lerp(Vector2 v, num alpha);

  /// Sets this vector to be the vector linearly interpolated between v1 and v2 where alpha is the distance along the line connecting the two vectors - alpha = 0 will be v1, and alpha = 1 will be v2.
  external Vector2 lerpVectors(Vector2 v1, Vector2 v2, num alpha);

  /// Checks for strict equality of this vector and v.
  external bool equals(Vector2 v);

  /// Sets this vector's x value to be array[offset] and y value to be array[offset + 1].
  external Vector2 fromArray(List<num> array, [num offset]);

  /// Returns an array [x, y], or copies x and y into the provided array.
  external List<num> toArray([List<num> array, num offset]);

  /// Sets this vector's x and y values from the attribute.
  external Vector2 fromBufferAttribute(BufferAttribute attribute, num index);

  /// Rotates the vector around center by angle radians.
  external Vector2 rotateAround(Vector2 center, num angle);

  /// Computes the Manhattan length of this vector.
  /// @see [http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry]
  external num manhattanLength();

  /// Computes the Manhattan length (distance) from this vector to the given vector v
  /// @see [http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry]
  external num manhattanDistanceTo(Vector2 v);
}

/// 3D vector.
/// @example
/// var a = new THREE.Vector3( 1, 0, 0 );
/// var b = new THREE.Vector3( 0, 1, 0 );
/// var c = new THREE.Vector3();
/// c.crossVectors( a, b );
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Vector3.js">src/math/Vector3.js</a>
/// ( class Vector3 implements Vector<Vector3> )
@JS()
class Vector3 implements Vector {
  // @Ignore
  Vector3.fakeConstructor$();
  external factory Vector3([num x, num y, num z]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);

  /// Sets value of this vector.
  external Vector3 JS$set(num x, num y, num z);

  /// Sets all values of this vector.
  external Vector3 setScalar(num scalar);

  /// Sets x value of this vector.
  external Vector3 setX(num x);

  /// Sets y value of this vector.
  external Vector3 setY(num y);

  /// Sets z value of this vector.
  external Vector3 setZ(num z);
  external void setComponent(num index, num value);
  external num getComponent(num index);

  /// Clones this vector.
  external Vector3 clone();

  /// Copies value of v to this vector.
  external Vector3 copy(Vector3 v);

  /// Adds v to this vector.
  external Vector3 add(Vector3 a);
  external Vector3 addScalar(num s);
  external Vector3 addScaledVector(Vector3 v, num s);

  /// Sets this vector to a + b.
  external Vector3 addVectors(Vector3 a, Vector3 b);

  /// Subtracts v from this vector.
  external Vector3 sub(Vector3 a);
  external Vector3 subScalar(num s);

  /// Sets this vector to a - b.
  external Vector3 subVectors(Vector3 a, Vector3 b);
  external Vector3 multiply(Vector3 v);

  /// Multiplies this vector by scalar s.
  external Vector3 multiplyScalar(num s);
  external Vector3 multiplyVectors(Vector3 a, Vector3 b);
  external Vector3 applyEuler(Euler euler);
  external Vector3 applyAxisAngle(Vector3 axis, num angle);
  external Vector3 applyMatrix3(Matrix3 m);
  external Vector3 applyMatrix4(Matrix4 m);
  external Vector3 applyQuaternion(Quaternion q);
  external Vector3 project(Camera camrea);
  external Vector3 unproject(Camera camera);
  external Vector3 transformDirection(Matrix4 m);
  external Vector3 divide(Vector3 v);

  /// Divides this vector by scalar s.
  /// Set vector to ( 0, 0, 0 ) if s == 0.
  external Vector3 divideScalar(num s);
  external Vector3 min(Vector3 v);
  external Vector3 max(Vector3 v);
  external Vector3 clamp(Vector3 min, Vector3 max);
  external Vector3 clampScalar(num min, num max);
  external Vector3 clampLength(num min, num max);
  external Vector3 floor();
  external Vector3 ceil();
  external Vector3 round();
  external Vector3 roundToZero();

  /// Inverts this vector.
  external Vector3 negate();

  /// Computes dot product of this vector and v.
  external num dot(Vector3 v);

  /// Computes squared length of this vector.
  external num lengthSq();

  /// Computes length of this vector.
  external num length();

  /// Computes Manhattan length of this vector.
  /// http://en.wikipedia.org/wiki/Taxicab_geometry
  /// Use [Vector3#manhattanLength .manhattanLength()] instead.
  external num lengthManhattan();

  /// Computes the Manhattan length of this vector.
  /// @see [http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry]
  external num manhattanLength();

  /// Computes the Manhattan length (distance) from this vector to the given vector v
  /// @see [http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry]
  external num manhattanDistanceTo(Vector3 v);

  /// Normalizes this vector.
  external Vector3 normalize();

  /// Normalizes this vector and multiplies it by l.
  external Vector3 setLength(num l);
  external Vector3 lerp(Vector3 v, num alpha);
  external Vector3 lerpVectors(Vector3 v1, Vector3 v2, num alpha);

  /// Sets this vector to cross product of itself and v.
  external Vector3 cross(Vector3 a);

  /// Sets this vector to cross product of a and b.
  external Vector3 crossVectors(Vector3 a, Vector3 b);
  external Vector3 projectOnVector(Vector3 v);
  external Vector3 projectOnPlane(Vector3 planeNormal);
  external Vector3 reflect(Vector3 vector);
  external num angleTo(Vector3 v);

  /// Computes distance of this vector to v.
  external num distanceTo(Vector3 v);

  /// Computes squared distance of this vector to v.
  external num distanceToSquared(Vector3 v);

  /// Use [Vector3#manhattanDistanceTo .manhattanDistanceTo()] instead.
  external num distanceToManhattan(Vector3 v);
  external Vector3 setFromSpherical(Spherical s);
  external Vector3 setFromMatrixPosition(Matrix4 m);
  external Vector3 setFromMatrixScale(Matrix4 m);
  external Vector3 setFromMatrixColumn(Matrix4 matrix, num index);

  /// Checks for strict equality of this vector and v.
  external bool equals(Vector3 v);
  external Vector3 fromArray(List<num> xyz, [num offset]);
  external List<num> toArray([List<num> xyz, num offset]);
  external Vector3 fromBufferAttribute(BufferAttribute attribute, num index,
      [num offset]);

  /// Use [Vector3#setFromMatrixPosition .setFromMatrixPosition()] instead.
  external Vector3 getPositionFromMatrix(Matrix4 m);

  /// Use [Vector3#setFromMatrixScale .setFromMatrixScale()] instead.
  external Vector3 getScaleFromMatrix(Matrix4 m);

  /// Use [Vector3#setFromMatrixColumn .setFromMatrixColumn()] instead.
  external Vector3 getColumnFromMatrix(num index, Matrix4 matrix);
}

/// use [Vector3 THREE.Vector3] instead.
@JS()
class Vertex extends Vector3 {
  // @Ignore
  Vertex.fakeConstructor$() : super.fakeConstructor$();
}

/// 4D vector.
/// ( class Vector4 implements Vector<Vector4> )
@JS()
class Vector4 implements Vector {
  // @Ignore
  Vector4.fakeConstructor$();
  external factory Vector4([num x, num y, num z, num w]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get w;
  external set w(num v);

  /// Sets value of this vector.
  external Vector4 JS$set(num x, num y, num z, num w);

  /// Sets all values of this vector.
  external Vector4 setScalar(num scalar);

  /// Sets X component of this vector.
  external Vector4 setX(num x);

  /// Sets Y component of this vector.
  external Vector4 setY(num y);

  /// Sets Z component of this vector.
  external Vector4 setZ(num z);

  /// Sets w component of this vector.
  external Vector4 setW(num w);
  external void setComponent(num index, num value);
  external num getComponent(num index);

  /// Clones this vector.
  external Vector4 clone();

  /// Copies value of v to this vector.
  external Vector4 copy(Vector4 v);

  /// Adds v to this vector.
  external Vector4 add(Vector4 v);
  external Vector4 addScalar(num s);

  /// Sets this vector to a + b.
  external Vector4 addVectors(Vector4 a, Vector4 b);
  external Vector4 addScaledVector(Vector4 v, num s);

  /// Subtracts v from this vector.
  external Vector4 sub(Vector4 v);
  external Vector4 subScalar(num s);

  /// Sets this vector to a - b.
  external Vector4 subVectors(Vector4 a, Vector4 b);

  /// Multiplies this vector by scalar s.
  external Vector4 multiplyScalar(num s);
  external Vector4 applyMatrix4(Matrix4 m);

  /// Divides this vector by scalar s.
  /// Set vector to ( 0, 0, 0 ) if s == 0.
  external Vector4 divideScalar(num s);

  /// http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm
  external Vector4 setAxisAngleFromQuaternion(Quaternion q);

  /// http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm
  external Vector4 setAxisAngleFromRotationMatrix(Matrix3 m);
  external Vector4 min(Vector4 v);
  external Vector4 max(Vector4 v);
  external Vector4 clamp(Vector4 min, Vector4 max);
  external Vector4 clampScalar(num min, num max);
  external Vector4 floor();
  external Vector4 ceil();
  external Vector4 round();
  external Vector4 roundToZero();

  /// Inverts this vector.
  external Vector4 negate();

  /// Computes dot product of this vector and v.
  external num dot(Vector4 v);

  /// Computes squared length of this vector.
  external num lengthSq();

  /// Computes length of this vector.
  external num length();

  /// Use [Vector4#manhattanLength .manhattanLength()] instead.
  external num lengthManhattan();

  /// Computes the Manhattan length of this vector.
  /// @see [http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry]
  external num manhattanLength();

  /// Normalizes this vector.
  external Vector4 normalize();

  /// Normalizes this vector and multiplies it by l.
  external Vector4 setLength(num length);

  /// Linearly interpolate between this vector and v with alpha factor.
  external Vector4 lerp(Vector4 v, num alpha);
  external Vector4 lerpVectors(Vector4 v1, Vector4 v2, num alpha);

  /// Checks for strict equality of this vector and v.
  external bool equals(Vector4 v);
  external Vector4 fromArray(List<num> xyzw, [num offset]);
  external List<num> toArray([List<num> xyzw, num offset]);
  external Vector4 fromBufferAttribute(BufferAttribute attribute, num index,
      [num offset]);
}

@JS()
abstract class Interpolant {
  // @Ignore
  Interpolant.fakeConstructor$();
  external factory Interpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic get parameterPositions;
  external set parameterPositions(dynamic v);
  external dynamic get samplesValues;
  external set samplesValues(dynamic v);
  external num get valueSize;
  external set valueSize(num v);
  external dynamic get resultBuffer;
  external set resultBuffer(dynamic v);
  external dynamic evaluate(num time);
}

@JS()
class CubicInterpolant extends Interpolant {
  // @Ignore
  CubicInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory CubicInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

@JS()
class DiscreteInterpolant extends Interpolant {
  // @Ignore
  DiscreteInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory DiscreteInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

@JS()
class LinearInterpolant extends Interpolant {
  // @Ignore
  LinearInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory LinearInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

@JS()
class QuaternionLinearInterpolant extends Interpolant {
  // @Ignore
  QuaternionLinearInterpolant.fakeConstructor$() : super.fakeConstructor$();
  external factory QuaternionLinearInterpolant(
      dynamic parameterPositions, dynamic samplesValues, num sampleSize,
      [dynamic resultBuffer]);
  external dynamic interpolate_(num i1, num t0, num t, num t1);
}

/// Objects //////////////////////////////////////////////////////////////////////////////////
@JS()
class Bone extends Object3D {
  // @Ignore
  Bone.fakeConstructor$() : super.fakeConstructor$();
  external factory Bone();
}

@JS()
class Group extends Object3D {
  // @Ignore
  Group.fakeConstructor$() : super.fakeConstructor$();
  external factory Group();
}

@JS()
class LOD extends Object3D {
  // @Ignore
  LOD.fakeConstructor$() : super.fakeConstructor$();
  external factory LOD();
  external List<dynamic> get levels;
  external set levels(List<dynamic> v);
  external void addLevel(Object3D object, [num distance]);
  external Object3D getObjectForDistance(num distance);
  external void raycast(Raycaster raycaster, dynamic intersects);
  external void update(Camera camera);
  external dynamic toJSON(dynamic meta);

  /// Use [LOD#levels .levels] instead.
  external List<dynamic> get objects;
  external set objects(List<dynamic> v);
}

@anonymous
@JS()
abstract class LensFlareProperty {
  external Texture get texture;
  external set texture(Texture v);
  external num get size;
  external set size(num v);
  external num get distance;
  external set distance(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external num get scale;
  external set scale(num v);
  external num get rotation;
  external set rotation(num v);
  external num get opacity;
  external set opacity(num v);
  external Color get color;
  external set color(Color v);
  external num /*enum Blending*/ get blending;
  external set blending(num /*enum Blending*/ v);
  external factory LensFlareProperty(
      {Texture texture,
      num size,
      num distance,
      num x,
      num y,
      num z,
      num scale,
      num rotation,
      num opacity,
      Color color,
      num /*enum Blending*/ blending});
}

@JS()
class LensFlare extends Object3D {
  // @Ignore
  LensFlare.fakeConstructor$() : super.fakeConstructor$();
  external factory LensFlare(
      [Texture texture,
      num size,
      num distance,
      num /*enum Blending*/ blending,
      Color color]);
  external List<LensFlareProperty> get lensFlares;
  external set lensFlares(List<LensFlareProperty> v);
  external Vector3 get positionScreen;
  external set positionScreen(Vector3 v);
  external VoidFunc1<LensFlare> get customUpdateCallback;
  external set customUpdateCallback(VoidFunc1<LensFlare> v);
  /*external void add(Object3D object);*/
  /*external void add(Texture texture, [num size, num distance, enum Blending blending, Color color]);*/
  external void add(dynamic /*Object3D|Texture*/ object_texture,
      [num size, num distance, num /*enum Blending*/ blending, Color color]);
  external void updateLensFlares();
}

@JS()
class Line extends Object3D {
  // @Ignore
  Line.fakeConstructor$() : super.fakeConstructor$();
  external factory Line(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*LineDashedMaterial|LineBasicMaterial|ShaderMaterial*/ material,
      num mode]);
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);
  external Material get material;
  external set material(Material v);
  external Line computeLineDistances();
  external void raycast(Raycaster raycaster, dynamic intersects);
}

@JS()
external num get LineStrip;
@JS()
external num get LinePieces;

@JS()
class LineSegments extends Line {
  // @Ignore
  LineSegments.fakeConstructor$() : super.fakeConstructor$();
  external factory LineSegments(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*LineDashedMaterial|LineBasicMaterial|ShaderMaterial|List<LineDashedMaterial|LineBasicMaterial|ShaderMaterial>*/ material,
      num mode]);
}

@JS()
class Mesh extends Object3D {
  // @Ignore
  Mesh.fakeConstructor$() : super.fakeConstructor$();
  external factory Mesh(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*Material|List<Material>*/ material]);
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);
  external dynamic /*Material|List<Material>*/ get material;
  external set material(dynamic /*Material|List<Material>*/ v);
  external num /*enum TrianglesDrawModes*/ get drawMode;
  external set drawMode(num /*enum TrianglesDrawModes*/ v);
  external List<num> get morphTargetInfluences;
  external set morphTargetInfluences(List<num> v);
  external dynamic /*JSMap of <String,num>*/ get morphTargetDictionary;
  external set morphTargetDictionary(dynamic /*JSMap of <String,num>*/ v);
  external bool get isMesh;
  external set isMesh(bool v);
  external void setDrawMode(num /*enum TrianglesDrawModes*/ drawMode);
  external void updateMorphTargets();
  external num getMorphTargetIndexByName(String name);
  external void raycast(Raycaster raycaster, dynamic intersects);
}

/// A class for displaying particles in the form of variable size points. For example, if using the WebGLRenderer, the particles are displayed using GL_POINTS.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/objects/ParticleSystem.js">src/objects/ParticleSystem.js</a>
@JS()
class Points extends Object3D {
  // @Ignore
  Points.fakeConstructor$() : super.fakeConstructor$();
  external factory Points(
      [dynamic /*Geometry|BufferGeometry*/ geometry, Material material]);

  /// An instance of Geometry or BufferGeometry, where each vertex designates the position of a particle in the system.
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);

  /// An instance of Material, defining the object's appearance. Default is a PointsMaterial with randomised colour.
  external Material get material;
  external set material(Material v);
  external void raycast(Raycaster raycaster, dynamic intersects);
}

/// Use [Points THREE.Points] instead.
@JS()
class PointCloud extends Points {
  // @Ignore
  PointCloud.fakeConstructor$() : super.fakeConstructor$();
}

/// Use [Points THREE.Points] instead.
@JS()
class ParticleSystem extends Points {
  // @Ignore
  ParticleSystem.fakeConstructor$() : super.fakeConstructor$();
}

@JS()
class Skeleton {
  // @Ignore
  Skeleton.fakeConstructor$();
  external factory Skeleton(List<Bone> bones, [List<Matrix4> boneInverses]);

  /// This property has been removed completely.
  external bool get useVertexTexture;
  external set useVertexTexture(bool v);
  external Matrix4 get identityMatrix;
  external set identityMatrix(Matrix4 v);
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external num get boneTextureWidth;
  external set boneTextureWidth(num v);
  external num get boneTextureHeight;
  external set boneTextureHeight(num v);
  external Float32List get boneMatrices;
  external set boneMatrices(Float32List v);
  external DataTexture get boneTexture;
  external set boneTexture(DataTexture v);
  external List<Matrix4> get boneInverses;
  external set boneInverses(List<Matrix4> v);
  external void calculateInverses(Bone bone);
  external void pose();
  external void update();
  external Skeleton clone();
}

@JS()
class SkinnedMesh extends Mesh {
  // @Ignore
  SkinnedMesh.fakeConstructor$() : super.fakeConstructor$();
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshBasicMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshDepthMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MultiMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshLambertMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshNormalMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, MeshPhongMaterial material, bool useVertexTexture]);*/
  /*external factory SkinnedMesh([Geometry|BufferGeometry geometry, ShaderMaterial material, bool useVertexTexture]);*/
  external factory SkinnedMesh(
      [dynamic /*Geometry|BufferGeometry*/ geometry,
      dynamic /*MeshBasicMaterial|MeshDepthMaterial|MultiMaterial|MeshLambertMaterial|MeshNormalMaterial|MeshPhongMaterial|ShaderMaterial*/ material,
      bool useVertexTexture]);
  external String get bindMode;
  external set bindMode(String v);
  external Matrix4 get bindMatrix;
  external set bindMatrix(Matrix4 v);
  external Matrix4 get bindMatrixInverse;
  external set bindMatrixInverse(Matrix4 v);
  external Skeleton get skeleton;
  external set skeleton(Skeleton v);
  external void bind(Skeleton skeleton, [Matrix4 bindMatrix]);
  external void pose();
  external void normalizeSkinWeights();
  external void updateMatrixWorld([bool force]);
}

@JS()
class Sprite extends Object3D {
  // @Ignore
  Sprite.fakeConstructor$() : super.fakeConstructor$();
  external factory Sprite([Material material]);
  external BufferGeometry get geometry;
  external set geometry(BufferGeometry v);
  external SpriteMaterial get material;
  external set material(SpriteMaterial v);
  external void raycast(Raycaster raycaster, dynamic intersects);
}

/// Use [Sprite Sprite] instead.
@JS()
class Particle extends Sprite {
  // @Ignore
  Particle.fakeConstructor$() : super.fakeConstructor$();
}

/// Renderers //////////////////////////////////////////////////////////////////////////////////
@anonymous
@JS()
abstract class Renderer {
  external CanvasElement get domElement;
  external set domElement(CanvasElement v);
  external void render(Scene scene, Camera camera);
  external void setSize(num width, num height, [bool updateStyle]);
}

@anonymous
@JS()
abstract class WebGLRendererParameters {
  /// A Canvas where the renderer draws its output.
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);

  /// shader precision. Can be "highp", "mediump" or "lowp".
  external String get precision;
  external set precision(String v);

  /// default is true.
  external bool get alpha;
  external set alpha(bool v);

  /// default is true.
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);

  /// default is false.
  external bool get antialias;
  external set antialias(bool v);

  /// default is true.
  external bool get stencil;
  external set stencil(bool v);

  /// default is false.
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);

  /// default is 0x000000.
  external num get clearColor;
  external set clearColor(num v);

  /// default is 0.
  external num get clearAlpha;
  external set clearAlpha(num v);
  external num get devicePixelRatio;
  external set devicePixelRatio(num v);

  /// default is false.
  external bool get logarithmicDepthBuffer;
  external set logarithmicDepthBuffer(bool v);
  external factory WebGLRendererParameters(
      {CanvasElement canvas,
      String precision,
      bool alpha,
      bool premultipliedAlpha,
      bool antialias,
      bool stencil,
      bool preserveDrawingBuffer,
      num clearColor,
      num clearAlpha,
      num devicePixelRatio,
      bool logarithmicDepthBuffer});
}

/// The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
/// This renderer has way better performance than CanvasRenderer.
/// @see <a href="https://github.com/mrdoob/three.js/blob/master/src/renderers/WebGLRenderer.js">src/renderers/WebGLRenderer.js</a>
@JS()
class WebGLRenderer implements Renderer {
  // @Ignore
  WebGLRenderer.fakeConstructor$();

  /// parameters is an optional object with properties defining the renderer's behaviour. The constructor also accepts no parameters at all. In all cases, it will assume sane defaults when parameters are missing.
  external factory WebGLRenderer([WebGLRendererParameters parameters]);

  /// A Canvas where the renderer draws its output.
  /// This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
  external CanvasElement get domElement;
  external set domElement(CanvasElement v);

  /// The HTML5 Canvas's 'webgl' context obtained from the canvas where the renderer will draw.
  external RenderingContext get context;
  external set context(RenderingContext v);

  /// Defines whether the renderer should automatically clear its output before rendering.
  external bool get autoClear;
  external set autoClear(bool v);

  /// If autoClear is true, defines whether the renderer should clear the color buffer. Default is true.
  external bool get autoClearColor;
  external set autoClearColor(bool v);

  /// If autoClear is true, defines whether the renderer should clear the depth buffer. Default is true.
  external bool get autoClearDepth;
  external set autoClearDepth(bool v);

  /// If autoClear is true, defines whether the renderer should clear the stencil buffer. Default is true.
  external bool get autoClearStencil;
  external set autoClearStencil(bool v);

  /// Defines whether the renderer should sort objects. Default is true.
  external bool get sortObjects;
  external set sortObjects(bool v);
  external List<dynamic> get clippingPlanes;
  external set clippingPlanes(List<dynamic> v);
  external bool get localClippingEnabled;
  external set localClippingEnabled(bool v);
  external WebGLExtensions get extensions;
  external set extensions(WebGLExtensions v);

  /// Default is false.
  external bool get gammaInput;
  external set gammaInput(bool v);

  /// Default is false.
  external bool get gammaOutput;
  external set gammaOutput(bool v);
  external bool get physicallyCorrectLights;
  external set physicallyCorrectLights(bool v);
  external num /*enum ToneMapping*/ get toneMapping;
  external set toneMapping(num /*enum ToneMapping*/ v);
  external num get toneMappingExposure;
  external set toneMappingExposure(num v);
  external num get toneMappingWhitePoint;
  external set toneMappingWhitePoint(num v);

  /// Default is false.
  external bool get shadowMapDebug;
  external set shadowMapDebug(bool v);

  /// Default is 8.
  external num get maxMorphTargets;
  external set maxMorphTargets(num v);

  /// Default is 4.
  external num get maxMorphNormals;
  external set maxMorphNormals(num v);
  external WebGLInfo get info;
  external set info(WebGLInfo v);
  external WebGLShadowMap get shadowMap;
  external set shadowMap(WebGLShadowMap v);
  external num get pixelRation;
  external set pixelRation(num v);
  external WebGLCapabilities get capabilities;
  external set capabilities(WebGLCapabilities v);
  external WebGLProperties get properties;
  external set properties(WebGLProperties v);
  external WebGLRenderLists get renderLists;
  external set renderLists(WebGLRenderLists v);
  external WebGLState get state;
  external set state(WebGLState v);
  external dynamic get allocTextureUnit;
  external set allocTextureUnit(dynamic v);
  external WebVRManager get vr;
  external set vr(WebVRManager v);

  /// Return the WebGL context.
  external RenderingContext getContext();
  external dynamic getContextAttributes();
  external void forceContextLoss();

  /// Use [WebGLCapabilities#getMaxAnisotropy .capabilities.getMaxAnisotropy()] instead.
  external num getMaxAnisotropy();

  /// Use [WebGLCapabilities#precision .capabilities.precision] instead.
  external String getPrecision();
  external num getPixelRatio();
  external void setPixelRatio(num value);
  external dynamic /*{ width: number; height: number; }*/ getSize();

  /// Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
  external void setSize(num width, num height, [bool updateStyle]);

  /// Sets the viewport to render from (x, y) to (x + width, y + height).
  external void setViewport([num x, num y, num width, num height]);

  /// Sets the scissor area from (x, y) to (x + width, y + height).
  external void setScissor(num x, num y, num width, num height);

  /// Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
  external void setScissorTest(bool enable);

  /// Returns a THREE.Color instance with the current clear color.
  external Color getClearColor();

  /// Sets the clear color, using color for the color and alpha for the opacity.
  /*external void setClearColor(Color color, [num alpha]);*/
  /*external void setClearColor(String color, [num alpha]);*/
  /*external void setClearColor(num color, [num alpha]);*/
  external void setClearColor(dynamic /*Color|String|num*/ color, [num alpha]);

  /// Returns a float with the current clear alpha. Ranges from 0 to 1.
  external num getClearAlpha();
  external void setClearAlpha(num alpha);

  /// Tells the renderer to clear its color, depth or stencil drawing buffer(s).
  /// Arguments default to true
  external void clear([bool color, bool depth, bool stencil]);
  external void clearColor();
  external void clearDepth();
  external void clearStencil();
  external void clearTarget(
      WebGLRenderTarget renderTarget, bool color, bool depth, bool stencil);

  /// Use [WebGLState#reset .state.reset()] instead.
  external void resetGLState();
  external void dispose();

  /// Tells the shadow map plugin to update using the passed scene and camera parameters.
  external void renderBufferImmediate(
      Object3D object, Object program, Material material);
  external void renderBufferDirect(Camera camera, Fog fog, Material material,
      dynamic geometryGroup, Object3D object);

  /// Render a scene using a camera.
  /// The render is done to the renderTarget (if specified) or to the canvas as usual.
  /// If forceClear is true, the canvas will be cleared before rendering, even if the renderer's autoClear property is false.
  external void render(Scene scene, Camera camera,
      [RenderTarget renderTarget, bool forceClear]);
  external void setTexture(Texture texture, num slot);
  external void setTexture2D(Texture texture, num slot);
  external void setTextureCube(Texture texture, num slot);
  external RenderTarget getRenderTarget();

  /// Use [WebGLRenderer#getRenderTarget .getRenderTarget()] instead.
  external RenderTarget getCurrentRenderTarget();
  external void setRenderTarget([RenderTarget renderTarget]);
  external void readRenderTargetPixels(RenderTarget renderTarget, num x, num y,
      num width, num height, dynamic buffer);
  external num get gammaFactor;
  external set gammaFactor(num v);

  /// Use [WebGLShadowMap#enabled .shadowMap.enabled] instead.
  external bool get shadowMapEnabled;
  external set shadowMapEnabled(bool v);

  /// Use [WebGLShadowMap#type .shadowMap.type] instead.
  external num /*enum ShadowMapType*/ get shadowMapType;
  external set shadowMapType(num /*enum ShadowMapType*/ v);

  /// Use [WebGLShadowMap#cullFace .shadowMap.cullFace] instead.
  external num /*enum CullFace*/ get shadowMapCullFace;
  external set shadowMapCullFace(num /*enum CullFace*/ v);

  /// Use [WebGLExtensions#get .extensions.get( 'OES_texture_float' )] instead.
  external dynamic supportsFloatTextures();

  /// Use [WebGLExtensions#get .extensions.get( 'OES_texture_half_float' )] instead.
  external dynamic supportsHalfFloatTextures();

  /// Use [WebGLExtensions#get .extensions.get( 'OES_standard_derivatives' )] instead.
  external dynamic supportsStandardDerivatives();

  /// Use [WebGLExtensions#get .extensions.get( 'WEBGL_compressed_texture_s3tc' )] instead.
  external dynamic supportsCompressedTextureS3TC();

  /// Use [WebGLExtensions#get .extensions.get( 'WEBGL_compressed_texture_pvrtc' )] instead.
  external dynamic supportsCompressedTexturePVRTC();

  /// Use [WebGLExtensions#get .extensions.get( 'EXT_blend_minmax' )] instead.
  external dynamic supportsBlendMinMax();

  /// Use [WebGLCapabilities#vertexTextures .capabilities.vertexTextures] instead.
  external dynamic supportsVertexTextures();

  /// Use [WebGLExtensions#get .extensions.get( 'ANGLE_instanced_arrays' )] instead.
  external dynamic supportsInstancedArrays();

  /// Use [WebGLRenderer#setScissorTest .setScissorTest()] instead.
  external dynamic enableScissorTest(dynamic boolean);
}

@anonymous
@JS()
abstract class RenderTarget {}

@anonymous
@JS()
abstract class RenderItem {
  external num get id;
  external set id(num v);
  external Object3D get object;
  external set object(Object3D v);
  external dynamic /*Geometry|BufferGeometry*/ get geometry;
  external set geometry(dynamic /*Geometry|BufferGeometry*/ v);
  external Material get material;
  external set material(Material v);
  external WebGLProgram get program;
  external set program(WebGLProgram v);
  external num get renderOrder;
  external set renderOrder(num v);
  external num get z;
  external set z(num v);
  external Group get group;
  external set group(Group v);
  external factory RenderItem(
      {num id,
      Object3D object,
      dynamic /*Geometry|BufferGeometry*/ geometry,
      Material material,
      WebGLProgram program,
      num renderOrder,
      num z,
      Group group});
}

@JS()
class WebGLRenderList {
  // @Ignore
  WebGLRenderList.fakeConstructor$();
  external List<RenderItem> get opaque;
  external set opaque(List<RenderItem> v);
  external List<dynamic> get transparent;
  external set transparent(List<dynamic> v);
  external void init();
  external void push(
      Object3D object,
      dynamic /*Geometry|BufferGeometry*/ geometry,
      Material material,
      num z,
      Group group);
  external void sort();
}

@JS()
class WebGLRenderLists {
  // @Ignore
  WebGLRenderLists.fakeConstructor$();
  external void dispose();

  /// returns {<String> : <WebGLRenderList>}
  external WebGLRenderList JS$get(Scene scene, Camera camera);
}

@anonymous
@JS()
abstract class WebGLRenderTargetOptions {
  external num /*enum Wrapping*/ get wrapS;
  external set wrapS(num /*enum Wrapping*/ v);
  external num /*enum Wrapping*/ get wrapT;
  external set wrapT(num /*enum Wrapping*/ v);
  external num /*enum TextureFilter*/ get magFilter;
  external set magFilter(num /*enum TextureFilter*/ v);
  external num /*enum TextureFilter*/ get minFilter;
  external set minFilter(num /*enum TextureFilter*/ v);
  external num get format;
  external set format(num v);
  external num /*enum TextureDataType*/ get type;
  external set type(num /*enum TextureDataType*/ v);
  external num get anisotropy;
  external set anisotropy(num v);
  external bool get depthBuffer;
  external set depthBuffer(bool v);
  external bool get stencilBuffer;
  external set stencilBuffer(bool v);
  external factory WebGLRenderTargetOptions(
      {num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num format,
      num /*enum TextureDataType*/ type,
      num anisotropy,
      bool depthBuffer,
      bool stencilBuffer});
}

@JS()
class WebGLRenderTarget extends EventDispatcher {
  // @Ignore
  WebGLRenderTarget.fakeConstructor$() : super.fakeConstructor$();
  external factory WebGLRenderTarget(num width, num height,
      [WebGLRenderTargetOptions options]);
  external String get uuid;
  external set uuid(String v);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
  external Vector4 get scissor;
  external set scissor(Vector4 v);
  external bool get scissorTest;
  external set scissorTest(bool v);
  external Vector4 get viewport;
  external set viewport(Vector4 v);
  external Texture get texture;
  external set texture(Texture v);
  external bool get depthBuffer;
  external set depthBuffer(bool v);
  external bool get stencilBuffer;
  external set stencilBuffer(bool v);
  external Texture get depthTexture;
  external set depthTexture(Texture v);

  /// Use [Texture#wrapS texture.wrapS] instead.
  external dynamic get wrapS;
  external set wrapS(dynamic v);

  /// Use [Texture#wrapT texture.wrapT] instead.
  external dynamic get wrapT;
  external set wrapT(dynamic v);

  /// Use [Texture#magFilter texture.magFilter] instead.
  external dynamic get magFilter;
  external set magFilter(dynamic v);

  /// Use [Texture#minFilter texture.minFilter] instead.
  external dynamic get minFilter;
  external set minFilter(dynamic v);

  /// Use [Texture#anisotropy texture.anisotropy] instead.
  external dynamic get anisotropy;
  external set anisotropy(dynamic v);

  /// Use [Texture#offset texture.offset] instead.
  external dynamic get offset;
  external set offset(dynamic v);

  /// Use [Texture#repeat texture.repeat] instead.
  external dynamic get repeat;
  external set repeat(dynamic v);

  /// Use [Texture#format texture.format] instead.
  external dynamic get format;
  external set format(dynamic v);

  /// Use [Texture#type texture.type] instead.
  external dynamic get type;
  external set type(dynamic v);

  /// Use [Texture#generateMipmaps texture.generateMipmaps] instead.
  external dynamic get generateMipmaps;
  external set generateMipmaps(dynamic v);
  external void setSize(num width, num height);
  external WebGLRenderTarget clone();
  external WebGLRenderTarget copy(WebGLRenderTarget source);
  external void dispose();
}

@JS()
class WebGLRenderTargetCube extends WebGLRenderTarget {
  // @Ignore
  WebGLRenderTargetCube.fakeConstructor$() : super.fakeConstructor$();
  external factory WebGLRenderTargetCube(num width, num height,
      [WebGLRenderTargetOptions options]);
  external num get activeCubeFace;
  external set activeCubeFace(num v);
  external num get activeMipMapLevel;
  external set activeMipMapLevel(num v);
}

/// Renderers / Shaders /////////////////////////////////////////////////////////////////////
@JS()
external dynamic
    /*{
    [name: string]: string;

    alphamap_fragment: string;
    alphamap_pars_fragment: string;
    alphatest_fragment: string;
    aomap_fragment: string;
    aomap_pars_fragment: string;
    begin_vertex: string;
    beginnormal_vertex: string;
    bsdfs: string;
    bumpmap_pars_fragment: string;
    clipping_planes_fragment: string;
    clipping_planes_pars_fragment: string;
    clipping_planes_pars_vertex: string;
    clipping_planes_vertex: string;
    color_fragment: string;
    color_pars_fragment: string;
    color_pars_vertex: string;
    color_vertex: string;
    common: string;
    cube_frag: string;
    cube_vert: string;
    cube_uv_reflection_fragment: string;
    defaultnormal_vertex: string;
    depth_frag: string;
    depth_vert: string;
    distanceRGBA_frag: string;
    distanceRGBA_vert: string;
    displacementmap_vertex: string;
    displacementmap_pars_vertex: string;
    emissivemap_fragment: string;
    emissivemap_pars_fragment: string;
    encodings_pars_fragment: string;
    encodings_fragment: string;
    envmap_fragment: string;
    envmap_pars_fragment: string;
    envmap_pars_vertex: string;
    envmap_vertex: string;
    equirect_frag: string;
    equirect_vert: string;
    fog_fragment: string;
    fog_pars_fragment: string;
    linedashed_frag: string;
    linedashed_vert: string;
    lightmap_fragment: string;
    lightmap_pars_fragment: string;
    lights_lambert_vertex: string;
    lights_pars_begin: string;
    lights_pars_map: string;
    lights_phong_fragment: string;
    lights_phong_pars_fragment: string;
    lights_physical_fragment: string;
    lights_physical_pars_fragment: string;
    lights_fragment_begin: string;
    lights_fragment_maps: string;
    lights_fragment_end: string;
    logdepthbuf_fragment: string;
    logdepthbuf_pars_fragment: string;
    logdepthbuf_pars_vertex: string;
    logdepthbuf_vertex: string;
    map_fragment: string;
    map_pars_fragment: string;
    map_particle_fragment: string;
    map_particle_pars_fragment: string;
    meshbasic_frag: string;
    meshbasic_vert: string;
    meshlambert_frag: string;
    meshlambert_vert: string;
    meshphong_frag: string;
    meshphong_vert: string;
    meshphysical_frag: string;
    meshphysical_vert: string;
    metalnessmap_fragment: string;
    metalnessmap_pars_fragment: string;
    morphnormal_vertex: string;
    morphtarget_pars_vertex: string;
    morphtarget_vertex: string;
    normal_flip: string;
    normal_frag: string;
    normal_fragment_begin: string;
    normal_fragment_maps: string;
    normal_vert: string;
    normalmap_pars_fragment: string;
    packing: string;
    points_frag: string;
    points_vert: string;
    shadow_frag: string;
    shadow_vert: string;

    premultiplied_alpha_fragment: string;
    project_vertex: string;
    roughnessmap_fragment: string;
    roughnessmap_pars_fragment: string;
    shadowmap_pars_fragment: string;
    shadowmap_pars_vertex: string;
    shadowmap_vertex: string;
    shadowmask_pars_fragment: string;
    skinbase_vertex: string;
    skinning_pars_vertex: string;
    skinning_vertex: string;
    skinnormal_vertex: string;
    specularmap_fragment: string;
    specularmap_pars_fragment: string;
    tonemapping_fragment: string;
    tonemapping_pars_fragment: string;
    uv2_pars_fragment: string;
    uv2_pars_vertex: string;
    uv2_vertex: string;
    uv_pars_fragment: string;
    uv_pars_vertex: string;
    uv_vertex: string;
    worldpos_vertex: string;
}*/
    get ShaderChunk;
@JS()
external set ShaderChunk(
    dynamic /*{
    [name: string]: string;

    alphamap_fragment: string;
    alphamap_pars_fragment: string;
    alphatest_fragment: string;
    aomap_fragment: string;
    aomap_pars_fragment: string;
    begin_vertex: string;
    beginnormal_vertex: string;
    bsdfs: string;
    bumpmap_pars_fragment: string;
    clipping_planes_fragment: string;
    clipping_planes_pars_fragment: string;
    clipping_planes_pars_vertex: string;
    clipping_planes_vertex: string;
    color_fragment: string;
    color_pars_fragment: string;
    color_pars_vertex: string;
    color_vertex: string;
    common: string;
    cube_frag: string;
    cube_vert: string;
    cube_uv_reflection_fragment: string;
    defaultnormal_vertex: string;
    depth_frag: string;
    depth_vert: string;
    distanceRGBA_frag: string;
    distanceRGBA_vert: string;
    displacementmap_vertex: string;
    displacementmap_pars_vertex: string;
    emissivemap_fragment: string;
    emissivemap_pars_fragment: string;
    encodings_pars_fragment: string;
    encodings_fragment: string;
    envmap_fragment: string;
    envmap_pars_fragment: string;
    envmap_pars_vertex: string;
    envmap_vertex: string;
    equirect_frag: string;
    equirect_vert: string;
    fog_fragment: string;
    fog_pars_fragment: string;
    linedashed_frag: string;
    linedashed_vert: string;
    lightmap_fragment: string;
    lightmap_pars_fragment: string;
    lights_lambert_vertex: string;
    lights_pars_begin: string;
    lights_pars_map: string;
    lights_phong_fragment: string;
    lights_phong_pars_fragment: string;
    lights_physical_fragment: string;
    lights_physical_pars_fragment: string;
    lights_fragment_begin: string;
    lights_fragment_maps: string;
    lights_fragment_end: string;
    logdepthbuf_fragment: string;
    logdepthbuf_pars_fragment: string;
    logdepthbuf_pars_vertex: string;
    logdepthbuf_vertex: string;
    map_fragment: string;
    map_pars_fragment: string;
    map_particle_fragment: string;
    map_particle_pars_fragment: string;
    meshbasic_frag: string;
    meshbasic_vert: string;
    meshlambert_frag: string;
    meshlambert_vert: string;
    meshphong_frag: string;
    meshphong_vert: string;
    meshphysical_frag: string;
    meshphysical_vert: string;
    metalnessmap_fragment: string;
    metalnessmap_pars_fragment: string;
    morphnormal_vertex: string;
    morphtarget_pars_vertex: string;
    morphtarget_vertex: string;
    normal_flip: string;
    normal_frag: string;
    normal_fragment_begin: string;
    normal_fragment_maps: string;
    normal_vert: string;
    normalmap_pars_fragment: string;
    packing: string;
    points_frag: string;
    points_vert: string;
    shadow_frag: string;
    shadow_vert: string;

    premultiplied_alpha_fragment: string;
    project_vertex: string;
    roughnessmap_fragment: string;
    roughnessmap_pars_fragment: string;
    shadowmap_pars_fragment: string;
    shadowmap_pars_vertex: string;
    shadowmap_vertex: string;
    shadowmask_pars_fragment: string;
    skinbase_vertex: string;
    skinning_pars_vertex: string;
    skinning_vertex: string;
    skinnormal_vertex: string;
    specularmap_fragment: string;
    specularmap_pars_fragment: string;
    tonemapping_fragment: string;
    tonemapping_pars_fragment: string;
    uv2_pars_fragment: string;
    uv2_pars_vertex: string;
    uv2_vertex: string;
    uv_pars_fragment: string;
    uv_pars_vertex: string;
    uv_vertex: string;
    worldpos_vertex: string;
}*/
    v);

@anonymous
@JS()
abstract class Shader {
  external dynamic /*JSMap of <String,IUniform>*/ get uniforms;
  external set uniforms(dynamic /*JSMap of <String,IUniform>*/ v);
  external String get vertexShader;
  external set vertexShader(String v);
  external String get fragmentShader;
  external set fragmentShader(String v);
  external factory Shader(
      {dynamic /*JSMap of <String,IUniform>*/ uniforms,
      String vertexShader,
      String fragmentShader});
}

@JS()
external dynamic
    /*{
    [name: string]: Shader;
    basic: Shader;
    lambert: Shader;
    phong: Shader;
    standard: Shader;
    points: Shader;
    dashed: Shader;
    depth: Shader;
    normal: Shader;
    cube: Shader;
    equirect: Shader;
    depthRGBA: Shader;
    distanceRGBA: Shader;
    physical: Shader;
}*/
    get ShaderLib;
@JS()
external set ShaderLib(
    dynamic /*{
    [name: string]: Shader;
    basic: Shader;
    lambert: Shader;
    phong: Shader;
    standard: Shader;
    points: Shader;
    dashed: Shader;
    depth: Shader;
    normal: Shader;
    cube: Shader;
    equirect: Shader;
    depthRGBA: Shader;
    distanceRGBA: Shader;
    physical: Shader;
}*/
    v);

@anonymous
@JS()
abstract class IUniform {
  external dynamic get value;
  external set value(dynamic v);
  external factory IUniform({dynamic value});
}

@JS()
external dynamic
    /*{
    common: {
        diffuse: IUniform;
        opacity: IUniform;
        map: IUniform;
        uvTransform: IUniform;
        alphaMap: IUniform;
    };
    specularmap: {
        specularMap: IUniform;
    };
    envmap: {
        envMap: IUniform;
        flipEnvMap: IUniform;
        reflectivity: IUniform;
        refractionRatio: IUniform;
        maxMipLevel: IUniform;
    };
    aomap: {
        aoMap: IUniform;
        aoMapIntensity: IUniform;
    };
    lightmap: {
        lightMap: IUniform;
        lightMapIntensity: IUniform;
    };
    emissivemap: {
        emissiveMap: IUniform
    };
    bumpmap: {
        bumpMap: IUniform;
        bumpScale: IUniform;
    };
    normalmap: {
        normalMap: IUniform;
        normalScale: IUniform;
    };
    displacementmap: {
        displacementMap: IUniform;
        displacementScale: IUniform;
        displacementBias: IUniform;
    };
    roughnessmap: {
        roughnessMap: IUniform
    };
    metalnessmap: {
        metalnessMap: IUniform
    };
    gradientmap: {
        gradientMap: IUniform
    };
    fog: {
        fogDensity: IUniform;
        fogNear: IUniform;
        fogFar: IUniform;
        fogColor: IUniform;
    };
    lights: {
        ambientLightColor: IUniform
        directionalLights: {
            value: any[];
            properties: {
                direction: {};
                color: {};
                shadow: {};
                shadowBias: {};
                shadowRadius: {};
                shadowMapSize: {};
            };
        };
        directionalShadowMap: IUniform;
        directionalShadowMatrix: IUniform;
        spotLights: {
            value: any[];
            properties: {
                color: {};
                position: {};
                direction: {};
                distance: {};
                coneCos: {};
                penumbraCos: {};
                decay: {};
                shadow: {};
                shadowBias: {};
                shadowRadius: {};
                shadowMapSize: {};
            };
        };
        spotShadowMap: IUniform;
        spotShadowMatrix: IUniform;
        pointLights: {
            value: any[];
            properties: {
                color: {};
                position: {};
                decay: {};
                distance: {};
                shadow: {};
                shadowBias: {};
                shadowRadius: {};
                shadowMapSize: {};
            };
        };
        pointShadowMap: IUniform;
        pointShadowMatrix: IUniform;
        hemisphereLights: {
            value: any[];
            properties: {
                direction: {};
                skycolor: {};
                groundColor: {};
            };
        };
        rectAreaLights: {
            value: any[];
            properties: {
                color: {};
                position: {};
                width: {};
                height: {};
            }
        }
    };
    points: {
        diffuse: IUniform;
        opacity: IUniform;
        size: IUniform;
        scale: IUniform;
        map: IUniform;
        uvTransform: IUniform;
    };
}*/
    get UniformsLib;
@JS()
external set UniformsLib(
    dynamic /*{
    common: {
        diffuse: IUniform;
        opacity: IUniform;
        map: IUniform;
        uvTransform: IUniform;
        alphaMap: IUniform;
    };
    specularmap: {
        specularMap: IUniform;
    };
    envmap: {
        envMap: IUniform;
        flipEnvMap: IUniform;
        reflectivity: IUniform;
        refractionRatio: IUniform;
        maxMipLevel: IUniform;
    };
    aomap: {
        aoMap: IUniform;
        aoMapIntensity: IUniform;
    };
    lightmap: {
        lightMap: IUniform;
        lightMapIntensity: IUniform;
    };
    emissivemap: {
        emissiveMap: IUniform
    };
    bumpmap: {
        bumpMap: IUniform;
        bumpScale: IUniform;
    };
    normalmap: {
        normalMap: IUniform;
        normalScale: IUniform;
    };
    displacementmap: {
        displacementMap: IUniform;
        displacementScale: IUniform;
        displacementBias: IUniform;
    };
    roughnessmap: {
        roughnessMap: IUniform
    };
    metalnessmap: {
        metalnessMap: IUniform
    };
    gradientmap: {
        gradientMap: IUniform
    };
    fog: {
        fogDensity: IUniform;
        fogNear: IUniform;
        fogFar: IUniform;
        fogColor: IUniform;
    };
    lights: {
        ambientLightColor: IUniform
        directionalLights: {
            value: any[];
            properties: {
                direction: {};
                color: {};
                shadow: {};
                shadowBias: {};
                shadowRadius: {};
                shadowMapSize: {};
            };
        };
        directionalShadowMap: IUniform;
        directionalShadowMatrix: IUniform;
        spotLights: {
            value: any[];
            properties: {
                color: {};
                position: {};
                direction: {};
                distance: {};
                coneCos: {};
                penumbraCos: {};
                decay: {};
                shadow: {};
                shadowBias: {};
                shadowRadius: {};
                shadowMapSize: {};
            };
        };
        spotShadowMap: IUniform;
        spotShadowMatrix: IUniform;
        pointLights: {
            value: any[];
            properties: {
                color: {};
                position: {};
                decay: {};
                distance: {};
                shadow: {};
                shadowBias: {};
                shadowRadius: {};
                shadowMapSize: {};
            };
        };
        pointShadowMap: IUniform;
        pointShadowMatrix: IUniform;
        hemisphereLights: {
            value: any[];
            properties: {
                direction: {};
                skycolor: {};
                groundColor: {};
            };
        };
        rectAreaLights: {
            value: any[];
            properties: {
                color: {};
                position: {};
                width: {};
                height: {};
            }
        }
    };
    points: {
        diffuse: IUniform;
        opacity: IUniform;
        size: IUniform;
        scale: IUniform;
        map: IUniform;
        uvTransform: IUniform;
    };
}*/
    v);
// Module UniformsUtils
@JS("UniformsUtils.merge")
external dynamic UniformsUtils_merge(List<dynamic> uniforms);
@JS("UniformsUtils.clone")
external dynamic clone(dynamic uniforms_src);

// End module UniformsUtils
@JS()
class Uniform {
  // @Ignore
  Uniform.fakeConstructor$();
  /*external factory Uniform(dynamic value);*/
  /*external factory Uniform(String type, dynamic value);*/
  external factory Uniform(dynamic /*dynamic|String*/ value_type,
      [dynamic value]);
  external String get type;
  external set type(String v);
  external dynamic get value;
  external set value(dynamic v);

  /// Use [Object3D#onBeforeRender object.onBeforeRender()] instead.
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);
  external Function get onUpdateCallback;
  external set onUpdateCallback(Function v);

  /// Use [Object3D#onBeforeRender object.onBeforeRender()] instead.
  external Uniform onUpdate(Function callback);
}

/// Renderers / WebGL /////////////////////////////////////////////////////////////////////
@JS()
class WebGLBufferRenderer {
  // @Ignore
  WebGLBufferRenderer.fakeConstructor$();
  external factory WebGLBufferRenderer(
      RenderingContext JS$_gl, dynamic extensions, dynamic JS$_infoRender);
  external void setMode(dynamic value);
  external void render(dynamic start, num count);
  external void renderInstances(dynamic geometry);
}

@JS()
class WebGLClipping {
  // @Ignore
  WebGLClipping.fakeConstructor$();
  external dynamic /*{ value: any, needsUpdate: boolean }*/ get uniform;
  external set uniform(dynamic /*{ value: any, needsUpdate: boolean }*/ v);
  external num get numPlanes;
  external set numPlanes(num v);
  external bool init(
      List<dynamic> planes, bool enableLocalClipping, Camera camera);
  external void beginShadows();
  external void endShadows();
  external void setState(List<dynamic> planes, bool clipShadows, Camera camera,
      bool cache, bool fromCache);
}

@anonymous
@JS()
abstract class WebGLCapabilitiesParameters {
  external dynamic get precision;
  external set precision(dynamic v);
  external dynamic get logarithmicDepthBuffer;
  external set logarithmicDepthBuffer(dynamic v);
  external factory WebGLCapabilitiesParameters(
      {dynamic precision, dynamic logarithmicDepthBuffer});
}

@JS()
class WebGLCapabilities {
  // @Ignore
  WebGLCapabilities.fakeConstructor$();
  external factory WebGLCapabilities(RenderingContext gl, dynamic extensions,
      WebGLCapabilitiesParameters parameters);
  external dynamic get precision;
  external set precision(dynamic v);
  external dynamic get logarithmicDepthBuffer;
  external set logarithmicDepthBuffer(dynamic v);
  external dynamic get maxTextures;
  external set maxTextures(dynamic v);
  external dynamic get maxVertexTextures;
  external set maxVertexTextures(dynamic v);
  external dynamic get maxTextureSize;
  external set maxTextureSize(dynamic v);
  external dynamic get maxCubemapSize;
  external set maxCubemapSize(dynamic v);
  external dynamic get maxAttributes;
  external set maxAttributes(dynamic v);
  external dynamic get maxVertexUniforms;
  external set maxVertexUniforms(dynamic v);
  external dynamic get maxVaryings;
  external set maxVaryings(dynamic v);
  external dynamic get maxFragmentUniforms;
  external set maxFragmentUniforms(dynamic v);
  external dynamic get vertexTextures;
  external set vertexTextures(dynamic v);
  external dynamic get floatFragmentTextures;
  external set floatFragmentTextures(dynamic v);
  external dynamic get floatVertexTextures;
  external set floatVertexTextures(dynamic v);
  external num getMaxAnisotropy();
  external String getMaxPrecision(String precision);
}

@JS()
class WebGLExtensions {
  // @Ignore
  WebGLExtensions.fakeConstructor$();
  external factory WebGLExtensions(RenderingContext gl);
  external dynamic JS$get(String name);
}

@JS()
class WebGLGeometries {
  // @Ignore
  WebGLGeometries.fakeConstructor$();
  external factory WebGLGeometries(
      RenderingContext gl, dynamic extensions, dynamic JS$_infoRender);
  external dynamic JS$get(dynamic object);
}

@JS()
class WebGLLights {
  // @Ignore
  WebGLLights.fakeConstructor$();
  external factory WebGLLights(
      RenderingContext gl, dynamic properties, dynamic info);
  external dynamic JS$get(dynamic light);
}

/// An object with a series of statistical information about the graphics board memory and the rendering process.
@JS()
class WebGLInfo {
  // @Ignore
  WebGLInfo.fakeConstructor$();
  external bool get autoReset;
  external set autoReset(bool v);
  external dynamic
      /*{ 
        geometries: number;
        textures: number;
    }*/
      get memory;
  external set memory(
      dynamic /*{ 
        geometries: number;
        textures: number;
    }*/
      v);
  external List<WebGLProgram> /*List<WebGLProgram>|Null*/ get programs;
  external set programs(List<WebGLProgram> /*List<WebGLProgram>|Null*/ v);
  external dynamic
      /*{
        calls: number;
        frame: number;
        lines: number;
        points: number;
        triangles: number;
    }*/
      get render;
  external set render(
      dynamic /*{
        calls: number;
        frame: number;
        lines: number;
        points: number;
        triangles: number;
    }*/
      v);
  external void reset();
}

@JS()
class WebGLIndexedBufferRenderer {
  // @Ignore
  WebGLIndexedBufferRenderer.fakeConstructor$();
  external factory WebGLIndexedBufferRenderer(
      RenderingContext gl, dynamic properties, dynamic info);
  external void setMode(dynamic value);
  external void setIndex(dynamic index);
  external void render(dynamic start, num count);
  external void renderInstances(dynamic geometry, dynamic start, num count);
}

@JS()
class WebGLObjects {
  // @Ignore
  WebGLObjects.fakeConstructor$();
  external factory WebGLObjects(
      RenderingContext gl, dynamic properties, dynamic info);
  external dynamic getAttributeBuffer(dynamic attribute);
  external dynamic getWireframeAttribute(dynamic geometry);
  external void update(dynamic object);
}

@JS()
class WebGLProgram {
  // @Ignore
  WebGLProgram.fakeConstructor$();
  external factory WebGLProgram(WebGLRenderer renderer, String code,
      ShaderMaterial material, WebGLRendererParameters parameters);
  external num get id;
  external set id(num v);
  external String get code;
  external set code(String v);
  external num get usedTimes;
  external set usedTimes(num v);
  external dynamic get program;
  external set program(dynamic v);
  external WebGLShader get vertexShader;
  external set vertexShader(WebGLShader v);
  external WebGLShader get fragmentShader;
  external set fragmentShader(WebGLShader v);

  /// Use [WebGLProgram#getUniforms getUniforms()] instead.
  external dynamic get uniforms;
  external set uniforms(dynamic v);

  /// Use [WebGLProgram#getAttributes getAttributes()] instead.
  external dynamic get attributes;
  external set attributes(dynamic v);
  external WebGLUniforms getUniforms();
  external dynamic getAttributes();
  external void destroy();
}

@JS()
class WebGLPrograms {
  // @Ignore
  WebGLPrograms.fakeConstructor$();
  external factory WebGLPrograms(WebGLRenderer renderer, dynamic capabilities);
  external List<WebGLProgram> get programs;
  external set programs(List<WebGLProgram> v);
  external dynamic getParameters(ShaderMaterial material, dynamic lights,
      dynamic fog, num nClipPlanes, dynamic object);
  external String getProgramCode(ShaderMaterial material, dynamic parameters);
  external WebGLProgram acquireProgram(
      ShaderMaterial material, dynamic parameters, String code);
  external void releaseProgram(WebGLProgram program);
}

@JS()
class WebGLTextures {
  // @Ignore
  WebGLTextures.fakeConstructor$();
  external factory WebGLTextures(
      dynamic gl,
      dynamic extensions,
      dynamic state,
      dynamic properties,
      dynamic capabilities,
      Function paramThreeToGL,
      dynamic info);
  external void setTexture2D(dynamic texture, num slot);
  external void setTextureCube(dynamic texture, num slot);
  external void setTextureCubeDynamic(dynamic texture, num slot);
  external void setupRenderTarget(dynamic renderTarget);
  external void updateRenderTargetMipmap(dynamic renderTarget);
}

@JS()
class WebGLUniforms {
  // @Ignore
  WebGLUniforms.fakeConstructor$();
  external factory WebGLUniforms(
      dynamic gl, WebGLProgram program, WebGLRenderer renderer);
  external WebGLRenderer get renderer;
  external set renderer(WebGLRenderer v);
  external void setValue(dynamic gl, dynamic value, [dynamic renderer]);
  external void JS$set(dynamic gl, dynamic object, String name);
  external void setOptional(dynamic gl, dynamic object, String name);
  external static void upload(
      dynamic gl, dynamic seq, List<dynamic> values, dynamic renderer);
  external static List<dynamic> seqWithValue(dynamic seq, List<dynamic> values);
  external static List<dynamic> splitDynamic(dynamic seq, List<dynamic> values);
  external static List<dynamic> evalDynamic(
      dynamic seq, List<dynamic> values, dynamic object, dynamic camera);
}

@JS()
class WebGLProperties {
  // @Ignore
  WebGLProperties.fakeConstructor$();
  external factory WebGLProperties();
  external dynamic JS$get(dynamic object);
  external void delete(dynamic object);
  external void clear();
}

@JS()
class WebGLShader {
  // @Ignore
  WebGLShader.fakeConstructor$();
  external factory WebGLShader(dynamic gl, String type, String string);
}

@JS()
class WebGLShadowMap {
  // @Ignore
  WebGLShadowMap.fakeConstructor$();
  external factory WebGLShadowMap(
      Renderer JS$_renderer,
      List<dynamic> JS$_lights,
      List<dynamic> JS$_objects,
      dynamic capabilities);
  external bool get enabled;
  external set enabled(bool v);
  external bool get autoUpdate;
  external set autoUpdate(bool v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external num /*enum ShadowMapType*/ get type;
  external set type(num /*enum ShadowMapType*/ v);
  external void render(Scene scene, Camera camera);

  /// Use [WebGLShadowMap#renderReverseSided .shadowMap.renderReverseSided] instead.
  external dynamic get cullFace;
  external set cullFace(dynamic v);
}

@JS()
class WebGLState {
  // @Ignore
  WebGLState.fakeConstructor$();
  external factory WebGLState(
      dynamic gl, dynamic extensions, Function paramThreeToGL);
  external dynamic
      /*{
        color: WebGLColorBuffer,
        depth: WebGLDepthBuffer,
        stencil: WebGLStencilBuffer,
    }*/
      get buffers;
  external set buffers(
      dynamic /*{
        color: WebGLColorBuffer,
        depth: WebGLDepthBuffer,
        stencil: WebGLStencilBuffer,
    }*/
      v);
  external void init();
  external void initAttributes();
  external void enableAttribute(String attribute);
  external void enableAttributeAndDivisor(
      String attribute, dynamic meshPerAttribute, dynamic extension);
  external void disableUnusedAttributes();
  external void enable(String id);
  external void disable(String id);
  external List<dynamic> getCompressedTextureFormats();
  external void setBlending(num blending,
      [num blendEquation,
      num blendSrc,
      num blendDst,
      num blendEquationAlpha,
      num blendSrcAlpha,
      num blendDstAlpha,
      bool premultiplyAlpha]);
  external void setColorWrite(num colorWrite);
  external void setDepthTest(num depthTest);
  external void setDepthWrite(num depthWrite);
  external void setDepthFunc(Function depthFunc);
  external void setStencilTest(bool stencilTest);
  external void setStencilWrite(dynamic stencilWrite);
  external void setStencilFunc(
      Function stencilFunc, dynamic stencilRef, num stencilMask);
  external void setStencilOp(
      dynamic stencilFail, dynamic stencilZFail, dynamic stencilZPass);
  external void setFlipSided(num flipSided);
  external void setCullFace(num /*enum CullFace*/ cullFace);
  external void setLineWidth(num width);
  external void setPolygonOffset(num polygonoffset, num factor, num units);
  external void setScissorTest(bool scissorTest);
  external bool getScissorTest();
  external void activeTexture(dynamic webglSlot);
  external void bindTexture(dynamic webglType, dynamic webglTexture);

  /// Same interface as https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/compressedTexImage2D
  external void compressedTexImage2D();

  /// Same interface as https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/texImage2D
  external void texImage2D();
  external void clearColor(num r, num g, num b, num a);
  external void clearDepth(num depth);
  external void clearStencil(dynamic stencil);
  external void scissor(dynamic scissor);
  external void viewport(dynamic viewport);
  external void reset();
}

@JS()
class WebGLColorBuffer {
  // @Ignore
  WebGLColorBuffer.fakeConstructor$();
  external factory WebGLColorBuffer(dynamic gl, dynamic state);
  external void setMask(num colorMask);
  external void setLocked(bool lock);
  external void setClear(num r, num g, num b, num a);
  external void reset();
}

@JS()
class WebGLDepthBuffer {
  // @Ignore
  WebGLDepthBuffer.fakeConstructor$();
  external factory WebGLDepthBuffer(dynamic gl, dynamic state);
  external void setTest(bool depthTest);
  external void setMask(num depthMask);
  external void setFunc(num depthFunc);
  external void setLocked(bool lock);
  external void setClear(dynamic depth);
  external void reset();
}

@JS()
class WebGLStencilBuffer {
  // @Ignore
  WebGLStencilBuffer.fakeConstructor$();
  external factory WebGLStencilBuffer(dynamic gl, dynamic state);
  external void setTest(bool stencilTest);
  external void setMask(num stencilMask);
  external void setFunc(num stencilFunc, dynamic stencilRef, num stencilMask);
  external void setOp(
      dynamic stencilFail, dynamic stencilZFail, dynamic stencilZPass);
  external void setLocked(bool lock);
  external void setClear(dynamic stencil);
  external void reset();
}

/// Renderers / WebGL / Plugins /////////////////////////////////////////////////////////////////////
@JS()
class LensFlarePlugin {
  // @Ignore
  LensFlarePlugin.fakeConstructor$();
  external factory LensFlarePlugin(
      WebGLRenderer renderer, List<dynamic> flares);
  external void render(
      Scene scene, Camera camera, num viewportWidth, num viewportHeight);
}

@JS()
class SpritePlugin {
  // @Ignore
  SpritePlugin.fakeConstructor$();
  external factory SpritePlugin(WebGLRenderer renderer, List<dynamic> sprites);
  external void render(
      Scene scene, Camera camera, num viewportWidth, num viewportHeight);
}

/// Scenes /////////////////////////////////////////////////////////////////////

/// Scenes allow you to set up what and where is to be rendered by three.js. This is where you place objects, lights and cameras.
@JS()
class Scene extends Object3D {
  // @Ignore
  Scene.fakeConstructor$() : super.fakeConstructor$();
  external factory Scene();

  /// A fog instance defining the type of fog that affects everything rendered in the scene. Default is null.
  external IFog /*IFog|Null*/ get fog;
  external set fog(IFog /*IFog|Null*/ v);

  /// If not null, it will force everything in the scene to be rendered with that material. Default is null.
  external Material /*Material|Null*/ get overrideMaterial;
  external set overrideMaterial(Material /*Material|Null*/ v);
  external bool get autoUpdate;
  external set autoUpdate(bool v);
  external dynamic get background;
  external set background(dynamic v);
  external dynamic toJSON([dynamic meta]);
}

@anonymous
@JS()
abstract class IFog {
  external String get name;
  external set name(String v);
  external Color get color;
  external set color(Color v);
  external IFog clone();
  external dynamic toJSON();
}

/// This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
@JS()
class Fog implements IFog {
  // @Ignore
  Fog.fakeConstructor$();
  external factory Fog(num hex, [num near, num far]);
  external String get name;
  external set name(String v);

  /// Fog color.
  external Color get color;
  external set color(Color v);

  /// The minimum distance to start applying fog. Objects that are less than 'near' units from the active camera won't be affected by fog.
  external num get near;
  external set near(num v);

  /// The maximum distance at which fog stops being calculated and applied. Objects that are more than 'far' units away from the active camera won't be affected by fog.
  /// Default is 1000.
  external num get far;
  external set far(num v);
  external Fog clone();
  external dynamic toJSON();
}

/// This class contains the parameters that define linear fog, i.e., that grows exponentially denser with the distance.
@JS()
class FogExp2 implements IFog {
  // @Ignore
  FogExp2.fakeConstructor$();
  external factory FogExp2(dynamic /*num|String*/ hex, [num density]);
  external String get name;
  external set name(String v);
  external Color get color;
  external set color(Color v);

  /// Defines how fast the fog will grow dense.
  /// Default is 0.00025.
  external num get density;
  external set density(num v);
  external FogExp2 clone();
  external dynamic toJSON();
}

/// Textures /////////////////////////////////////////////////////////////////////
@JS()
external num get TextureIdCount;
@JS()
external set TextureIdCount(num v);

@JS()
class Texture extends EventDispatcher {
  // @Ignore
  Texture.fakeConstructor$() : super.fakeConstructor$();
  external factory Texture(
      [dynamic /*ImageElement|CanvasElement|VideoElement*/ image,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external num get id;
  external set id(num v);
  external String get uuid;
  external set uuid(String v);
  external String get name;
  external set name(String v);
  external String get sourceFile;
  external set sourceFile(String v);
  external dynamic get image;
  external set image(dynamic v);
  external List<ImageData> get mipmaps;
  external set mipmaps(List<ImageData> v);
  external num /*enum Mapping*/ get mapping;
  external set mapping(num /*enum Mapping*/ v);
  external num /*enum Wrapping*/ get wrapS;
  external set wrapS(num /*enum Wrapping*/ v);
  external num /*enum Wrapping*/ get wrapT;
  external set wrapT(num /*enum Wrapping*/ v);
  external num /*enum TextureFilter*/ get magFilter;
  external set magFilter(num /*enum TextureFilter*/ v);
  external num /*enum TextureFilter*/ get minFilter;
  external set minFilter(num /*enum TextureFilter*/ v);
  external num get anisotropy;
  external set anisotropy(num v);
  external num /*enum PixelFormat*/ get format;
  external set format(num /*enum PixelFormat*/ v);
  external num /*enum TextureDataType*/ get type;
  external set type(num /*enum TextureDataType*/ v);
  external Vector2 get offset;
  external set offset(Vector2 v);
  external Vector2 get repeat;
  external set repeat(Vector2 v);
  external Vector2 get center;
  external set center(Vector2 v);
  external num get rotation;
  external set rotation(num v);
  external bool get generateMipmaps;
  external set generateMipmaps(bool v);
  external bool get premultiplyAlpha;
  external set premultiplyAlpha(bool v);
  external bool get flipY;
  external set flipY(bool v);
  external num get unpackAlignment;
  external set unpackAlignment(num v);
  external num /*enum TextureEncoding*/ get encoding;
  external set encoding(num /*enum TextureEncoding*/ v);
  external num get version;
  external set version(num v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external VoidFunc0 get onUpdate;
  external set onUpdate(VoidFunc0 v);
  external static dynamic get DEFAULT_IMAGE;
  external static set DEFAULT_IMAGE(dynamic v);
  external static dynamic get DEFAULT_MAPPING;
  external static set DEFAULT_MAPPING(dynamic v);
  external Texture clone();
  external Texture copy(Texture source);
  external dynamic toJSON(dynamic meta);
  external void dispose();
  external void transformUv(Vector uv);
}

@JS()
class DepthTexture extends Texture {
  // @Ignore
  DepthTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory DepthTexture(num width, num heighht,
      [num /*enum TextureDataType*/ type,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num anisotropy]);
  external dynamic /*{ width: number, height: number }*/ get image;
  external set image(dynamic /*{ width: number, height: number }*/ v);
}

@JS()
class CanvasTexture extends Texture {
  // @Ignore
  CanvasTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory CanvasTexture(
      dynamic /*ImageElement|CanvasElement|VideoElement*/ canvas,
      [num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy]);
}

@JS()
class CubeTexture extends Texture {
  // @Ignore
  CubeTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory CubeTexture(
      [List<dynamic> images,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external dynamic get images;
  external set images(dynamic v);
}

@JS()
class CompressedTexture extends Texture {
  // @Ignore
  CompressedTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory CompressedTexture(
      List<ImageData> mipmaps, num width, num height,
      [num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external dynamic /*{ width: number; height: number; }*/ get image;
  external set image(dynamic /*{ width: number; height: number; }*/ v);
}

@JS()
class DataTexture extends Texture {
  // @Ignore
  DataTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory DataTexture(
      dynamic /*ByteBuffer|Int8List|Uint8List|Uint8ClampedList|Int16List|Uint16List|Int32List|Uint32List|Float32List|Float64List*/ data,
      num width,
      num height,
      [num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num anisotropy,
      num /*enum TextureEncoding*/ encoding]);
  external ImageData get image;
  external set image(ImageData v);
}

@JS()
class VideoTexture extends Texture {
  // @Ignore
  VideoTexture.fakeConstructor$() : super.fakeConstructor$();
  external factory VideoTexture(VideoElement video,
      [num /*enum Mapping*/ mapping,
      num /*enum Wrapping*/ wrapS,
      num /*enum Wrapping*/ wrapT,
      num /*enum TextureFilter*/ magFilter,
      num /*enum TextureFilter*/ minFilter,
      num /*enum PixelFormat*/ format,
      num /*enum TextureDataType*/ type,
      num anisotropy]);
}

/// Extras /////////////////////////////////////////////////////////////////////

/// Use [TextureLoader] instead.

// Module ImageUtils
@JS("ImageUtils.crossOrigin")
external String get crossOrigin;
@JS("ImageUtils.crossOrigin")
external set crossOrigin(String v);

/// Use [TextureLoader THREE.TextureLoader()] instead.
@JS("ImageUtils.loadTexture")
external Texture loadTexture(String url,
    [num /*enum Mapping*/ mapping,
    void onLoad(Texture texture),
    void onError(String message)]);

/// Use [CubeTextureLoader THREE.CubeTextureLoader()] instead.
@JS("ImageUtils.loadTextureCube")
external Texture loadTextureCube(List<String> array,
    [num /*enum Mapping*/ mapping,
    void onLoad(Texture texture),
    void onError(String message)]);
// End module ImageUtils

// Module SceneUtils
@JS("SceneUtils.createMultiMaterialObject")
external Object3D createMultiMaterialObject(
    Geometry geometry, List<Material> materials);
@JS("SceneUtils.detach")
external void detach(Object3D child, Object3D parent, Scene scene);
@JS("SceneUtils.attach")
external void attach(Object3D child, Scene scene, Object3D parent);
// End module SceneUtils

// Module ShapeUtils
@JS("ShapeUtils.area")
external num area(List<num> contour);
@JS("ShapeUtils.triangulate")
external List<num> triangulate(List<num> contour, bool indices);
@JS("ShapeUtils.triangulateShape")
external List<num> triangulateShape(List<num> contour, List<dynamic> holes);
@JS("ShapeUtils.isClockWise")
external bool isClockWise(List<num> pts);
// End module ShapeUtils

/// Extras / Audio /////////////////////////////////////////////////////////////////////
@JS()
class Audio extends Object3D {
  // @Ignore
  Audio.fakeConstructor$() : super.fakeConstructor$();
  external factory Audio(AudioListener listener);
  external String get type;
  external set type(String v);
  external AudioContext get context;
  external set context(AudioContext v);
  external AudioBufferSourceNode get source;
  external set source(AudioBufferSourceNode v);
  external GainNode get gain;
  external set gain(GainNode v);
  external bool get autoplay;
  external set autoplay(bool v);
  external num get startTime;
  external set startTime(num v);
  external num get playbackRate;
  external set playbackRate(num v);
  external bool get hasPlaybackControl;
  external set hasPlaybackControl(bool v);
  external bool get isPlaying;
  external set isPlaying(bool v);
  external String get sourceType;
  external set sourceType(String v);
  external List<dynamic> get filters;
  external set filters(List<dynamic> v);
  external GainNode getOutput();
  external Audio setNodeSource(AudioBufferSourceNode audioNode);
  external Audio setBuffer(AudioBuffer audioBuffer);
  external Audio play();
  external Audio pause();
  external Audio stop();
  external Audio connect();
  external Audio disconnect();
  external List<dynamic> getFilters();
  /*external Audio setFilter(List<dynamic> value);*/
  /*external Audio setFilter(dynamic filter);*/
  external Audio setFilter(dynamic /*List<dynamic>|dynamic*/ value_filter);
  external dynamic getFilter();
  external Audio setPlaybackRate(num value);
  external num getPlaybackRate();
  external void onEnded();
  external bool getLoop();
  external void setLoop(bool value);
  external num getVolume();
  external Audio setVolume(num value);

  /// Use [AudioLoader] instead.
  external Audio load(String file);
}

@JS()
class AudioAnalyser {
  // @Ignore
  AudioAnalyser.fakeConstructor$();
  external factory AudioAnalyser(dynamic audio, num fftSize);
  external dynamic get analyser;
  external set analyser(dynamic v);
  external Uint8List get data;
  external set data(Uint8List v);
  external Uint8List getFrequencyData();
  external num getAverageFrequency();

  /// Use [AudioAnalyser#getFrequencyData .getFrequencyData()] instead.
  external dynamic getData(dynamic file);
}

@JS()
external AudioContext get AudioContext;

@JS()
class AudioBuffer {
  // @Ignore
  AudioBuffer.fakeConstructor$();
  external factory AudioBuffer(dynamic context);
  external dynamic get context;
  external set context(dynamic v);
  external bool get ready;
  external set ready(bool v);
  external List<Function> get readyCallbacks;
  external set readyCallbacks(List<Function> v);
  external AudioBuffer load(String file);
  external void onReady(Function callback);
}

@JS()
class PositionalAudio extends Audio {
  // @Ignore
  PositionalAudio.fakeConstructor$() : super.fakeConstructor$();
  external factory PositionalAudio(AudioListener listener);
  external PannerNode get panner;
  external set panner(PannerNode v);
  external void setRefDistance(num value);
  external num getRefDistance();
  external void setRolloffFactor(num value);
  external num getRolloffFactor();
  external void setDistanceModel(num value);
  external num getDistanceModel();
  external void setMaxDistance(num value);
  external num getMaxDistance();
}

@JS()
class AudioListener extends Object3D {
  // @Ignore
  AudioListener.fakeConstructor$() : super.fakeConstructor$();
  external factory AudioListener();
  external String get type;
  external set type(String v);
  external AudioContext get context;
  external set context(AudioContext v);
  external GainNode get gain;
  external set gain(GainNode v);
  external GainNode getInput();
  external void removeFilter();
  external void setFilter(dynamic value);
  external dynamic getFilter();
  external void setMasterVolume(num value);
  external num getMasterVolume();
}

/// Extras / Core /////////////////////////////////////////////////////////////////////

/// An extensible curve object which contains methods for interpolation
/// class Curve&lt;T extends Vector&gt;
@JS()
class Curve<T extends Vector> {
  // @Ignore
  Curve.fakeConstructor$();

  /// This value determines the amount of divisions when calculating the cumulative segment lengths of a curve via .getLengths.
  /// To ensure precision when using methods like .getSpacedPoints, it is recommended to increase .arcLengthDivisions if the curve is very large.
  /// Default is 200.
  external num get arcLengthDivisions;
  external set arcLengthDivisions(num v);

  /// Returns a vector for point t of the curve where t is between 0 and 1
  /// getPoint(t: number): T;
  external T getPoint(num t, [T optionalTarget]);

  /// Returns a vector for point at relative position in curve according to arc length
  /// getPointAt(u: number): T;
  external T getPointAt(num u, [T optionalTarget]);

  /// Get sequence of points using getPoint( t )
  /// getPoints(divisions?: number): T[];
  external List<T> getPoints([num divisions]);

  /// Get sequence of equi-spaced points using getPointAt( u )
  /// getSpacedPoints(divisions?: number): T[];
  external List<T> getSpacedPoints([num divisions]);

  /// Get total curve arc length
  external num getLength();

  /// Get list of cumulative segment lengths
  external List<num> getLengths([num divisions]);

  /// Update the cumlative segment distance cache
  external void updateArcLengths();

  /// Given u ( 0 .. 1 ), get a t to find p. This gives you points which are equi distance
  external num getUtoTmapping(num u, num distance);

  /// Returns a unit vector tangent at t. If the subclassed curve do not implement its tangent derivation, 2 points a small delta apart will be used to find its gradient which seems to give a reasonable approximation
  /// getTangent(t: number): T;
  external T getTangent(num t);

  /// Returns tangent at equidistance point u on the curve
  /// getTangentAt(u: number): T;
  external T getTangentAt(num u);

  /// since r84.
  external static Function create(
      Function constructorFunc, Function getPointFunc);
}

@JS()
class CurvePath<T extends Vector> extends Curve<T> {
  // @Ignore
  CurvePath.fakeConstructor$() : super.fakeConstructor$();
  external factory CurvePath();
  external List<Curve<T>> get curves;
  external set curves(List<Curve<T>> v);
  external bool get autoClose;
  external set autoClose(bool v);
  external void add(Curve<T> curve);
  external bool checkConnection();
  external void closePath();
  external T getPoint(num t);
  external num getLength();
  external void updateArcLengths();
  external List<num> getCurveLengths();
  external List<T> getSpacedPoints([num divisions]);
  external List<T> getPoints([num divisions]);

  /// Use [Geometry#setFromPoints new THREE.Geometry().setFromPoints( points )] instead.
  external Geometry createPointsGeometry(num divisions);

  /// Use [Geometry#setFromPoints new THREE.Geometry().setFromPoints( points )] instead.
  external Geometry createSpacedPointsGeometry(num divisions);

  /// Use [Geometry#setFromPoints new THREE.Geometry().setFromPoints( points )] instead.
  external Geometry createGeometry(List<T> points);
}

@JS()
class PathActions {
  external static num get MOVE_TO;
  external static num get LINE_TO;
  external static num get QUADRATIC_CURVE_TO;
  external static num get BEZIER_CURVE_TO;
  external static num get CSPLINE_THRU;
  external static num get ARC;
  external static num get ELLIPSE;
}

@anonymous
@JS()
abstract class PathAction {
  external num /*enum PathActions*/ get action;
  external set action(num /*enum PathActions*/ v);
  external dynamic get args;
  external set args(dynamic v);
  external factory PathAction({num /*enum PathActions*/ action, dynamic args});
}

/// a 2d path representation, comprising of points, lines, and cubes, similar to the html5 2d canvas api. It extends CurvePath.
@JS()
class Path extends CurvePath<Vector2> {
  // @Ignore
  Path.fakeConstructor$() : super.fakeConstructor$();
  external factory Path([List<Vector2> points]);
  external Vector2 get currentPoint;
  external set currentPoint(Vector2 v);

  /// Use [Path#setFromPoints .setFromPoints()] instead.
  external void fromPoints(List<Vector2> vectors);
  external void setFromPoints(List<Vector2> vectors);
  external void moveTo(num x, num y);
  external void lineTo(num x, num y);
  external void quadraticCurveTo(num aCPx, num aCPy, num aX, num aY);
  external void bezierCurveTo(
      num aCP1x, num aCP1y, num aCP2x, num aCP2y, num aX, num aY);
  external void splineThru(List<Vector2> pts);
  external void arc(num aX, num aY, num aRadius, num aStartAngle, num aEndAngle,
      bool aClockwise);
  external void absarc(num aX, num aY, num aRadius, num aStartAngle,
      num aEndAngle, bool aClockwise);
  external void ellipse(num aX, num aY, num xRadius, num yRadius,
      num aStartAngle, num aEndAngle, bool aClockwise, num aRotation);
  external void absellipse(num aX, num aY, num xRadius, num yRadius,
      num aStartAngle, num aEndAngle, bool aClockwise, num aRotation);
}

@JS()
class ShapePath {
  // @Ignore
  ShapePath.fakeConstructor$();
  external factory ShapePath();
  external List<dynamic> get subPaths;
  external set subPaths(List<dynamic> v);
  external dynamic get currentPath;
  external set currentPath(dynamic v);
  external void moveTo(num x, num y);
  external void lineTo(num x, num y);
  external void quadraticCurveTo(num aCPx, num aCPy, num aX, num aY);
  external void bezierCurveTo(
      num aCP1x, num aCP1y, num aCP2x, num aCP2y, num aX, num aY);
  external void splineThru(List<Vector2> pts);
  external List<Shape> toShapes(bool isCCW, dynamic noHoles);
}

/// Defines a 2d shape plane using paths.
@JS()
class Shape extends Path {
  // @Ignore
  Shape.fakeConstructor$() : super.fakeConstructor$();
  external factory Shape([List<Vector2> points]);
  external List<Path> get holes;
  external set holes(List<Path> v);

  /// Use [ExtrudeGeometry ExtrudeGeometry()] instead.
  external ExtrudeGeometry extrude([dynamic options]);

  /// Use [ShapeGeometry ShapeGeometry()] instead.
  external ShapeGeometry makeGeometry([dynamic options]);
  external List<List<Vector2>> getPointsHoles(num divisions);

  /// Use [Shape#extractPoints .extractPoints()] instead.
  external dynamic
      /*{
        shape: Vector2[];
        holes: Vector2[][];
    }*/
      extractAllPoints(num divisions);
  external List<Vector2> extractPoints(num divisions);
}

/// Extras / Curves /////////////////////////////////////////////////////////////////////

// Module CurveUtils
@JS("CurveUtils.tangentQuadraticBezier")
external num tangentQuadraticBezier(num t, num p0, num p1, num p2);
@JS("CurveUtils.tangentCubicBezier")
external num tangentCubicBezier(num t, num p0, num p1, num p2, num p3);
@JS("CurveUtils.tangentSpline")
external num tangentSpline(num t, num p0, num p1, num p2, num p3);
@JS("CurveUtils.interpolate")
external num interpolate(num p0, num p1, num p2, num p3, num t);

// End module CurveUtils
@JS()
class CatmullRomCurve3 extends Curve<Vector3> {
  // @Ignore
  CatmullRomCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory CatmullRomCurve3(
      [List<Vector3> points, bool closed, String curveType, num tension]);
  external List<Vector3> get points;
  external set points(List<Vector3> v);
  external Vector3 getPoint(num t);
}

@JS()
class CubicBezierCurve extends Curve<Vector2> {
  // @Ignore
  CubicBezierCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory CubicBezierCurve(
      Vector2 v0, Vector2 v1, Vector2 v2, Vector2 v3);
  external Vector2 get v0;
  external set v0(Vector2 v);
  external Vector2 get v1;
  external set v1(Vector2 v);
  external Vector2 get v2;
  external set v2(Vector2 v);
  external Vector2 get v3;
  external set v3(Vector2 v);
}

@JS()
class CubicBezierCurve3 extends Curve<Vector3> {
  // @Ignore
  CubicBezierCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory CubicBezierCurve3(
      Vector3 v0, Vector3 v1, Vector3 v2, Vector3 v3);
  external Vector3 get v0;
  external set v0(Vector3 v);
  external Vector3 get v1;
  external set v1(Vector3 v);
  external Vector3 get v2;
  external set v2(Vector3 v);
  external Vector3 get v3;
  external set v3(Vector3 v);
  external Vector3 getPoint(num t);
}

@JS()
class EllipseCurve extends Curve<Vector2> {
  // @Ignore
  EllipseCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory EllipseCurve(num aX, num aY, num xRadius, num yRadius,
      num aStartAngle, num aEndAngle, bool aClockwise, num aRotation);
  external num get aX;
  external set aX(num v);
  external num get aY;
  external set aY(num v);
  external num get xRadius;
  external set xRadius(num v);
  external num get yRadius;
  external set yRadius(num v);
  external num get aStartAngle;
  external set aStartAngle(num v);
  external num get aEndAngle;
  external set aEndAngle(num v);
  external bool get aClockwise;
  external set aClockwise(bool v);
  external num get aRotation;
  external set aRotation(num v);
}

@JS()
class ArcCurve extends EllipseCurve {
  // @Ignore
  ArcCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory ArcCurve(num aX, num aY, num aRadius, num aStartAngle,
      num aEndAngle, bool aClockwise);
}

@JS()
class LineCurve extends Curve<Vector2> {
  // @Ignore
  LineCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory LineCurve(Vector2 v1, Vector2 v2);
  external Vector2 get v1;
  external set v1(Vector2 v);
  external Vector2 get v2;
  external set v2(Vector2 v);
}

@JS()
class LineCurve3 extends Curve<Vector3> {
  // @Ignore
  LineCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory LineCurve3(Vector3 v1, Vector3 v2);
  external Vector3 get v1;
  external set v1(Vector3 v);
  external Vector3 get v2;
  external set v2(Vector3 v);
  external Vector3 getPoint(num t);
}

@JS()
class QuadraticBezierCurve extends Curve<Vector2> {
  // @Ignore
  QuadraticBezierCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory QuadraticBezierCurve(Vector2 v0, Vector2 v1, Vector2 v2);
  external Vector2 get v0;
  external set v0(Vector2 v);
  external Vector2 get v1;
  external set v1(Vector2 v);
  external Vector2 get v2;
  external set v2(Vector2 v);
}

@JS()
class QuadraticBezierCurve3 extends Curve<Vector3> {
  // @Ignore
  QuadraticBezierCurve3.fakeConstructor$() : super.fakeConstructor$();
  external factory QuadraticBezierCurve3(Vector3 v0, Vector3 v1, Vector3 v2);
  external Vector3 get v0;
  external set v0(Vector3 v);
  external Vector3 get v1;
  external set v1(Vector3 v);
  external Vector3 get v2;
  external set v2(Vector3 v);
  external Vector3 getPoint(num t);
}

@JS()
class SplineCurve extends Curve<Vector2> {
  // @Ignore
  SplineCurve.fakeConstructor$() : super.fakeConstructor$();
  external factory SplineCurve([List<Vector2> points]);
  external List<Vector2> get points;
  external set points(List<Vector2> v);
}

/// Extras / Geometries /////////////////////////////////////////////////////////////////////
@JS()
class BoxBufferGeometry extends BufferGeometry {
  // @Ignore
  BoxBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory BoxBufferGeometry(num width, num height, num depth,
      [num widthSegments, num heightSegments, num depthSegments]);
  external dynamic
      /*{
        width: number;
        height: number;
        depth: number;
        widthSegments: number;
        heightSegments: number;
        depthSegments: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        width: number;
        height: number;
        depth: number;
        widthSegments: number;
        heightSegments: number;
        depthSegments: number;
    }*/
      v);
}

/// BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
@JS()
class BoxGeometry extends Geometry {
  // @Ignore
  BoxGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory BoxGeometry(num width, num height, num depth,
      [num widthSegments, num heightSegments, num depthSegments]);
  external dynamic
      /*{
        width: number;
        height: number;
        depth: number;
        widthSegments: number;
        heightSegments: number;
        depthSegments: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        width: number;
        height: number;
        depth: number;
        widthSegments: number;
        heightSegments: number;
        depthSegments: number;
    }*/
      v);
}

/// Use [BoxGeometry] instead.
@JS()
class CubeGeometry extends BoxGeometry {
  // @Ignore
  CubeGeometry.fakeConstructor$() : super.fakeConstructor$();
}

@JS()
class CircleBufferGeometry extends BufferGeometry {
  // @Ignore
  CircleBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CircleBufferGeometry(
      [num radius, num segments, num thetaStart, num thetaLength]);
  external dynamic
      /*{
        radius: number;
        segments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        segments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class CircleGeometry extends Geometry {
  // @Ignore
  CircleGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CircleGeometry(
      [num radius, num segments, num thetaStart, num thetaLength]);
  external dynamic
      /*{
        radius: number;
        segments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        segments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class CylinderBufferGeometry extends BufferGeometry {
  // @Ignore
  CylinderBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CylinderBufferGeometry(
      [num radiusTop,
      num radiusBottom,
      num height,
      num radialSegments,
      num heightSegments,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
        radiusTop: number;
        radiusBottom: number;
        height: number;
        radialSegments: number;
        heightSegments: number;
        openEnded: boolean;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radiusTop: number;
        radiusBottom: number;
        height: number;
        radialSegments: number;
        heightSegments: number;
        openEnded: boolean;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class CylinderGeometry extends Geometry {
  // @Ignore
  CylinderGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory CylinderGeometry(
      [num radiusTop,
      num radiusBottom,
      num height,
      num radiusSegments,
      num heightSegments,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
        radiusTop: number;
        radiusBottom: number;
        height: number;
        radialSegments: number;
        heightSegments: number;
        openEnded: boolean;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radiusTop: number;
        radiusBottom: number;
        height: number;
        radialSegments: number;
        heightSegments: number;
        openEnded: boolean;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class ConeBufferGeometry extends BufferGeometry {
  // @Ignore
  ConeBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ConeBufferGeometry(
      [num radius,
      num height,
      num radialSegment,
      num heightSegment,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
}

@JS()
class ConeGeometry extends CylinderGeometry {
  // @Ignore
  ConeGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ConeGeometry(
      [num radius,
      num height,
      num radialSegment,
      num heightSegment,
      bool openEnded,
      num thetaStart,
      num thetaLength]);
}

@JS()
class DodecahedronBufferGeometry extends PolyhedronBufferGeometry {
  // @Ignore
  DodecahedronBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory DodecahedronBufferGeometry([num radius, num detail]);
}

@JS()
class DodecahedronGeometry extends Geometry {
  // @Ignore
  DodecahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory DodecahedronGeometry([num radius, num detail]);
  external dynamic /*{
        radius: number;
        detail: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        detail: number;
    }*/
      v);
}

@JS()
class EdgesGeometry extends BufferGeometry {
  // @Ignore
  EdgesGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory EdgesGeometry(
      dynamic /*BufferGeometry|Geometry*/ geometry, num thresholdAngle);
}

@JS()
class ExtrudeGeometry extends Geometry {
  // @Ignore
  ExtrudeGeometry.fakeConstructor$() : super.fakeConstructor$();
  /*external factory ExtrudeGeometry([Shape shape, dynamic options]);*/
  /*external factory ExtrudeGeometry([List<Shape> shapes, dynamic options]);*/
  external factory ExtrudeGeometry(
      [dynamic /*Shape|List<Shape>*/ shape_shapes, dynamic options]);
  external static dynamic
      /*{
        generateTopUV(geometry: Geometry, vertex: number[], indexA: number, indexB: number, indexC: number): Vector2[];
        generateSideWallUV(geometry: Geometry, vertex: number[], indexA: number, indexB: number, indexC: number, indexD: number): Vector2[];
    }*/
      get WorldUVGenerator;
  external static set WorldUVGenerator(
      dynamic /*{
        generateTopUV(geometry: Geometry, vertex: number[], indexA: number, indexB: number, indexC: number): Vector2[];
        generateSideWallUV(geometry: Geometry, vertex: number[], indexA: number, indexB: number, indexC: number, indexD: number): Vector2[];
    }*/
      v);
  external void addShapeList(List<Shape> shapes, [dynamic options]);
  external void addShape(Shape shape, [dynamic options]);
}

@JS()
class ExtrudeBufferGeometry extends BufferGeometry {
  // @Ignore
  ExtrudeBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ExtrudeBufferGeometry([List<Shape> shapes, dynamic options]);
  external static dynamic
      /*{
        generateTopUV(geometry: Geometry, vertices: number[], indexA: number, indexB: number, indexC: number): Vector2[];
        generateSideWallUV(geometry: Geometry, vertices: number[], indexA: number, indexB: number, indexC: number, indexD: number): Vector2[];
    }*/
      get WorldUVGenerator;
  external static set WorldUVGenerator(
      dynamic /*{
        generateTopUV(geometry: Geometry, vertices: number[], indexA: number, indexB: number, indexC: number): Vector2[];
        generateSideWallUV(geometry: Geometry, vertices: number[], indexA: number, indexB: number, indexC: number, indexD: number): Vector2[];
    }*/
      v);
  external void addShapeList(List<Shape> shapes, [dynamic options]);
  external void addShape(Shape shape, [dynamic options]);
}

@JS()
class IcosahedronBufferGeometry extends PolyhedronBufferGeometry {
  // @Ignore
  IcosahedronBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory IcosahedronBufferGeometry([num radius, num detail]);
}

@JS()
class IcosahedronGeometry extends PolyhedronGeometry {
  // @Ignore
  IcosahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory IcosahedronGeometry([num radius, num detail]);
}

@JS()
class LatheBufferGeometry extends BufferGeometry {
  // @Ignore
  LatheBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory LatheBufferGeometry(List<Vector2> points,
      [num segments, num phiStart, num phiLength]);
  external dynamic
      /*{
        points: Vector2[];
        segments: number;
        phiStart: number;
        phiLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        points: Vector2[];
        segments: number;
        phiStart: number;
        phiLength: number;
    }*/
      v);
}

@JS()
class LatheGeometry extends Geometry {
  // @Ignore
  LatheGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory LatheGeometry(List<Vector2> points,
      [num segments, num phiStart, num phiLength]);
  external dynamic
      /*{
        points: Vector2[];
        segments: number;
        phiStart: number;
        phiLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        points: Vector2[];
        segments: number;
        phiStart: number;
        phiLength: number;
    }*/
      v);
}

@JS()
class OctahedronBufferGeometry extends PolyhedronBufferGeometry {
  // @Ignore
  OctahedronBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory OctahedronBufferGeometry([num radius, num detail]);
}

@JS()
class OctahedronGeometry extends PolyhedronGeometry {
  // @Ignore
  OctahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory OctahedronGeometry([num radius, num detail]);
}

@JS()
class ParametricGeometry extends Geometry {
  // @Ignore
  ParametricGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ParametricGeometry(
      void func(num u, num v, Vector3 dest), num slices, num stacks);
  external dynamic
      /*{
        func: (u: number, v: number, dest:Vector3) => void;
        slices: number;
        stacks: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        func: (u: number, v: number, dest:Vector3) => void;
        slices: number;
        stacks: number;
    }*/
      v);
}

@JS()
class PlaneBufferGeometry extends BufferGeometry {
  // @Ignore
  PlaneBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PlaneBufferGeometry(num width, num height,
      [num widthSegments, num heightSegments]);
  external dynamic
      /*{
        width: number;
        height: number;
        widthSegments: number;
        heightSegments: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        width: number;
        height: number;
        widthSegments: number;
        heightSegments: number;
    }*/
      v);
}

@JS()
class PlaneGeometry extends Geometry {
  // @Ignore
  PlaneGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PlaneGeometry(num width, num height,
      [num widthSegments, num heightSegments]);
  external dynamic
      /*{
        width: number;
        height: number;
        widthSegments: number;
        heightSegments: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        width: number;
        height: number;
        widthSegments: number;
        heightSegments: number;
    }*/
      v);
}

@JS()
class PolyhedronBufferGeometry extends BufferGeometry {
  // @Ignore
  PolyhedronBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PolyhedronBufferGeometry(
      List<num> vertices, List<num> indices, num radius, num detail);
  external dynamic
      /*{
		vertices: number[];
		indices: number[];
		radius: number;
		detail: number;
	}*/
      get parameters;
  external set parameters(
      dynamic /*{
		vertices: number[];
		indices: number[];
		radius: number;
		detail: number;
	}*/
      v);
}

@JS()
class PolyhedronGeometry extends Geometry {
  // @Ignore
  PolyhedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory PolyhedronGeometry(List<num> vertices, List<num> indices,
      [num radius, num detail]);
  external dynamic
      /*{
        vertices: number[];
        indices: number[];
        radius: number;
        detail: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        vertices: number[];
        indices: number[];
        radius: number;
        detail: number;
    }*/
      v);
  external Sphere get boundingSphere;
  external set boundingSphere(Sphere v);
}

@JS()
class RingBufferGeometry extends BufferGeometry {
  // @Ignore
  RingBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory RingBufferGeometry(
      [num innerRadius,
      num outerRadius,
      num thetaSegments,
      num phiSegments,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
        innerRadius: number;
        outerRadius: number;
        thetaSegments: number;
        phiSegments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        innerRadius: number;
        outerRadius: number;
        thetaSegments: number;
        phiSegments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class RingGeometry extends Geometry {
  // @Ignore
  RingGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory RingGeometry(
      [num innerRadius,
      num outerRadius,
      num thetaSegments,
      num phiSegments,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
        innerRadius: number;
        outerRadius: number;
        thetaSegments: number;
        phiSegments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        innerRadius: number;
        outerRadius: number;
        thetaSegments: number;
        phiSegments: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class ShapeGeometry extends Geometry {
  // @Ignore
  ShapeGeometry.fakeConstructor$() : super.fakeConstructor$();
  /*external factory ShapeGeometry(Shape shape, [dynamic options]);*/
  /*external factory ShapeGeometry(List<Shape> shapes, [dynamic options]);*/
  external factory ShapeGeometry(dynamic /*Shape|List<Shape>*/ shape_shapes,
      [dynamic options]);
  external ShapeGeometry addShapeList(List<Shape> shapes, dynamic options);
  external void addShape(Shape shape, [dynamic options]);
}

@JS()
class ShapeBufferGeometry extends BufferGeometry {
  // @Ignore
  ShapeBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory ShapeBufferGeometry(dynamic /*Shape|List<Shape>*/ shapes,
      [num curveSegments]);
}

@JS()
class SphereBufferGeometry extends BufferGeometry {
  // @Ignore
  SphereBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory SphereBufferGeometry(num radius,
      [num widthSegments,
      num heightSegments,
      num phiStart,
      num phiLength,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
        radius: number;
        widthSegments: number;
        heightSegments: number;
        phiStart: number;
        phiLength: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        widthSegments: number;
        heightSegments: number;
        phiStart: number;
        phiLength: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

/// A class for generating sphere geometries
@JS()
class SphereGeometry extends Geometry {
  // @Ignore
  SphereGeometry.fakeConstructor$() : super.fakeConstructor$();

  /// The geometry is created by sweeping and calculating vertexes around the Y axis (horizontal sweep) and the Z axis (vertical sweep). Thus, incomplete spheres (akin to 'sphere slices') can be created through the use of different values of phiStart, phiLength, thetaStart and thetaLength, in order to define the points in which we start (or end) calculating those vertices.
  external factory SphereGeometry(num radius,
      [num widthSegments,
      num heightSegments,
      num phiStart,
      num phiLength,
      num thetaStart,
      num thetaLength]);
  external dynamic
      /*{
        radius: number;
        widthSegments: number;
        heightSegments: number;
        phiStart: number;
        phiLength: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        widthSegments: number;
        heightSegments: number;
        phiStart: number;
        phiLength: number;
        thetaStart: number;
        thetaLength: number;
    }*/
      v);
}

@JS()
class TetrahedronBufferGeometry extends PolyhedronBufferGeometry {
  // @Ignore
  TetrahedronBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TetrahedronBufferGeometry([num radius, num detail]);
}

@JS()
class TetrahedronGeometry extends PolyhedronGeometry {
  // @Ignore
  TetrahedronGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TetrahedronGeometry([num radius, num detail]);
}

@anonymous
@JS()
abstract class TextGeometryParameters {
  external Font get font;
  external set font(Font v);
  external num get size;
  external set size(num v);
  external num get height;
  external set height(num v);
  external num get curveSegments;
  external set curveSegments(num v);
  external bool get bevelEnabled;
  external set bevelEnabled(bool v);
  external num get bevelThickness;
  external set bevelThickness(num v);
  external num get bevelSize;
  external set bevelSize(num v);
  external num get bevelSegments;
  external set bevelSegments(num v);
  external factory TextGeometryParameters(
      {Font font,
      num size,
      num height,
      num curveSegments,
      bool bevelEnabled,
      num bevelThickness,
      num bevelSize,
      num bevelSegments});
}

@JS()
class TextGeometry extends ExtrudeGeometry {
  // @Ignore
  TextGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TextGeometry(String text,
      [TextGeometryParameters parameters]);
  external dynamic
      /*{
        font: Font;
        size: number;
        height: number;
        curveSegments: number;
        bevelEnabled: boolean;
        bevelThickness: number;
        bevelSize: number;
        bevelSegments: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        font: Font;
        size: number;
        height: number;
        curveSegments: number;
        bevelEnabled: boolean;
        bevelThickness: number;
        bevelSize: number;
        bevelSegments: number;
    }*/
      v);
}

@JS()
class TextBufferGeometry extends ExtrudeBufferGeometry {
  // @Ignore
  TextBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TextBufferGeometry(String text,
      [TextGeometryParameters parameters]);
  external dynamic
      /*{
        font: Font;
        size: number;
        height: number;
        curveSegments: number;
        bevelEnabled: boolean;
        bevelThickness: number;
        bevelSize: number;
        bevelSegments: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        font: Font;
        size: number;
        height: number;
        curveSegments: number;
        bevelEnabled: boolean;
        bevelThickness: number;
        bevelSize: number;
        bevelSegments: number;
    }*/
      v);
}

@JS()
class TorusBufferGeometry extends BufferGeometry {
  // @Ignore
  TorusBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusBufferGeometry(
      [num radius, num tube, num radialSegments, num tubularSegments, num arc]);
  external dynamic
      /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        arc: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        arc: number;
    }*/
      v);
}

@JS()
class TorusGeometry extends Geometry {
  // @Ignore
  TorusGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusGeometry(
      [num radius, num tube, num radialSegments, num tubularSegments, num arc]);
  external dynamic
      /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        arc: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        arc: number;
    }*/
      v);
}

@JS()
class TorusKnotBufferGeometry extends BufferGeometry {
  // @Ignore
  TorusKnotBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusKnotBufferGeometry(
      [num radius,
      num tube,
      num radialSegments,
      num tubularSegments,
      num p,
      num q,
      num heightScale]);
  external dynamic
      /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        p: number;
        q: number;
        heightScale: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        p: number;
        q: number;
        heightScale: number;
    }*/
      v);
}

@JS()
class TorusKnotGeometry extends Geometry {
  // @Ignore
  TorusKnotGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TorusKnotGeometry(
      [num radius,
      num tube,
      num radialSegments,
      num tubularSegments,
      num p,
      num q,
      num heightScale]);
  external dynamic
      /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        p: number;
        q: number;
        heightScale: number;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        radius: number;
        tube: number;
        radialSegments: number;
        tubularSegments: number;
        p: number;
        q: number;
        heightScale: number;
    }*/
      v);
}

@JS()
class TubeGeometry extends Geometry {
  // @Ignore
  TubeGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TubeGeometry(Curve<Vector3> path,
      [num segments,
      num radius,
      num radiusSegments,
      bool closed,
      num taper(num u)]);
  external dynamic
      /*{
        path: Curve<Vector3>;
        segments: number;
        radius: number;
        radialSegments: number;
        closed: boolean;
        taper: (u: number) => number; // NoTaper or SinusoidalTaper;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        path: Curve<Vector3>;
        segments: number;
        radius: number;
        radialSegments: number;
        closed: boolean;
        taper: (u: number) => number; // NoTaper or SinusoidalTaper;
    }*/
      v);
  external List<Vector3> get tangents;
  external set tangents(List<Vector3> v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external List<Vector3> get binormals;
  external set binormals(List<Vector3> v);
  external static num NoTaper([num u]);
  external static num SinusoidalTaper(num u);
  external static void FrenetFrames(Path path, num segments, bool closed);
}

@JS()
class TubeBufferGeometry extends BufferGeometry {
  // @Ignore
  TubeBufferGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory TubeBufferGeometry(Curve<Vector3> path,
      [num segments, num radius, num radiusSegments, bool closed]);
  external dynamic
      /*{
        path: Curve<Vector3>;
        segments: number;
        radius: number;
        radialSegments: number;
        closed: boolean;
    }*/
      get parameters;
  external set parameters(
      dynamic /*{
        path: Curve<Vector3>;
        segments: number;
        radius: number;
        radialSegments: number;
        closed: boolean;
    }*/
      v);
  external List<Vector3> get tangents;
  external set tangents(List<Vector3> v);
  external List<Vector3> get normals;
  external set normals(List<Vector3> v);
  external List<Vector3> get binormals;
  external set binormals(List<Vector3> v);
}

@JS()
class WireframeGeometry extends BufferGeometry {
  // @Ignore
  WireframeGeometry.fakeConstructor$() : super.fakeConstructor$();
  external factory WireframeGeometry(
      dynamic /*Geometry|BufferGeometry*/ geometry);
}

/// Extras / Helpers /////////////////////////////////////////////////////////////////////
@JS()
class ArrowHelper extends Object3D {
  // @Ignore
  ArrowHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory ArrowHelper(Vector3 dir,
      [Vector3 origin, num length, num hex, num headLength, num headWidth]);
  external Line get line;
  external set line(Line v);
  external Mesh get cone;
  external set cone(Mesh v);
  external void setDirection(Vector3 dir);
  external void setLength(num length, [num headLength, num headWidth]);
  external void setColor(num hex);
}

@JS()
class AxesHelper extends LineSegments {
  // @Ignore
  AxesHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory AxesHelper([num size]);
}

/// Use [BoxHelper THREE.BoxHelper] instead.
@JS()
class BoundingBoxHelper extends Mesh {
  // @Ignore
  BoundingBoxHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory BoundingBoxHelper([Object3D object, num hex]);
  external Object3D get object;
  external set object(Object3D v);
  external Box3 get box;
  external set box(Box3 v);
  external void update();
}

@JS()
class BoxHelper extends LineSegments {
  // @Ignore
  BoxHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory BoxHelper([Object3D object, Color color]);
  external void update([Object3D object]);
}

@JS()
class CameraHelper extends LineSegments {
  // @Ignore
  CameraHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory CameraHelper(Camera camera);
  external Camera get camera;
  external set camera(Camera v);
  external dynamic /*JSMap of <String,List<num>>*/ get pointMap;
  external set pointMap(dynamic /*JSMap of <String,List<num>>*/ v);
  external void update();
}

@JS()
class DirectionalLightHelper extends Object3D {
  // @Ignore
  DirectionalLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory DirectionalLightHelper(Light light,
      [num size, dynamic /*Color|String|num*/ color]);
  external Light get light;
  external set light(Light v);
  external Line get lightPlane;
  external set lightPlane(Line v);
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external void dispose();
  external void update();
}

/// Use [EdgesGeometry THREE.EdgesGeometry]
@JS()
class EdgesHelper extends LineSegments {
  // @Ignore
  EdgesHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory EdgesHelper(Object3D object, [num hex, num thresholdAngle]);
}

@JS()
class FaceNormalsHelper extends LineSegments {
  // @Ignore
  FaceNormalsHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory FaceNormalsHelper(Object3D object,
      [num size, num hex, num linewidth]);
  external Object3D get object;
  external set object(Object3D v);
  external num get size;
  external set size(num v);
  external void update([Object3D object]);
}

@JS()
class GridHelper extends LineSegments {
  // @Ignore
  GridHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory GridHelper(num size, num divisions,
      [dynamic /*Color|num*/ color1, dynamic /*Color|num*/ color2]);

  /// Colors should be specified in the constructor.
  external void setColors(
      [dynamic /*Color|num*/ color1, dynamic /*Color|num*/ color2]);
}

@JS()
class HemisphereLightHelper extends Object3D {
  // @Ignore
  HemisphereLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory HemisphereLightHelper(Light light, num sphereSize);
  external Light get light;
  external set light(Light v);
  external List<Color> get colors;
  external set colors(List<Color> v);
  external Mesh get lightSphere;
  external set lightSphere(Mesh v);
  external void dispose();
  external void update();
}

@JS()
class PointLightHelper extends Object3D {
  // @Ignore
  PointLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory PointLightHelper(Light light,
      [num sphereSize, dynamic /*Color|String|num*/ color]);
  external Light get light;
  external set light(Light v);
  external num get sphereSize;
  external set sphereSize(num v);
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external void dispose();
  external void update();
}

@JS()
class SkeletonHelper extends LineSegments {
  // @Ignore
  SkeletonHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory SkeletonHelper(Object3D bone);
  external List<Bone> get bones;
  external set bones(List<Bone> v);
  external Object3D get root;
  external set root(Object3D v);
  external List<Bone> getBoneList(Object3D object);
  external void update();
}

@JS()
class SpotLightHelper extends Object3D {
  // @Ignore
  SpotLightHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory SpotLightHelper(Light light,
      [dynamic /*Color|String|num*/ color]);
  external Light get light;
  external set light(Light v);
  external dynamic /*Color|String|num*/ get color;
  external set color(dynamic /*Color|String|num*/ v);
  external void dispose();
  external void update();
}

@JS()
class VertexNormalsHelper extends LineSegments {
  // @Ignore
  VertexNormalsHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory VertexNormalsHelper(Object3D object,
      [num size, num hex, num linewidth]);
  external Object3D get object;
  external set object(Object3D v);
  external num get size;
  external set size(num v);
  external void update([Object3D object]);
}

@JS()
class PlaneHelper extends LineSegments {
  // @Ignore
  PlaneHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory PlaneHelper(Plane plane, [num size, num hex]);
  external Plane get plane;
  external set plane(Plane v);
  external num get size;
  external set size(num v);
  external void updateMatrixWorld(bool force);
}

/// Use [WireframeGeometry THREE.WireframeGeometry] instead.
@JS()
class WireframeHelper extends LineSegments {
  // @Ignore
  WireframeHelper.fakeConstructor$() : super.fakeConstructor$();
  external factory WireframeHelper(Object3D object, [num hex]);
}

/// Extras / Objects /////////////////////////////////////////////////////////////////////
@JS()
class ImmediateRenderObject extends Object3D {
  // @Ignore
  ImmediateRenderObject.fakeConstructor$() : super.fakeConstructor$();
  external factory ImmediateRenderObject(Material material);
  external Material get material;
  external set material(Material v);
  external void render(Function renderCallback);
}

@anonymous
@JS()
abstract class MorphBlendMeshAnimation {
  external num get start;
  external set start(num v);
  external num get end;
  external set end(num v);
  external num get length;
  external set length(num v);
  external num get fps;
  external set fps(num v);
  external num get duration;
  external set duration(num v);
  external num get lastFrame;
  external set lastFrame(num v);
  external num get currentFrame;
  external set currentFrame(num v);
  external bool get active;
  external set active(bool v);
  external num get time;
  external set time(num v);
  external num get direction;
  external set direction(num v);
  external num get weight;
  external set weight(num v);
  external bool get directionBackwards;
  external set directionBackwards(bool v);
  external bool get mirroredLoop;
  external set mirroredLoop(bool v);
  external factory MorphBlendMeshAnimation(
      {num start,
      num end,
      num length,
      num fps,
      num duration,
      num lastFrame,
      num currentFrame,
      bool active,
      num time,
      num direction,
      num weight,
      bool directionBackwards,
      bool mirroredLoop});
}

@JS()
class MorphBlendMesh extends Mesh {
  // @Ignore
  MorphBlendMesh.fakeConstructor$() : super.fakeConstructor$();
  external factory MorphBlendMesh(Geometry geometry, Material material);
  external dynamic /*JSMap of <String,MorphBlendMeshAnimation>*/ get animationsMap;
  external set animationsMap(
      dynamic /*JSMap of <String,MorphBlendMeshAnimation>*/ v);
  external List<MorphBlendMeshAnimation> get animationsList;
  external set animationsList(List<MorphBlendMeshAnimation> v);
  external void createAnimation(String name, num start, num end, num fps);
  external void autoCreateAnimations(num fps);
  external void setAnimationDirectionForward(String name);
  external void setAnimationDirectionBackward(String name);
  external void setAnimationFPS(String name, num fps);
  external void setAnimationDuration(String name, num duration);
  external void setAnimationWeight(String name, num weight);
  external void setAnimationTime(String name, num time);
  external num getAnimationTime(String name);
  external num getAnimationDuration(String name);
  external void playAnimation(String name);
  external void stopAnimation(String name);
  external void update(num delta);
}

@anonymous
@JS()
abstract class WebVRManager {
  external bool get enabled;
  external set enabled(bool v);
  external VRDisplay /*VRDisplay|Null*/ getDevice();
  external void setDevice(VRDisplay /*VRDisplay|Null*/ device);
  external void setPoseTarget(Object3D /*Object3D|Null*/ object);
  external dynamic /*PerspectiveCamera|ArrayCamera*/ getCamera(
      PerspectiveCamera camera);
  external void submitFrame();
  external void dispose();
}
