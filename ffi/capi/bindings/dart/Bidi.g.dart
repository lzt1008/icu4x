// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An ICU4X Bidi object, containing loaded bidi data
///
/// See the [Rust documentation for `BidiClassAdapter`](https://docs.rs/icu/latest/icu/properties/bidi/struct.BidiClassAdapter.html) for more information.
final class Bidi implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  final core.List<Object> _edge_self;

  // Internal constructor from FFI.
  // isOwned is whether this is owned (has finalizer) or not
  // This also takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  Bidi._(this._underlying, bool isOwned, this._edge_self) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XBidi_destroy));

  /// Creates a new [`Bidi`] from locale data.
  ///
  /// See the [Rust documentation for `new`](https://docs.rs/icu/latest/icu/properties/bidi/struct.BidiClassAdapter.html#method.new) for more information.
  ///
  /// Throws [Error] on failure.
  factory Bidi(DataProvider provider) {
    final result = _ICU4XBidi_create(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return Bidi._(result.union.ok, true, []);
  }

  /// Use the data loaded in this object to process a string and calculate bidi information
  ///
  /// Takes in a Level for the default level, if it is an invalid value it will default to LTR
  ///
  /// See the [Rust documentation for `new_with_data_source`](https://docs.rs/unicode_bidi/latest/unicode_bidi/struct.BidiInfo.html#method.new_with_data_source) for more information.
  BidiInfo forText(String text, int defaultLevel) {
    final temp = ffi2.Arena();
    final textView = text.utf8View;
    // This lifetime edge depends on lifetimes: 'text
    core.List<Object> edge_text = [textView];
    final result = _ICU4XBidi_for_text(_underlying, textView.pointer(temp), textView.length, defaultLevel);
    temp.releaseAll();
    return BidiInfo._(result, true, [], edge_text);
  }

  /// Utility function for producing reorderings given a list of levels
  ///
  /// Produces a map saying which visual index maps to which source index.
  ///
  /// The levels array must not have values greater than 126 (this is the
  /// Bidi maximum explicit depth plus one).
  /// Failure to follow this invariant may lead to incorrect results,
  /// but is still safe.
  ///
  /// See the [Rust documentation for `reorder_visual`](https://docs.rs/unicode_bidi/latest/unicode_bidi/struct.BidiInfo.html#method.reorder_visual) for more information.
  ReorderedIndexMap reorderVisual(core.List<int> levels) {
    final temp = ffi2.Arena();
    final levelsView = levels.uint8View;
    final result = _ICU4XBidi_reorder_visual(_underlying, levelsView.pointer(temp), levelsView.length);
    temp.releaseAll();
    return ReorderedIndexMap._(result, true, []);
  }

  /// Check if a Level returned by level_at is an RTL level.
  ///
  /// Invalid levels (numbers greater than 125) will be assumed LTR
  ///
  /// See the [Rust documentation for `is_rtl`](https://docs.rs/unicode_bidi/latest/unicode_bidi/struct.Level.html#method.is_rtl) for more information.
  static bool levelIsRtl(int level) {
    final result = _ICU4XBidi_level_is_rtl(level);
    return result;
  }

  /// Check if a Level returned by level_at is an LTR level.
  ///
  /// Invalid levels (numbers greater than 125) will be assumed LTR
  ///
  /// See the [Rust documentation for `is_ltr`](https://docs.rs/unicode_bidi/latest/unicode_bidi/struct.Level.html#method.is_ltr) for more information.
  static bool levelIsLtr(int level) {
    final result = _ICU4XBidi_level_is_ltr(level);
    return result;
  }

  /// Get a basic RTL Level value
  ///
  /// See the [Rust documentation for `rtl`](https://docs.rs/unicode_bidi/latest/unicode_bidi/struct.Level.html#method.rtl) for more information.
  static final int levelRtl = () {
    final result = _ICU4XBidi_level_rtl();
    return result;
  }();

  /// Get a simple LTR Level value
  ///
  /// See the [Rust documentation for `ltr`](https://docs.rs/unicode_bidi/latest/unicode_bidi/struct.Level.html#method.ltr) for more information.
  static final int levelLtr = () {
    final result = _ICU4XBidi_level_ltr();
    return result;
  }();
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XBidi_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XBidi_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XBidi_create')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XBidi_create(ffi.Pointer<ffi.Opaque> provider);

@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size, ffi.Uint8)>(isLeaf: true, symbol: 'ICU4XBidi_for_text')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XBidi_for_text(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> textData, int textLength, int defaultLevel);

@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XBidi_reorder_visual')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XBidi_reorder_visual(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> levelsData, int levelsLength);

@ffi.Native<ffi.Bool Function(ffi.Uint8)>(isLeaf: true, symbol: 'ICU4XBidi_level_is_rtl')
// ignore: non_constant_identifier_names
external bool _ICU4XBidi_level_is_rtl(int level);

@ffi.Native<ffi.Bool Function(ffi.Uint8)>(isLeaf: true, symbol: 'ICU4XBidi_level_is_ltr')
// ignore: non_constant_identifier_names
external bool _ICU4XBidi_level_is_ltr(int level);

@ffi.Native<ffi.Uint8 Function()>(isLeaf: true, symbol: 'ICU4XBidi_level_rtl')
// ignore: non_constant_identifier_names
external int _ICU4XBidi_level_rtl();

@ffi.Native<ffi.Uint8 Function()>(isLeaf: true, symbol: 'ICU4XBidi_level_ltr')
// ignore: non_constant_identifier_names
external int _ICU4XBidi_level_ltr();
