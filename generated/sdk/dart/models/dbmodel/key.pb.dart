///
//  Generated code. Do not modify.
//  source: models/dbmodel/key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../types/types.pb.dart' as $0;

class Key extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Key', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models.dbmodel'), createEmptyInstance: create)
    ..aOM<$0.ID>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', subBuilder: $0.ID.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'privateKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shouldRotate')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotatedFromId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotateCron')
    ..aOM<$0.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.DeletedAt>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedAt', subBuilder: $0.DeletedAt.create)
    ..hasRequiredFields = false
  ;

  Key._() : super();
  factory Key({
    $0.ID? id,
    $core.String? privateKey,
    $core.String? publicKey,
    $core.bool? shouldRotate,
    $core.String? rotatedFromId,
    $core.String? rotateCron,
    $0.Timestamp? expiresAt,
    $0.Timestamp? updatedAt,
    $0.Timestamp? createdAt,
    $0.DeletedAt? deletedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
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
    if (deletedAt != null) {
      _result.deletedAt = deletedAt;
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
  $0.ID get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($0.ID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $0.ID ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get privateKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set privateKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrivateKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get publicKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set publicKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get shouldRotate => $_getBF(3);
  @$pb.TagNumber(4)
  set shouldRotate($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShouldRotate() => $_has(3);
  @$pb.TagNumber(4)
  void clearShouldRotate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rotatedFromId => $_getSZ(4);
  @$pb.TagNumber(5)
  set rotatedFromId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRotatedFromId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRotatedFromId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get rotateCron => $_getSZ(5);
  @$pb.TagNumber(6)
  set rotateCron($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRotateCron() => $_has(5);
  @$pb.TagNumber(6)
  void clearRotateCron() => clearField(6);

  @$pb.TagNumber(9)
  $0.Timestamp get expiresAt => $_getN(6);
  @$pb.TagNumber(9)
  set expiresAt($0.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasExpiresAt() => $_has(6);
  @$pb.TagNumber(9)
  void clearExpiresAt() => clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureExpiresAt() => $_ensure(6);

  @$pb.TagNumber(10)
  $0.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(10)
  set updatedAt($0.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(10)
  void clearUpdatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $0.Timestamp ensureUpdatedAt() => $_ensure(7);

  @$pb.TagNumber(11)
  $0.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(11)
  set createdAt($0.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $0.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(12)
  $0.DeletedAt get deletedAt => $_getN(9);
  @$pb.TagNumber(12)
  set deletedAt($0.DeletedAt v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeletedAt() => $_has(9);
  @$pb.TagNumber(12)
  void clearDeletedAt() => clearField(12);
  @$pb.TagNumber(12)
  $0.DeletedAt ensureDeletedAt() => $_ensure(9);
}

