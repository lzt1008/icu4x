// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// See the [Rust documentation for `CustomTimeZone`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html) for more information.
final class CustomTimeZone implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  final core.List<Object> _edge_self;

  // Internal constructor from FFI.
  // isOwned is whether this is owned (has finalizer) or not
  // This also takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  CustomTimeZone._(this._underlying, bool isOwned, this._edge_self) {
    if (isOwned) {
      _finalizer.attach(this, _underlying.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_ICU4XCustomTimeZone_destroy));

  /// Creates a time zone from an offset string.
  ///
  /// See the [Rust documentation for `from_str`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#method.from_str) for more information.
  ///
  /// Throws [Error] on failure.
  factory CustomTimeZone.fromString(String s) {
    final temp = ffi2.Arena();
    final sView = s.utf8View;
    final result = _ICU4XCustomTimeZone_create_from_string(sView.pointer(temp), sView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return CustomTimeZone._(result.union.ok, true, []);
  }

  /// Creates a time zone with no information.
  ///
  /// See the [Rust documentation for `new_empty`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#method.new_empty) for more information.
  factory CustomTimeZone.empty() {
    final result = _ICU4XCustomTimeZone_create_empty();
    return CustomTimeZone._(result, true, []);
  }

  /// Creates a time zone for UTC.
  ///
  /// See the [Rust documentation for `utc`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#method.utc) for more information.
  factory CustomTimeZone.utc() {
    final result = _ICU4XCustomTimeZone_create_utc();
    return CustomTimeZone._(result, true, []);
  }

  /// Sets the `gmt_offset` field from offset seconds.
  ///
  /// Errors if the offset seconds are out of range.
  ///
  /// See the [Rust documentation for `try_from_offset_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.try_from_offset_seconds) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html)
  ///
  /// Throws [Error] on failure.
  void trySetGmtOffsetSeconds(int offsetSeconds) {
    final result = _ICU4XCustomTimeZone_try_set_gmt_offset_seconds(_underlying, offsetSeconds);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
  }

  /// Clears the `gmt_offset` field.
  ///
  /// See the [Rust documentation for `offset_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.offset_seconds) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html)
  void clearGmtOffset() {
    _ICU4XCustomTimeZone_clear_gmt_offset(_underlying);
  }

  /// Returns the value of the `gmt_offset` field as offset seconds.
  ///
  /// Errors if the `gmt_offset` field is empty.
  ///
  /// See the [Rust documentation for `offset_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.offset_seconds) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html)
  ///
  /// Throws [Error] on failure.
  int get gmtOffsetSeconds {
    final result = _ICU4XCustomTimeZone_gmt_offset_seconds(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Returns whether the `gmt_offset` field is positive.
  ///
  /// Errors if the `gmt_offset` field is empty.
  ///
  /// See the [Rust documentation for `is_positive`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.is_positive) for more information.
  ///
  /// Throws [Error] on failure.
  bool get isGmtOffsetPositive {
    final result = _ICU4XCustomTimeZone_is_gmt_offset_positive(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Returns whether the `gmt_offset` field is zero.
  ///
  /// Errors if the `gmt_offset` field is empty (which is not the same as zero).
  ///
  /// See the [Rust documentation for `is_zero`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.is_zero) for more information.
  ///
  /// Throws [Error] on failure.
  bool get isGmtOffsetZero {
    final result = _ICU4XCustomTimeZone_is_gmt_offset_zero(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Returns whether the `gmt_offset` field has nonzero minutes.
  ///
  /// Errors if the `gmt_offset` field is empty.
  ///
  /// See the [Rust documentation for `has_minutes`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.has_minutes) for more information.
  ///
  /// Throws [Error] on failure.
  bool gmtOffsetHasMinutes() {
    final result = _ICU4XCustomTimeZone_gmt_offset_has_minutes(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Returns whether the `gmt_offset` field has nonzero seconds.
  ///
  /// Errors if the `gmt_offset` field is empty.
  ///
  /// See the [Rust documentation for `has_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.GmtOffset.html#method.has_seconds) for more information.
  ///
  /// Throws [Error] on failure.
  bool gmtOffsetHasSeconds() {
    final result = _ICU4XCustomTimeZone_gmt_offset_has_seconds(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Sets the `time_zone_id` field from a BCP-47 string.
  ///
  /// Errors if the string is not a valid BCP-47 time zone ID.
  ///
  /// See the [Rust documentation for `time_zone_id`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.time_zone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneBcp47Id.html)
  ///
  /// Throws [Error] on failure.
  void trySetTimeZoneId(String id) {
    final temp = ffi2.Arena();
    final idView = id.utf8View;
    final result = _ICU4XCustomTimeZone_try_set_time_zone_id(_underlying, idView.pointer(temp), idView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
  }

  /// Sets the `time_zone_id` field from an IANA string by looking up
  /// the corresponding BCP-47 string.
  ///
  /// Errors if the string is not a valid BCP-47 time zone ID.
  ///
  /// See the [Rust documentation for `get`](https://docs.rs/icu/latest/icu/timezone/struct.IanaToBcp47MapperBorrowed.html#method.get) for more information.
  ///
  /// Throws [Error] on failure.
  void trySetIanaTimeZoneId(IanaToBcp47Mapper mapper, String id) {
    final temp = ffi2.Arena();
    final idView = id.utf8View;
    final result = _ICU4XCustomTimeZone_try_set_iana_time_zone_id(_underlying, mapper._underlying, idView.pointer(temp), idView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
  }

  /// Clears the `time_zone_id` field.
  ///
  /// See the [Rust documentation for `time_zone_id`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.time_zone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneBcp47Id.html)
  void clearTimeZoneId() {
    _ICU4XCustomTimeZone_clear_time_zone_id(_underlying);
  }

  /// Writes the value of the `time_zone_id` field as a string.
  ///
  /// Errors if the `time_zone_id` field is empty.
  ///
  /// See the [Rust documentation for `time_zone_id`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.time_zone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneBcp47Id.html)
  ///
  /// Throws [Error] on failure.
  String get timeZoneId {
    final writeable = _Writeable();
    final result = _ICU4XCustomTimeZone_time_zone_id(_underlying, writeable._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }

  /// Sets the `metazone_id` field from a string.
  ///
  /// Errors if the string is not a valid BCP-47 metazone ID.
  ///
  /// See the [Rust documentation for `metazone_id`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.metazone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneId.html)
  ///
  /// Throws [Error] on failure.
  void trySetMetazoneId(String id) {
    final temp = ffi2.Arena();
    final idView = id.utf8View;
    final result = _ICU4XCustomTimeZone_try_set_metazone_id(_underlying, idView.pointer(temp), idView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
  }

  /// Clears the `metazone_id` field.
  ///
  /// See the [Rust documentation for `metazone_id`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.metazone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneId.html)
  void clearMetazoneId() {
    _ICU4XCustomTimeZone_clear_metazone_id(_underlying);
  }

  /// Writes the value of the `metazone_id` field as a string.
  ///
  /// Errors if the `metazone_id` field is empty.
  ///
  /// See the [Rust documentation for `metazone_id`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.metazone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneId.html)
  ///
  /// Throws [Error] on failure.
  String get metazoneId {
    final writeable = _Writeable();
    final result = _ICU4XCustomTimeZone_metazone_id(_underlying, writeable._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }

  /// Sets the `zone_variant` field from a string.
  ///
  /// Errors if the string is not a valid zone variant.
  ///
  /// See the [Rust documentation for `zone_variant`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html)
  ///
  /// Throws [Error] on failure.
  void trySetZoneVariant(String id) {
    final temp = ffi2.Arena();
    final idView = id.utf8View;
    final result = _ICU4XCustomTimeZone_try_set_zone_variant(_underlying, idView.pointer(temp), idView.length);
    temp.releaseAll();
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
  }

  /// Clears the `zone_variant` field.
  ///
  /// See the [Rust documentation for `zone_variant`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html)
  void clearZoneVariant() {
    _ICU4XCustomTimeZone_clear_zone_variant(_underlying);
  }

  /// Writes the value of the `zone_variant` field as a string.
  ///
  /// Errors if the `zone_variant` field is empty.
  ///
  /// See the [Rust documentation for `zone_variant`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html)
  ///
  /// Throws [Error] on failure.
  String get zoneVariant {
    final writeable = _Writeable();
    final result = _ICU4XCustomTimeZone_zone_variant(_underlying, writeable._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return writeable.finalize();
  }

  /// Sets the `zone_variant` field to standard time.
  ///
  /// See the [Rust documentation for `standard`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.standard) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant)
  void setStandardTime() {
    _ICU4XCustomTimeZone_set_standard_time(_underlying);
  }

  /// Sets the `zone_variant` field to daylight time.
  ///
  /// See the [Rust documentation for `daylight`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.daylight) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant)
  void setDaylightTime() {
    _ICU4XCustomTimeZone_set_daylight_time(_underlying);
  }

  /// Returns whether the `zone_variant` field is standard time.
  ///
  /// Errors if the `zone_variant` field is empty.
  ///
  /// See the [Rust documentation for `standard`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.standard) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant)
  ///
  /// Throws [Error] on failure.
  bool get isStandardTime {
    final result = _ICU4XCustomTimeZone_is_standard_time(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Returns whether the `zone_variant` field is daylight time.
  ///
  /// Errors if the `zone_variant` field is empty.
  ///
  /// See the [Rust documentation for `daylight`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.daylight) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#structfield.zone_variant)
  ///
  /// Throws [Error] on failure.
  bool get isDaylightTime {
    final result = _ICU4XCustomTimeZone_is_daylight_time(_underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return result.union.ok;
  }

  /// Sets the metazone based on the time zone and the local timestamp.
  ///
  /// See the [Rust documentation for `maybe_calculate_metazone`](https://docs.rs/icu/latest/icu/timezone/struct.CustomTimeZone.html#method.maybe_calculate_metazone) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.MetazoneCalculator.html#method.compute_metazone_from_time_zone)
  void maybeCalculateMetazone(MetazoneCalculator metazoneCalculator, IsoDateTime localDatetime) {
    _ICU4XCustomTimeZone_maybe_calculate_metazone(_underlying, metazoneCalculator._underlying, localDatetime._underlying);
  }
}

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_destroy')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_destroy(ffi.Pointer<ffi.Void> self);

@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_create_from_string')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _ICU4XCustomTimeZone_create_from_string(ffi.Pointer<ffi.Uint8> sData, int sLength);

@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_create_empty')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XCustomTimeZone_create_empty();

@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_create_utc')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _ICU4XCustomTimeZone_create_utc();

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_try_set_gmt_offset_seconds')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_try_set_gmt_offset_seconds(ffi.Pointer<ffi.Opaque> self, int offsetSeconds);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_clear_gmt_offset')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_clear_gmt_offset(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultInt32Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_gmt_offset_seconds')
// ignore: non_constant_identifier_names
external _ResultInt32Int32 _ICU4XCustomTimeZone_gmt_offset_seconds(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultBoolInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_is_gmt_offset_positive')
// ignore: non_constant_identifier_names
external _ResultBoolInt32 _ICU4XCustomTimeZone_is_gmt_offset_positive(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultBoolInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_is_gmt_offset_zero')
// ignore: non_constant_identifier_names
external _ResultBoolInt32 _ICU4XCustomTimeZone_is_gmt_offset_zero(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultBoolInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_gmt_offset_has_minutes')
// ignore: non_constant_identifier_names
external _ResultBoolInt32 _ICU4XCustomTimeZone_gmt_offset_has_minutes(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultBoolInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_gmt_offset_has_seconds')
// ignore: non_constant_identifier_names
external _ResultBoolInt32 _ICU4XCustomTimeZone_gmt_offset_has_seconds(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_try_set_time_zone_id')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_try_set_time_zone_id(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> idData, int idLength);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_try_set_iana_time_zone_id')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_try_set_iana_time_zone_id(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> mapper, ffi.Pointer<ffi.Uint8> idData, int idLength);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_clear_time_zone_id')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_clear_time_zone_id(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_time_zone_id')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_time_zone_id(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> writeable);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_try_set_metazone_id')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_try_set_metazone_id(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> idData, int idLength);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_clear_metazone_id')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_clear_metazone_id(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_metazone_id')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_metazone_id(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> writeable);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint8>, ffi.Size)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_try_set_zone_variant')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_try_set_zone_variant(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Uint8> idData, int idLength);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_clear_zone_variant')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_clear_zone_variant(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_zone_variant')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _ICU4XCustomTimeZone_zone_variant(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> writeable);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_set_standard_time')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_set_standard_time(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_set_daylight_time')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_set_daylight_time(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultBoolInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_is_standard_time')
// ignore: non_constant_identifier_names
external _ResultBoolInt32 _ICU4XCustomTimeZone_is_standard_time(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<_ResultBoolInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_is_daylight_time')
// ignore: non_constant_identifier_names
external _ResultBoolInt32 _ICU4XCustomTimeZone_is_daylight_time(ffi.Pointer<ffi.Opaque> self);

@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'ICU4XCustomTimeZone_maybe_calculate_metazone')
// ignore: non_constant_identifier_names
external void _ICU4XCustomTimeZone_maybe_calculate_metazone(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> metazoneCalculator, ffi.Pointer<ffi.Opaque> localDatetime);
