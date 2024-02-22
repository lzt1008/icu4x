// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

import 'dart:convert';
import 'dart:core' as core;
import 'dart:core' show int, double, bool, String, Object, override;
import 'dart:ffi' as ffi;
import 'dart:math';
import 'dart:typed_data';
import 'package:ffi/ffi.dart' as ffi2 show Arena, calloc;
part 'AnyCalendarKind.g.dart';
part 'Bcp47ToIanaMapper.g.dart';
part 'Bidi.g.dart';
part 'BidiDirection.g.dart';
part 'BidiInfo.g.dart';
part 'BidiParagraph.g.dart';
part 'Calendar.g.dart';
part 'CanonicalCombiningClassMap.g.dart';
part 'CanonicalComposition.g.dart';
part 'CanonicalDecomposition.g.dart';
part 'CaseMapCloser.g.dart';
part 'CaseMapper.g.dart';
part 'CodePointMapData16.g.dart';
part 'CodePointMapData8.g.dart';
part 'CodePointRangeIterator.g.dart';
part 'CodePointRangeIteratorResult.g.dart';
part 'CodePointSetBuilder.g.dart';
part 'CodePointSetData.g.dart';
part 'Collator.g.dart';
part 'CollatorAlternateHandling.g.dart';
part 'CollatorBackwardSecondLevel.g.dart';
part 'CollatorCaseFirst.g.dart';
part 'CollatorCaseLevel.g.dart';
part 'CollatorMaxVariable.g.dart';
part 'CollatorNumeric.g.dart';
part 'CollatorOptions.g.dart';
part 'CollatorStrength.g.dart';
part 'ComposingNormalizer.g.dart';
part 'CustomTimeZone.g.dart';
part 'DataProvider.g.dart';
part 'Date.g.dart';
part 'DateFormatter.g.dart';
part 'DateLength.g.dart';
part 'DateTime.g.dart';
part 'DateTimeFormatter.g.dart';
part 'Decomposed.g.dart';
part 'DecomposingNormalizer.g.dart';
part 'DisplayNamesFallback.g.dart';
part 'DisplayNamesOptions.g.dart';
part 'DisplayNamesStyle.g.dart';
part 'Error.g.dart';
part 'FixedDecimal.g.dart';
part 'FixedDecimalFormatter.g.dart';
part 'FixedDecimalGroupingStrategy.g.dart';
part 'FixedDecimalSign.g.dart';
part 'FixedDecimalSignDisplay.g.dart';
part 'GeneralCategoryNameToMaskMapper.g.dart';
part 'GraphemeClusterBreakIteratorLatin1.g.dart';
part 'GraphemeClusterBreakIteratorUtf16.g.dart';
part 'GraphemeClusterBreakIteratorUtf8.g.dart';
part 'GraphemeClusterSegmenter.g.dart';
part 'GregorianDateFormatter.g.dart';
part 'GregorianDateTimeFormatter.g.dart';
part 'GregorianZonedDateTimeFormatter.g.dart';
part 'IanaToBcp47Mapper.g.dart';
part 'IsoDate.g.dart';
part 'IsoDateTime.g.dart';
part 'IsoTimeZoneFormat.g.dart';
part 'IsoTimeZoneMinuteDisplay.g.dart';
part 'IsoTimeZoneOptions.g.dart';
part 'IsoTimeZoneSecondDisplay.g.dart';
part 'IsoWeekday.g.dart';
part 'LanguageDisplay.g.dart';
part 'LeadingAdjustment.g.dart';
part 'LineBreakIteratorLatin1.g.dart';
part 'LineBreakIteratorUtf16.g.dart';
part 'LineBreakIteratorUtf8.g.dart';
part 'LineBreakOptions.g.dart';
part 'LineBreakStrictness.g.dart';
part 'LineBreakWordOption.g.dart';
part 'LineSegmenter.g.dart';
part 'List.g.dart';
part 'ListFormatter.g.dart';
part 'ListLength.g.dart';
part 'Locale.g.dart';
part 'LocaleCanonicalizer.g.dart';
part 'LocaleDirection.g.dart';
part 'LocaleDirectionality.g.dart';
part 'LocaleDisplayNamesFormatter.g.dart';
part 'LocaleExpander.g.dart';
part 'LocaleFallbackConfig.g.dart';
part 'LocaleFallbackIterator.g.dart';
part 'LocaleFallbackPriority.g.dart';
part 'LocaleFallbackSupplement.g.dart';
part 'LocaleFallbacker.g.dart';
part 'LocaleFallbackerWithConfig.g.dart';
part 'Logger.g.dart';
part 'MetazoneCalculator.g.dart';
part 'Ordering.g.dart';
part 'PluralCategories.g.dart';
part 'PluralCategory.g.dart';
part 'PluralOperands.g.dart';
part 'PluralRules.g.dart';
part 'PropertyValueNameToEnumMapper.g.dart';
part 'RegionDisplayNames.g.dart';
part 'ReorderedIndexMap.g.dart';
part 'ResolvedCollatorOptions.g.dart';
part 'RoundingIncrement.g.dart';
part 'ScriptExtensionsSet.g.dart';
part 'ScriptWithExtensions.g.dart';
part 'ScriptWithExtensionsBorrowed.g.dart';
part 'SegmenterWordType.g.dart';
part 'SentenceBreakIteratorLatin1.g.dart';
part 'SentenceBreakIteratorUtf16.g.dart';
part 'SentenceBreakIteratorUtf8.g.dart';
part 'SentenceSegmenter.g.dart';
part 'Time.g.dart';
part 'TimeFormatter.g.dart';
part 'TimeLength.g.dart';
part 'TimeZoneFormatter.g.dart';
part 'TitlecaseMapper.g.dart';
part 'TitlecaseOptions.g.dart';
part 'TrailingCase.g.dart';
part 'TransformResult.g.dart';
part 'UnicodeSetData.g.dart';
part 'WeekCalculator.g.dart';
part 'WeekOf.g.dart';
part 'WeekRelativeUnit.g.dart';
part 'WordBreakIteratorLatin1.g.dart';
part 'WordBreakIteratorUtf16.g.dart';
part 'WordBreakIteratorUtf8.g.dart';
part 'WordSegmenter.g.dart';
part 'ZonedDateTimeFormatter.g.dart';

/// A [Rune] is a Unicode code point, such as `a`, or `💡`.
/// 
/// The recommended way to obtain a [Rune] is to create it from a 
/// [String], which is conceptually a list of [Runes]. For example,
/// `'a'.runes.first` is equal to the [Rune] `a`.
/// 
/// Dart does not have a character/rune literal, so integer literals
/// need to be used. For example the Unicode code point U+1F4A1, `💡`,
/// can be represented by `0x1F4A1`. Note that only values in the ranges
/// `0x0..0xD7FF` and `0xE000..0x10FFFF` (both inclusive) are Unicode
/// code points, and hence valid [Rune]s.
///
/// A [String] can be constructed from a [Rune] using [String.fromCharCode]. 
typedef Rune = int;

// ignore: unused_element
final _callocFree = core.Finalizer(ffi2.calloc.free);

extension _View on ByteBuffer {
  // ignore: unused_element
  ffi.Pointer<ffi.Uint8> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Uint8>(length)..asTypedList(length).setRange(0, length, asUint8List());
  }

  int get length => lengthInBytes;
}

extension _UtfViews on String {
  // ignore: unused_element
  _Utf8View get utf8View => _Utf8View(this);
  // ignore: unused_element
  _Utf16View get utf16View => _Utf16View(this);
}

extension _NativeBoolViews on core.List<bool> {
  // ignore: unused_element
  _BoolListView get boolView => _BoolListView(this);
}

extension _NativeIntViews on core.List<int> {
  // ignore: unused_element
  _Int8ListView get int8View => _Int8ListView(this);
  // ignore: unused_element
  _Int16ListView get int16View => _Int16ListView(this);
  // ignore: unused_element
  _Int32ListView get int32View => _Int32ListView(this);
  // ignore: unused_element
  _Int64ListView get int64View => _Int64ListView(this);
  // ignore: unused_element
  _IsizeListView get isizeView => _IsizeListView(this);
  // ignore: unused_element
  _Uint8ListView get uint8View => _Uint8ListView(this);
  // ignore: unused_element
  _Uint16ListView get uint16View => _Uint16ListView(this);
  // ignore: unused_element
  _Uint32ListView get uint32View => _Uint32ListView(this);
  // ignore: unused_element
  _Uint64ListView get uint64View => _Uint64ListView(this);
  // ignore: unused_element
  _UsizeListView get usizeView => _UsizeListView(this);
}

extension _NativeFloatViews on core.List<double> {
  // ignore: unused_element
  _Float32ListView get float32View => _Float32ListView(this);
  // ignore: unused_element
  _Float64ListView get float64View => _Float64ListView(this);
}

// ignore: unused_element
class _Utf8View {
  final Uint8List _codeUnits;

  // Copies
  _Utf8View(String string) : _codeUnits = Utf8Encoder().convert(string);

  ffi.Pointer<ffi.Uint8> pointer(ffi.Allocator alloc) {
    // Copies
    return alloc<ffi.Uint8>(length)..asTypedList(length).setRange(0, length, _codeUnits);
  }

  int get length => _codeUnits.length;
}

// ignore: unused_element
class _Utf16View {
  final core.List<int> _codeUnits;

  _Utf16View(String string) : _codeUnits = string.codeUnits;

  ffi.Pointer<ffi.Uint16> pointer(ffi.Allocator alloc) {
    // Copies
    return alloc<ffi.Uint16>(length)..asTypedList(length).setRange(0, length, _codeUnits);
  }

  int get length => _codeUnits.length;
}

// ignore: unused_element
class _BoolListView{
  final core.List<bool> _values;

  _BoolListView(this._values);

  // Copies
  ffi.Pointer<ffi.Bool> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.Bool>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = _values[i];
    }
    return pointer;
  }

  int get length => _values.length;
}

class _Int8ListView {
  final core.List<int> _values;

  _Int8ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Int8> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Int8>(length)..asTypedList(length).setRange(0, length, _values);
  }

  int get length => _values.length;
}

class _Int16ListView {
  final core.List<int> _values;

  _Int16ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Int16> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Int16>(length)..asTypedList(length).setRange(0, length, _values);
  }

  int get length => _values.length;
}

class _Int32ListView {
  final core.List<int> _values;

  _Int32ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Int32> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Int32>(length)..asTypedList(length).setRange(0, length, _values);
  }

  int get length => _values.length;
}

class _Int64ListView {
  final core.List<int> _values;

  _Int64ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Int64> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Int64>(length)..asTypedList(length).setRange(0, length, _values);
  }

  int get length => _values.length;
}

// ignore: unused_element
class _IsizeListView {
  final core.List<int> _values;

  _IsizeListView(this._values);

  // Copies
  ffi.Pointer<ffi.IntPtr> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.IntPtr>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = _values[i];
    }
    return pointer;
  }

  int get length => _values.length;
}

class _Uint8ListView {
  final core.List<int> _values;

  _Uint8ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Uint8> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.Uint8>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = min(255, max(0, _values[i]));
    }
    return pointer;
  }

  int get length => _values.length;
}

class _Uint16ListView {
  final core.List<int> _values;

  _Uint16ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Uint16> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.Uint16>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = min(65535, max(0, _values[i]));
    }
    return pointer;
  }

  int get length => _values.length;
}

class _Uint32ListView {
  final core.List<int> _values;

  _Uint32ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Uint32> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.Uint32>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = min(4294967295, max(0, _values[i]));
    }
    return pointer;
  }

  int get length => _values.length;
}

class _Uint64ListView {
  final core.List<int> _values;

  _Uint64ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Uint64> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.Uint64>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = max(0, _values[i]);
    }
    return pointer;
  }

  int get length => _values.length;
}

// ignore: unused_element
class _UsizeListView {
  final core.List<int> _values;

  _UsizeListView(this._values);

  // Copies
  ffi.Pointer<ffi.Size> pointer(ffi.Allocator alloc) {
    final pointer = alloc<ffi.Size>(_values.length);
    for (var i = 0; i < _values.length; i++) {
      pointer[i] = max(0, _values[i]);
    }
    return pointer;
  }

  int get length => _values.length;
}

class _Float32ListView {
  final core.List<double> _values;

  _Float32ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Float> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Float>(length)..asTypedList(length).setRange(0, length, _values);
  }

  int get length => _values.length;
}

class _Float64ListView {
  final core.List<double> _values;

  _Float64ListView(this._values);

  // ignore: unused_element
  ffi.Pointer<ffi.Double> pointer(ffi.Allocator alloc) {
    return alloc<ffi.Double>(length)..asTypedList(length).setRange(0, length, _values);
  }

  int get length => _values.length;
}

class _FinalizedArena {
  final ffi2.Arena arena;
  static final core.Finalizer<ffi2.Arena> _finalizer = core.Finalizer((arena) => arena.releaseAll());

  _FinalizedArena() : this.arena = ffi2.Arena() {
    _finalizer.attach(this, this.arena);
  }
}

final class _ResultBoolInt32Union extends ffi.Union {
  @ffi.Bool()
  external bool ok;

  @ffi.Int32()
  external int err;
}

final class _ResultBoolInt32 extends ffi.Struct {
  external _ResultBoolInt32Union union;

  @ffi.Bool()
  external bool isOk;
}

final class _ResultInt32Int32Union extends ffi.Union {
  @ffi.Int32()
  external int ok;

  @ffi.Int32()
  external int err;
}

final class _ResultInt32Int32 extends ffi.Struct {
  external _ResultInt32Int32Union union;

  @ffi.Bool()
  external bool isOk;
}

final class _ResultInt32VoidUnion extends ffi.Union {
  @ffi.Int32()
  external int ok;
}

final class _ResultInt32Void extends ffi.Struct {
  external _ResultInt32VoidUnion union;

  @ffi.Bool()
  external bool isOk;
}

final class _ResultOpaqueInt32Union extends ffi.Union {
  external ffi.Pointer<ffi.Opaque> ok;

  @ffi.Int32()
  external int err;
}

final class _ResultOpaqueInt32 extends ffi.Struct {
  external _ResultOpaqueInt32Union union;

  @ffi.Bool()
  external bool isOk;
}

final class _ResultUint16VoidUnion extends ffi.Union {
  @ffi.Uint16()
  external int ok;
}

final class _ResultUint16Void extends ffi.Struct {
  external _ResultUint16VoidUnion union;

  @ffi.Bool()
  external bool isOk;
}

final class _ResultVoidInt32Union extends ffi.Union {
  @ffi.Int32()
  external int err;
}

final class _ResultVoidInt32 extends ffi.Struct {
  external _ResultVoidInt32Union union;

  @ffi.Bool()
  external bool isOk;
}

final class _ResultVoidVoid extends ffi.Struct {
  

  @ffi.Bool()
  external bool isOk;
}

final class _ResultWeekOfFfiInt32Union extends ffi.Union {
  external _WeekOfFfi ok;

  @ffi.Int32()
  external int err;
}

final class _ResultWeekOfFfiInt32 extends ffi.Struct {
  external _ResultWeekOfFfiInt32Union union;

  @ffi.Bool()
  external bool isOk;
}

final class _SliceUsize extends ffi.Struct {
  external ffi.Pointer<ffi.Size> _pointer;

  @ffi.Size()
  external int _length;

  // This is expensive
  @override
  bool operator ==(Object other) {
    if (other is! _SliceUsize || other._length != _length) {
      return false;
    }

    for (var i = 0; i < _length; i++) {
      if (other._pointer[i] != _pointer[i]) {
        return false;
      }
    }
    return true;
  }

  // This is cheap
  @override
  int get hashCode => _length.hashCode;
}

final class _SliceUtf8 extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> _pointer;

  @ffi.Size()
  external int _length;

  // This is expensive
  @override
  bool operator ==(Object other) {
    if (other is! _SliceUtf8 || other._length != _length) {
      return false;
    }

    for (var i = 0; i < _length; i++) {
      if (other._pointer[i] != _pointer[i]) {
        return false;
      }
    }
    return true;
  }

  // This is cheap
  @override
  int get hashCode => _length.hashCode;
}

final class _Writeable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  _Writeable() : _underlying = _diplomat_buffer_writeable_create(0);
  
  String finalize() {
    final string = Utf8Decoder().convert(_diplomat_buffer_writeable_get_bytes(_underlying).asTypedList(_diplomat_buffer_writeable_len(_underlying)));
    _diplomat_buffer_writeable_destroy(_underlying);
    return string;
  }
}

  
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Size)>(symbol: 'diplomat_buffer_writeable_create', isLeaf: true)
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _diplomat_buffer_writeable_create(int len);

@ffi.Native<ffi.Size Function(ffi.Pointer<ffi.Opaque>)>(symbol: 'diplomat_buffer_writeable_len', isLeaf: true)
// ignore: non_constant_identifier_names
external int _diplomat_buffer_writeable_len(ffi.Pointer<ffi.Opaque> ptr);

@ffi.Native<ffi.Pointer<ffi.Uint8> Function(ffi.Pointer<ffi.Opaque>)>(symbol: 'diplomat_buffer_writeable_get_bytes', isLeaf: true)
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Uint8> _diplomat_buffer_writeable_get_bytes(ffi.Pointer<ffi.Opaque> ptr);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(symbol: 'diplomat_buffer_writeable_destroy', isLeaf: true)
// ignore: non_constant_identifier_names
external void _diplomat_buffer_writeable_destroy(ffi.Pointer<ffi.Opaque> ptr);
