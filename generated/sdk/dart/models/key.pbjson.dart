///
//  Generated code. Do not modify.
//  source: models/key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use keyDescriptor instead')
const Key$json = const {
  '1': 'Key',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'external_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'externalId', '17': true},
    const {'1': 'private_key', '3': 3, '4': 1, '5': 9, '10': 'privateKey'},
    const {'1': 'public_key', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
    const {'1': 'kid', '3': 5, '4': 1, '5': 9, '10': 'kid'},
    const {'1': 'should_rotate', '3': 6, '4': 1, '5': 8, '9': 1, '10': 'shouldRotate', '17': true},
    const {'1': 'rotated_from_id', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'rotatedFromId', '17': true},
    const {'1': 'rotate_cron', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'rotateCron', '17': true},
    const {'1': 'expires_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
    const {'1': 'updated_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '8': const [
    const {'1': '_external_id'},
    const {'1': '_should_rotate'},
    const {'1': '_rotated_from_id'},
    const {'1': '_rotate_cron'},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode('CgNLZXkSDgoCaWQYASABKAlSAmlkEiQKC2V4dGVybmFsX2lkGAIgASgJSABSCmV4dGVybmFsSWSIAQESHwoLcHJpdmF0ZV9rZXkYAyABKAlSCnByaXZhdGVLZXkSHQoKcHVibGljX2tleRgEIAEoCVIJcHVibGljS2V5EhAKA2tpZBgFIAEoCVIDa2lkEigKDXNob3VsZF9yb3RhdGUYBiABKAhIAVIMc2hvdWxkUm90YXRliAEBEisKD3JvdGF0ZWRfZnJvbV9pZBgHIAEoCUgCUg1yb3RhdGVkRnJvbUlkiAEBEiQKC3JvdGF0ZV9jcm9uGAggASgJSANSCnJvdGF0ZUNyb26IAQESOQoKZXhwaXJlc19hdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdBI5Cgp1cGRhdGVkX2F0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0EjkKCmNyZWF0ZWRfYXQYCyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXRCDgoMX2V4dGVybmFsX2lkQhAKDl9zaG91bGRfcm90YXRlQhIKEF9yb3RhdGVkX2Zyb21faWRCDgoMX3JvdGF0ZV9jcm9u');
@$core.Deprecated('Use keyServiceCreateRequestDescriptor instead')
const KeyServiceCreateRequest$json = const {
  '1': 'KeyServiceCreateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    const {'1': 'show_private_key', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'showPrivateKey', '17': true},
    const {'1': 'should_rotate', '3': 3, '4': 1, '5': 8, '9': 2, '10': 'shouldRotate', '17': true},
    const {'1': 'rotate_cron', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'rotateCron', '17': true},
    const {'1': 'bits', '3': 5, '4': 1, '5': 5, '9': 4, '10': 'bits', '17': true},
  ],
  '8': const [
    const {'1': '_id'},
    const {'1': '_show_private_key'},
    const {'1': '_should_rotate'},
    const {'1': '_rotate_cron'},
    const {'1': '_bits'},
  ],
};

/// Descriptor for `KeyServiceCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceCreateRequestDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlQ3JlYXRlUmVxdWVzdBITCgJpZBgBIAEoCUgAUgJpZIgBARItChBzaG93X3ByaXZhdGVfa2V5GAIgASgISAFSDnNob3dQcml2YXRlS2V5iAEBEigKDXNob3VsZF9yb3RhdGUYAyABKAhIAlIMc2hvdWxkUm90YXRliAEBEiQKC3JvdGF0ZV9jcm9uGAQgASgJSANSCnJvdGF0ZUNyb26IAQESFwoEYml0cxgFIAEoBUgEUgRiaXRziAEBQgUKA19pZEITChFfc2hvd19wcml2YXRlX2tleUIQCg5fc2hvdWxkX3JvdGF0ZUIOCgxfcm90YXRlX2Nyb25CBwoFX2JpdHM=');
@$core.Deprecated('Use keyServiceCreateResponseDescriptor instead')
const KeyServiceCreateResponse$json = const {
  '1': 'KeyServiceCreateResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.models.Key', '10': 'key'},
  ],
};

/// Descriptor for `KeyServiceCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceCreateResponseDescriptor = $convert.base64Decode('ChhLZXlTZXJ2aWNlQ3JlYXRlUmVzcG9uc2USHQoDa2V5GAEgASgLMgsubW9kZWxzLktleVIDa2V5');
@$core.Deprecated('Use keyServiceGetRequestDescriptor instead')
const KeyServiceGetRequest$json = const {
  '1': 'KeyServiceGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'show_private_key', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'showPrivateKey', '17': true},
  ],
  '8': const [
    const {'1': '_show_private_key'},
  ],
};

/// Descriptor for `KeyServiceGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceGetRequestDescriptor = $convert.base64Decode('ChRLZXlTZXJ2aWNlR2V0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSLQoQc2hvd19wcml2YXRlX2tleRgCIAEoCEgAUg5zaG93UHJpdmF0ZUtleYgBAUITChFfc2hvd19wcml2YXRlX2tleQ==');
@$core.Deprecated('Use keyServiceGetResponseDescriptor instead')
const KeyServiceGetResponse$json = const {
  '1': 'KeyServiceGetResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.models.Key', '10': 'key'},
  ],
};

/// Descriptor for `KeyServiceGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceGetResponseDescriptor = $convert.base64Decode('ChVLZXlTZXJ2aWNlR2V0UmVzcG9uc2USHQoDa2V5GAEgASgLMgsubW9kZWxzLktleVIDa2V5');
@$core.Deprecated('Use keyServiceGetOrCreateRequestDescriptor instead')
const KeyServiceGetOrCreateRequest$json = const {
  '1': 'KeyServiceGetOrCreateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'show_private_key', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'showPrivateKey', '17': true},
    const {'1': 'should_rotate', '3': 3, '4': 1, '5': 8, '9': 1, '10': 'shouldRotate', '17': true},
    const {'1': 'rotate_cron', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'rotateCron', '17': true},
    const {'1': 'bits', '3': 5, '4': 1, '5': 5, '9': 3, '10': 'bits', '17': true},
  ],
  '8': const [
    const {'1': '_show_private_key'},
    const {'1': '_should_rotate'},
    const {'1': '_rotate_cron'},
    const {'1': '_bits'},
  ],
};

/// Descriptor for `KeyServiceGetOrCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceGetOrCreateRequestDescriptor = $convert.base64Decode('ChxLZXlTZXJ2aWNlR2V0T3JDcmVhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBItChBzaG93X3ByaXZhdGVfa2V5GAIgASgISABSDnNob3dQcml2YXRlS2V5iAEBEigKDXNob3VsZF9yb3RhdGUYAyABKAhIAVIMc2hvdWxkUm90YXRliAEBEiQKC3JvdGF0ZV9jcm9uGAQgASgJSAJSCnJvdGF0ZUNyb26IAQESFwoEYml0cxgFIAEoBUgDUgRiaXRziAEBQhMKEV9zaG93X3ByaXZhdGVfa2V5QhAKDl9zaG91bGRfcm90YXRlQg4KDF9yb3RhdGVfY3JvbkIHCgVfYml0cw==');
@$core.Deprecated('Use keyServiceGetOrCreateResponseDescriptor instead')
const KeyServiceGetOrCreateResponse$json = const {
  '1': 'KeyServiceGetOrCreateResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.models.Key', '10': 'key'},
  ],
};

/// Descriptor for `KeyServiceGetOrCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceGetOrCreateResponseDescriptor = $convert.base64Decode('Ch1LZXlTZXJ2aWNlR2V0T3JDcmVhdGVSZXNwb25zZRIdCgNrZXkYASABKAsyCy5tb2RlbHMuS2V5UgNrZXk=');
@$core.Deprecated('Use keyServiceListRequestDescriptor instead')
const KeyServiceListRequest$json = const {
  '1': 'KeyServiceListRequest',
  '2': const [
    const {'1': 'first_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'firstId', '17': true},
    const {'1': 'show_private_key', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'showPrivateKey', '17': true},
  ],
  '8': const [
    const {'1': '_first_id'},
    const {'1': '_show_private_key'},
  ],
};

/// Descriptor for `KeyServiceListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceListRequestDescriptor = $convert.base64Decode('ChVLZXlTZXJ2aWNlTGlzdFJlcXVlc3QSHgoIZmlyc3RfaWQYASABKAlIAFIHZmlyc3RJZIgBARItChBzaG93X3ByaXZhdGVfa2V5GAIgASgISAFSDnNob3dQcml2YXRlS2V5iAEBQgsKCV9maXJzdF9pZEITChFfc2hvd19wcml2YXRlX2tleQ==');
@$core.Deprecated('Use keyServiceListResponseDescriptor instead')
const KeyServiceListResponse$json = const {
  '1': 'KeyServiceListResponse',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.models.Key', '10': 'keys'},
    const {'1': 'last_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'lastId', '17': true},
  ],
  '8': const [
    const {'1': '_last_id'},
  ],
};

/// Descriptor for `KeyServiceListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceListResponseDescriptor = $convert.base64Decode('ChZLZXlTZXJ2aWNlTGlzdFJlc3BvbnNlEh8KBGtleXMYASADKAsyCy5tb2RlbHMuS2V5UgRrZXlzEhwKB2xhc3RfaWQYAiABKAlIAFIGbGFzdElkiAEBQgoKCF9sYXN0X2lk');
@$core.Deprecated('Use keyServiceSignRequestDescriptor instead')
const KeyServiceSignRequest$json = const {
  '1': 'KeyServiceSignRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `KeyServiceSignRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceSignRequestDescriptor = $convert.base64Decode('ChVLZXlTZXJ2aWNlU2lnblJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use keyServiceSignResponseDescriptor instead')
const KeyServiceSignResponse$json = const {
  '1': 'KeyServiceSignResponse',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
    const {'1': 'kid', '3': 2, '4': 1, '5': 9, '10': 'kid'},
  ],
};

/// Descriptor for `KeyServiceSignResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceSignResponseDescriptor = $convert.base64Decode('ChZLZXlTZXJ2aWNlU2lnblJlc3BvbnNlEhwKCXNpZ25hdHVyZRgBIAEoCVIJc2lnbmF0dXJlEhAKA2tpZBgCIAEoCVIDa2lk');
@$core.Deprecated('Use keyServiceVerifyRequestDescriptor instead')
const KeyServiceVerifyRequest$json = const {
  '1': 'KeyServiceVerifyRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'signature', '3': 3, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `KeyServiceVerifyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceVerifyRequestDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlVmVyaWZ5UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIcCglzaWduYXR1cmUYAyABKAlSCXNpZ25hdHVyZQ==');
@$core.Deprecated('Use keyServiceVerifyResponseDescriptor instead')
const KeyServiceVerifyResponse$json = const {
  '1': 'KeyServiceVerifyResponse',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `KeyServiceVerifyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceVerifyResponseDescriptor = $convert.base64Decode('ChhLZXlTZXJ2aWNlVmVyaWZ5UmVzcG9uc2USFAoFdmFsaWQYASABKAhSBXZhbGlk');
@$core.Deprecated('Use keyServiceCryptRequestDescriptor instead')
const KeyServiceCryptRequest$json = const {
  '1': 'KeyServiceCryptRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `KeyServiceCryptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceCryptRequestDescriptor = $convert.base64Decode('ChZLZXlTZXJ2aWNlQ3J5cHRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use keyServiceCryptResponseDescriptor instead')
const KeyServiceCryptResponse$json = const {
  '1': 'KeyServiceCryptResponse',
  '2': const [
    const {'1': 'ciphertext', '3': 1, '4': 1, '5': 9, '10': 'ciphertext'},
  ],
};

/// Descriptor for `KeyServiceCryptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceCryptResponseDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlQ3J5cHRSZXNwb25zZRIeCgpjaXBoZXJ0ZXh0GAEgASgJUgpjaXBoZXJ0ZXh0');
@$core.Deprecated('Use keyServiceDecryptRequestDescriptor instead')
const KeyServiceDecryptRequest$json = const {
  '1': 'KeyServiceDecryptRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'ciphertext', '3': 2, '4': 1, '5': 9, '10': 'ciphertext'},
  ],
};

/// Descriptor for `KeyServiceDecryptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceDecryptRequestDescriptor = $convert.base64Decode('ChhLZXlTZXJ2aWNlRGVjcnlwdFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEh4KCmNpcGhlcnRleHQYAiABKAlSCmNpcGhlcnRleHQ=');
@$core.Deprecated('Use keyServiceDecryptResponseDescriptor instead')
const KeyServiceDecryptResponse$json = const {
  '1': 'KeyServiceDecryptResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `KeyServiceDecryptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceDecryptResponseDescriptor = $convert.base64Decode('ChlLZXlTZXJ2aWNlRGVjcnlwdFJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use keyServiceRotateRequestDescriptor instead')
const KeyServiceRotateRequest$json = const {
  '1': 'KeyServiceRotateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'show_private_key', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'showPrivateKey', '17': true},
  ],
  '8': const [
    const {'1': '_show_private_key'},
  ],
};

/// Descriptor for `KeyServiceRotateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceRotateRequestDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlUm90YXRlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSLQoQc2hvd19wcml2YXRlX2tleRgCIAEoCEgAUg5zaG93UHJpdmF0ZUtleYgBAUITChFfc2hvd19wcml2YXRlX2tleQ==');
@$core.Deprecated('Use keyServiceRotateResponseDescriptor instead')
const KeyServiceRotateResponse$json = const {
  '1': 'KeyServiceRotateResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.models.Key', '10': 'key'},
  ],
};

/// Descriptor for `KeyServiceRotateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceRotateResponseDescriptor = $convert.base64Decode('ChhLZXlTZXJ2aWNlUm90YXRlUmVzcG9uc2USHQoDa2V5GAEgASgLMgsubW9kZWxzLktleVIDa2V5');
@$core.Deprecated('Use keyServiceDeleteRequestDescriptor instead')
const KeyServiceDeleteRequest$json = const {
  '1': 'KeyServiceDeleteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `KeyServiceDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceDeleteRequestDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlRGVsZXRlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use keyServiceDeleteResponseDescriptor instead')
const KeyServiceDeleteResponse$json = const {
  '1': 'KeyServiceDeleteResponse',
};

/// Descriptor for `KeyServiceDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceDeleteResponseDescriptor = $convert.base64Decode('ChhLZXlTZXJ2aWNlRGVsZXRlUmVzcG9uc2U=');
@$core.Deprecated('Use keyServiceJWKRequestDescriptor instead')
const KeyServiceJWKRequest$json = const {
  '1': 'KeyServiceJWKRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `KeyServiceJWKRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceJWKRequestDescriptor = $convert.base64Decode('ChRLZXlTZXJ2aWNlSldLUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use keyServiceJWKResponseDescriptor instead')
const KeyServiceJWKResponse$json = const {
  '1': 'KeyServiceJWKResponse',
  '2': const [
    const {'1': 'jwk', '3': 1, '4': 1, '5': 9, '10': 'jwk'},
  ],
};

/// Descriptor for `KeyServiceJWKResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceJWKResponseDescriptor = $convert.base64Decode('ChVLZXlTZXJ2aWNlSldLUmVzcG9uc2USEAoDandrGAEgASgJUgNqd2s=');
@$core.Deprecated('Use keyServiceJWTSignRequestDescriptor instead')
const KeyServiceJWTSignRequest$json = const {
  '1': 'KeyServiceJWTSignRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `KeyServiceJWTSignRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceJWTSignRequestDescriptor = $convert.base64Decode('ChhLZXlTZXJ2aWNlSldUU2lnblJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use keyServiceJWTSignResponseDescriptor instead')
const KeyServiceJWTSignResponse$json = const {
  '1': 'KeyServiceJWTSignResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `KeyServiceJWTSignResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceJWTSignResponseDescriptor = $convert.base64Decode('ChlLZXlTZXJ2aWNlSldUU2lnblJlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbg==');
@$core.Deprecated('Use keyServiceJWTVerifyRequestDescriptor instead')
const KeyServiceJWTVerifyRequest$json = const {
  '1': 'KeyServiceJWTVerifyRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `KeyServiceJWTVerifyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceJWTVerifyRequestDescriptor = $convert.base64Decode('ChpLZXlTZXJ2aWNlSldUVmVyaWZ5UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFAoFdG9rZW4YAiABKAlSBXRva2Vu');
@$core.Deprecated('Use keyServiceJWTVerifyResponseDescriptor instead')
const KeyServiceJWTVerifyResponse$json = const {
  '1': 'KeyServiceJWTVerifyResponse',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `KeyServiceJWTVerifyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceJWTVerifyResponseDescriptor = $convert.base64Decode('ChtLZXlTZXJ2aWNlSldUVmVyaWZ5UmVzcG9uc2USFAoFdmFsaWQYASABKAhSBXZhbGlk');
