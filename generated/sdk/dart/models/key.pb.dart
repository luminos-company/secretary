///
//  Generated code. Do not modify.
//  source: models/key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class Key extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Key', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'externalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'privateKey')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shouldRotate')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotatedFromId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotateCron')
    ..aOM<$0.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Key._() : super();
  factory Key({
    $core.String? id,
    $core.String? externalId,
    $core.String? privateKey,
    $core.String? publicKey,
    $core.bool? shouldRotate,
    $core.String? rotatedFromId,
    $core.String? rotateCron,
    $0.Timestamp? expiresAt,
    $0.Timestamp? updatedAt,
    $0.Timestamp? createdAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (externalId != null) {
      _result.externalId = externalId;
    }
    if (privateKey != null) {
      _result.privateKey = privateKey;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (shouldRotate != null) {
      _result.shouldRotate = shouldRotate;
    }
    if (rotatedFromId != null) {
      _result.rotatedFromId = rotatedFromId;
    }
    if (rotateCron != null) {
      _result.rotateCron = rotateCron;
    }
    if (expiresAt != null) {
      _result.expiresAt = expiresAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory Key.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Key.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Key clone() => Key()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Key copyWith(void Function(Key) updates) => super.copyWith((message) => updates(message as Key)) as Key; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Key create() => Key._();
  Key createEmptyInstance() => create();
  static $pb.PbList<Key> createRepeated() => $pb.PbList<Key>();
  @$core.pragma('dart2js:noInline')
  static Key getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Key>(create);
  static Key? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get externalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set externalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExternalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearExternalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get privateKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set privateKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrivateKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrivateKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get shouldRotate => $_getBF(4);
  @$pb.TagNumber(5)
  set shouldRotate($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasShouldRotate() => $_has(4);
  @$pb.TagNumber(5)
  void clearShouldRotate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get rotatedFromId => $_getSZ(5);
  @$pb.TagNumber(6)
  set rotatedFromId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRotatedFromId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRotatedFromId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get rotateCron => $_getSZ(6);
  @$pb.TagNumber(7)
  set rotateCron($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRotateCron() => $_has(6);
  @$pb.TagNumber(7)
  void clearRotateCron() => clearField(7);

  @$pb.TagNumber(8)
  $0.Timestamp get expiresAt => $_getN(7);
  @$pb.TagNumber(8)
  set expiresAt($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasExpiresAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpiresAt() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureExpiresAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(9)
  set updatedAt($0.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdatedAt() => clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureUpdatedAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $0.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($0.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $0.Timestamp ensureCreatedAt() => $_ensure(9);
}

class KeyServiceCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceCreateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shouldRotate')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotateCron')
    ..hasRequiredFields = false
  ;

  KeyServiceCreateRequest._() : super();
  factory KeyServiceCreateRequest({
    $core.bool? shouldRotate,
    $core.String? rotateCron,
  }) {
    final _result = create();
    if (shouldRotate != null) {
      _result.shouldRotate = shouldRotate;
    }
    if (rotateCron != null) {
      _result.rotateCron = rotateCron;
    }
    return _result;
  }
  factory KeyServiceCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceCreateRequest clone() => KeyServiceCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceCreateRequest copyWith(void Function(KeyServiceCreateRequest) updates) => super.copyWith((message) => updates(message as KeyServiceCreateRequest)) as KeyServiceCreateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceCreateRequest create() => KeyServiceCreateRequest._();
  KeyServiceCreateRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceCreateRequest> createRepeated() => $pb.PbList<KeyServiceCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceCreateRequest>(create);
  static KeyServiceCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get shouldRotate => $_getBF(0);
  @$pb.TagNumber(1)
  set shouldRotate($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShouldRotate() => $_has(0);
  @$pb.TagNumber(1)
  void clearShouldRotate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get rotateCron => $_getSZ(1);
  @$pb.TagNumber(2)
  set rotateCron($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRotateCron() => $_has(1);
  @$pb.TagNumber(2)
  void clearRotateCron() => clearField(2);
}

class KeyServiceCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceCreateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOM<Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false
  ;

  KeyServiceCreateResponse._() : super();
  factory KeyServiceCreateResponse({
    Key? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory KeyServiceCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceCreateResponse clone() => KeyServiceCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceCreateResponse copyWith(void Function(KeyServiceCreateResponse) updates) => super.copyWith((message) => updates(message as KeyServiceCreateResponse)) as KeyServiceCreateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceCreateResponse create() => KeyServiceCreateResponse._();
  KeyServiceCreateResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceCreateResponse> createRepeated() => $pb.PbList<KeyServiceCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceCreateResponse>(create);
  static KeyServiceCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);
}

class KeyServiceGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  KeyServiceGetRequest._() : super();
  factory KeyServiceGetRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory KeyServiceGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceGetRequest clone() => KeyServiceGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceGetRequest copyWith(void Function(KeyServiceGetRequest) updates) => super.copyWith((message) => updates(message as KeyServiceGetRequest)) as KeyServiceGetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceGetRequest create() => KeyServiceGetRequest._();
  KeyServiceGetRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceGetRequest> createRepeated() => $pb.PbList<KeyServiceGetRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceGetRequest>(create);
  static KeyServiceGetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class KeyServiceGetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceGetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOM<Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false
  ;

  KeyServiceGetResponse._() : super();
  factory KeyServiceGetResponse({
    Key? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory KeyServiceGetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceGetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceGetResponse clone() => KeyServiceGetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceGetResponse copyWith(void Function(KeyServiceGetResponse) updates) => super.copyWith((message) => updates(message as KeyServiceGetResponse)) as KeyServiceGetResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceGetResponse create() => KeyServiceGetResponse._();
  KeyServiceGetResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceGetResponse> createRepeated() => $pb.PbList<KeyServiceGetResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceGetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceGetResponse>(create);
  static KeyServiceGetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);
}

class KeyServiceListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstId')
    ..hasRequiredFields = false
  ;

  KeyServiceListRequest._() : super();
  factory KeyServiceListRequest({
    $core.String? firstId,
  }) {
    final _result = create();
    if (firstId != null) {
      _result.firstId = firstId;
    }
    return _result;
  }
  factory KeyServiceListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceListRequest clone() => KeyServiceListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceListRequest copyWith(void Function(KeyServiceListRequest) updates) => super.copyWith((message) => updates(message as KeyServiceListRequest)) as KeyServiceListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceListRequest create() => KeyServiceListRequest._();
  KeyServiceListRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceListRequest> createRepeated() => $pb.PbList<KeyServiceListRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceListRequest>(create);
  static KeyServiceListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstId => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstId() => clearField(1);
}

class KeyServiceListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..pc<Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keys', $pb.PbFieldType.PM, subBuilder: Key.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastId')
    ..hasRequiredFields = false
  ;

  KeyServiceListResponse._() : super();
  factory KeyServiceListResponse({
    $core.Iterable<Key>? keys,
    $core.String? lastId,
  }) {
    final _result = create();
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    if (lastId != null) {
      _result.lastId = lastId;
    }
    return _result;
  }
  factory KeyServiceListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceListResponse clone() => KeyServiceListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceListResponse copyWith(void Function(KeyServiceListResponse) updates) => super.copyWith((message) => updates(message as KeyServiceListResponse)) as KeyServiceListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceListResponse create() => KeyServiceListResponse._();
  KeyServiceListResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceListResponse> createRepeated() => $pb.PbList<KeyServiceListResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceListResponse>(create);
  static KeyServiceListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Key> get keys => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get lastId => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastId() => clearField(2);
}

class KeyServiceSignRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceSignRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  KeyServiceSignRequest._() : super();
  factory KeyServiceSignRequest({
    $core.String? id,
    $core.String? message,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory KeyServiceSignRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceSignRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceSignRequest clone() => KeyServiceSignRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceSignRequest copyWith(void Function(KeyServiceSignRequest) updates) => super.copyWith((message) => updates(message as KeyServiceSignRequest)) as KeyServiceSignRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceSignRequest create() => KeyServiceSignRequest._();
  KeyServiceSignRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceSignRequest> createRepeated() => $pb.PbList<KeyServiceSignRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceSignRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceSignRequest>(create);
  static KeyServiceSignRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class KeyServiceSignResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceSignResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  KeyServiceSignResponse._() : super();
  factory KeyServiceSignResponse({
    $core.String? signature,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory KeyServiceSignResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceSignResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceSignResponse clone() => KeyServiceSignResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceSignResponse copyWith(void Function(KeyServiceSignResponse) updates) => super.copyWith((message) => updates(message as KeyServiceSignResponse)) as KeyServiceSignResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceSignResponse create() => KeyServiceSignResponse._();
  KeyServiceSignResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceSignResponse> createRepeated() => $pb.PbList<KeyServiceSignResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceSignResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceSignResponse>(create);
  static KeyServiceSignResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}

class KeyServiceVerifyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceVerifyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  KeyServiceVerifyRequest._() : super();
  factory KeyServiceVerifyRequest({
    $core.String? id,
    $core.String? message,
    $core.String? signature,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (message != null) {
      _result.message = message;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory KeyServiceVerifyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceVerifyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceVerifyRequest clone() => KeyServiceVerifyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceVerifyRequest copyWith(void Function(KeyServiceVerifyRequest) updates) => super.copyWith((message) => updates(message as KeyServiceVerifyRequest)) as KeyServiceVerifyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceVerifyRequest create() => KeyServiceVerifyRequest._();
  KeyServiceVerifyRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceVerifyRequest> createRepeated() => $pb.PbList<KeyServiceVerifyRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceVerifyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceVerifyRequest>(create);
  static KeyServiceVerifyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get signature => $_getSZ(2);
  @$pb.TagNumber(3)
  set signature($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignature() => clearField(3);
}

class KeyServiceVerifyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceVerifyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valid')
    ..hasRequiredFields = false
  ;

  KeyServiceVerifyResponse._() : super();
  factory KeyServiceVerifyResponse({
    $core.bool? valid,
  }) {
    final _result = create();
    if (valid != null) {
      _result.valid = valid;
    }
    return _result;
  }
  factory KeyServiceVerifyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceVerifyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceVerifyResponse clone() => KeyServiceVerifyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceVerifyResponse copyWith(void Function(KeyServiceVerifyResponse) updates) => super.copyWith((message) => updates(message as KeyServiceVerifyResponse)) as KeyServiceVerifyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceVerifyResponse create() => KeyServiceVerifyResponse._();
  KeyServiceVerifyResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceVerifyResponse> createRepeated() => $pb.PbList<KeyServiceVerifyResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceVerifyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceVerifyResponse>(create);
  static KeyServiceVerifyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get valid => $_getBF(0);
  @$pb.TagNumber(1)
  set valid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearValid() => clearField(1);
}

class KeyServiceCryptoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceCryptoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  KeyServiceCryptoRequest._() : super();
  factory KeyServiceCryptoRequest({
    $core.String? id,
    $core.String? message,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory KeyServiceCryptoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceCryptoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceCryptoRequest clone() => KeyServiceCryptoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceCryptoRequest copyWith(void Function(KeyServiceCryptoRequest) updates) => super.copyWith((message) => updates(message as KeyServiceCryptoRequest)) as KeyServiceCryptoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceCryptoRequest create() => KeyServiceCryptoRequest._();
  KeyServiceCryptoRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceCryptoRequest> createRepeated() => $pb.PbList<KeyServiceCryptoRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceCryptoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceCryptoRequest>(create);
  static KeyServiceCryptoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class KeyServiceCryptoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceCryptoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciphertext')
    ..hasRequiredFields = false
  ;

  KeyServiceCryptoResponse._() : super();
  factory KeyServiceCryptoResponse({
    $core.String? ciphertext,
  }) {
    final _result = create();
    if (ciphertext != null) {
      _result.ciphertext = ciphertext;
    }
    return _result;
  }
  factory KeyServiceCryptoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceCryptoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceCryptoResponse clone() => KeyServiceCryptoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceCryptoResponse copyWith(void Function(KeyServiceCryptoResponse) updates) => super.copyWith((message) => updates(message as KeyServiceCryptoResponse)) as KeyServiceCryptoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceCryptoResponse create() => KeyServiceCryptoResponse._();
  KeyServiceCryptoResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceCryptoResponse> createRepeated() => $pb.PbList<KeyServiceCryptoResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceCryptoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceCryptoResponse>(create);
  static KeyServiceCryptoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ciphertext => $_getSZ(0);
  @$pb.TagNumber(1)
  set ciphertext($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCiphertext() => $_has(0);
  @$pb.TagNumber(1)
  void clearCiphertext() => clearField(1);
}

class KeyServiceDecryptRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceDecryptRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ciphertext')
    ..hasRequiredFields = false
  ;

  KeyServiceDecryptRequest._() : super();
  factory KeyServiceDecryptRequest({
    $core.String? id,
    $core.String? ciphertext,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ciphertext != null) {
      _result.ciphertext = ciphertext;
    }
    return _result;
  }
  factory KeyServiceDecryptRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceDecryptRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceDecryptRequest clone() => KeyServiceDecryptRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceDecryptRequest copyWith(void Function(KeyServiceDecryptRequest) updates) => super.copyWith((message) => updates(message as KeyServiceDecryptRequest)) as KeyServiceDecryptRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceDecryptRequest create() => KeyServiceDecryptRequest._();
  KeyServiceDecryptRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceDecryptRequest> createRepeated() => $pb.PbList<KeyServiceDecryptRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceDecryptRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceDecryptRequest>(create);
  static KeyServiceDecryptRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ciphertext => $_getSZ(1);
  @$pb.TagNumber(2)
  set ciphertext($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCiphertext() => $_has(1);
  @$pb.TagNumber(2)
  void clearCiphertext() => clearField(2);
}

class KeyServiceDecryptResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceDecryptResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  KeyServiceDecryptResponse._() : super();
  factory KeyServiceDecryptResponse({
    $core.String? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory KeyServiceDecryptResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceDecryptResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceDecryptResponse clone() => KeyServiceDecryptResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceDecryptResponse copyWith(void Function(KeyServiceDecryptResponse) updates) => super.copyWith((message) => updates(message as KeyServiceDecryptResponse)) as KeyServiceDecryptResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceDecryptResponse create() => KeyServiceDecryptResponse._();
  KeyServiceDecryptResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceDecryptResponse> createRepeated() => $pb.PbList<KeyServiceDecryptResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceDecryptResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceDecryptResponse>(create);
  static KeyServiceDecryptResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class KeyServiceRotateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceRotateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  KeyServiceRotateRequest._() : super();
  factory KeyServiceRotateRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory KeyServiceRotateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceRotateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceRotateRequest clone() => KeyServiceRotateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceRotateRequest copyWith(void Function(KeyServiceRotateRequest) updates) => super.copyWith((message) => updates(message as KeyServiceRotateRequest)) as KeyServiceRotateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceRotateRequest create() => KeyServiceRotateRequest._();
  KeyServiceRotateRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceRotateRequest> createRepeated() => $pb.PbList<KeyServiceRotateRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceRotateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceRotateRequest>(create);
  static KeyServiceRotateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class KeyServiceRotateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceRotateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOM<Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false
  ;

  KeyServiceRotateResponse._() : super();
  factory KeyServiceRotateResponse({
    Key? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory KeyServiceRotateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceRotateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceRotateResponse clone() => KeyServiceRotateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceRotateResponse copyWith(void Function(KeyServiceRotateResponse) updates) => super.copyWith((message) => updates(message as KeyServiceRotateResponse)) as KeyServiceRotateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceRotateResponse create() => KeyServiceRotateResponse._();
  KeyServiceRotateResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceRotateResponse> createRepeated() => $pb.PbList<KeyServiceRotateResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceRotateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceRotateResponse>(create);
  static KeyServiceRotateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);
}

class KeyServiceDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  KeyServiceDeleteRequest._() : super();
  factory KeyServiceDeleteRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory KeyServiceDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceDeleteRequest clone() => KeyServiceDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceDeleteRequest copyWith(void Function(KeyServiceDeleteRequest) updates) => super.copyWith((message) => updates(message as KeyServiceDeleteRequest)) as KeyServiceDeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceDeleteRequest create() => KeyServiceDeleteRequest._();
  KeyServiceDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceDeleteRequest> createRepeated() => $pb.PbList<KeyServiceDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceDeleteRequest>(create);
  static KeyServiceDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class KeyServiceDeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceDeleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOM<Key>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false
  ;

  KeyServiceDeleteResponse._() : super();
  factory KeyServiceDeleteResponse({
    Key? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory KeyServiceDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceDeleteResponse clone() => KeyServiceDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceDeleteResponse copyWith(void Function(KeyServiceDeleteResponse) updates) => super.copyWith((message) => updates(message as KeyServiceDeleteResponse)) as KeyServiceDeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceDeleteResponse create() => KeyServiceDeleteResponse._();
  KeyServiceDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceDeleteResponse> createRepeated() => $pb.PbList<KeyServiceDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceDeleteResponse>(create);
  static KeyServiceDeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);
}

class KeyServiceJWKRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceJWKRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  KeyServiceJWKRequest._() : super();
  factory KeyServiceJWKRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory KeyServiceJWKRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceJWKRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceJWKRequest clone() => KeyServiceJWKRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceJWKRequest copyWith(void Function(KeyServiceJWKRequest) updates) => super.copyWith((message) => updates(message as KeyServiceJWKRequest)) as KeyServiceJWKRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceJWKRequest create() => KeyServiceJWKRequest._();
  KeyServiceJWKRequest createEmptyInstance() => create();
  static $pb.PbList<KeyServiceJWKRequest> createRepeated() => $pb.PbList<KeyServiceJWKRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceJWKRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceJWKRequest>(create);
  static KeyServiceJWKRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class KeyServiceJWKResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyServiceJWKResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jwk')
    ..hasRequiredFields = false
  ;

  KeyServiceJWKResponse._() : super();
  factory KeyServiceJWKResponse({
    $core.String? jwk,
  }) {
    final _result = create();
    if (jwk != null) {
      _result.jwk = jwk;
    }
    return _result;
  }
  factory KeyServiceJWKResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyServiceJWKResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyServiceJWKResponse clone() => KeyServiceJWKResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyServiceJWKResponse copyWith(void Function(KeyServiceJWKResponse) updates) => super.copyWith((message) => updates(message as KeyServiceJWKResponse)) as KeyServiceJWKResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyServiceJWKResponse create() => KeyServiceJWKResponse._();
  KeyServiceJWKResponse createEmptyInstance() => create();
  static $pb.PbList<KeyServiceJWKResponse> createRepeated() => $pb.PbList<KeyServiceJWKResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyServiceJWKResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyServiceJWKResponse>(create);
  static KeyServiceJWKResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jwk => $_getSZ(0);
  @$pb.TagNumber(1)
  set jwk($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJwk() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwk() => clearField(1);
}

class KeyServiceApi {
  $pb.RpcClient _client;
  KeyServiceApi(this._client);

  $async.Future<KeyServiceCreateResponse> create_($pb.ClientContext? ctx, KeyServiceCreateRequest request) {
    var emptyResponse = KeyServiceCreateResponse();
    return _client.invoke<KeyServiceCreateResponse>(ctx, 'KeyService', 'Create', request, emptyResponse);
  }
  $async.Future<KeyServiceGetResponse> get($pb.ClientContext? ctx, KeyServiceGetRequest request) {
    var emptyResponse = KeyServiceGetResponse();
    return _client.invoke<KeyServiceGetResponse>(ctx, 'KeyService', 'Get', request, emptyResponse);
  }
  $async.Future<KeyServiceCreateResponse> getOrCreate($pb.ClientContext? ctx, KeyServiceCreateRequest request) {
    var emptyResponse = KeyServiceCreateResponse();
    return _client.invoke<KeyServiceCreateResponse>(ctx, 'KeyService', 'GetOrCreate', request, emptyResponse);
  }
  $async.Future<KeyServiceListResponse> list($pb.ClientContext? ctx, KeyServiceListRequest request) {
    var emptyResponse = KeyServiceListResponse();
    return _client.invoke<KeyServiceListResponse>(ctx, 'KeyService', 'List', request, emptyResponse);
  }
  $async.Future<KeyServiceSignResponse> sign($pb.ClientContext? ctx, KeyServiceSignRequest request) {
    var emptyResponse = KeyServiceSignResponse();
    return _client.invoke<KeyServiceSignResponse>(ctx, 'KeyService', 'Sign', request, emptyResponse);
  }
  $async.Future<KeyServiceVerifyResponse> verify($pb.ClientContext? ctx, KeyServiceVerifyRequest request) {
    var emptyResponse = KeyServiceVerifyResponse();
    return _client.invoke<KeyServiceVerifyResponse>(ctx, 'KeyService', 'Verify', request, emptyResponse);
  }
  $async.Future<KeyServiceCryptoResponse> crypto($pb.ClientContext? ctx, KeyServiceCryptoRequest request) {
    var emptyResponse = KeyServiceCryptoResponse();
    return _client.invoke<KeyServiceCryptoResponse>(ctx, 'KeyService', 'Crypto', request, emptyResponse);
  }
  $async.Future<KeyServiceDecryptResponse> decrypt($pb.ClientContext? ctx, KeyServiceDecryptRequest request) {
    var emptyResponse = KeyServiceDecryptResponse();
    return _client.invoke<KeyServiceDecryptResponse>(ctx, 'KeyService', 'Decrypt', request, emptyResponse);
  }
  $async.Future<KeyServiceRotateResponse> rotate($pb.ClientContext? ctx, KeyServiceRotateRequest request) {
    var emptyResponse = KeyServiceRotateResponse();
    return _client.invoke<KeyServiceRotateResponse>(ctx, 'KeyService', 'Rotate', request, emptyResponse);
  }
  $async.Future<KeyServiceDeleteResponse> delete($pb.ClientContext? ctx, KeyServiceDeleteRequest request) {
    var emptyResponse = KeyServiceDeleteResponse();
    return _client.invoke<KeyServiceDeleteResponse>(ctx, 'KeyService', 'Delete', request, emptyResponse);
  }
  $async.Future<KeyServiceJWKResponse> jWK($pb.ClientContext? ctx, KeyServiceJWKRequest request) {
    var emptyResponse = KeyServiceJWKResponse();
    return _client.invoke<KeyServiceJWKResponse>(ctx, 'KeyService', 'JWK', request, emptyResponse);
  }
}

