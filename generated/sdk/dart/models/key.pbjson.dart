///
//  Generated code. Do not modify.
//  source: models/key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../google/protobuf/timestamp.pbjson.dart' as $0;

@$core.Deprecated('Use keyDescriptor instead')
const Key$json = const {
  '1': 'Key',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'external_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'externalId', '17': true},
    const {'1': 'private_key', '3': 3, '4': 1, '5': 9, '10': 'privateKey'},
    const {'1': 'public_key', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
    const {'1': 'should_rotate', '3': 5, '4': 1, '5': 8, '9': 1, '10': 'shouldRotate', '17': true},
    const {'1': 'rotated_from_id', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'rotatedFromId', '17': true},
    const {'1': 'rotate_cron', '3': 7, '4': 1, '5': 9, '9': 3, '10': 'rotateCron', '17': true},
    const {'1': 'expires_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
    const {'1': 'updated_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'created_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '8': const [
    const {'1': '_external_id'},
    const {'1': '_should_rotate'},
    const {'1': '_rotated_from_id'},
    const {'1': '_rotate_cron'},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode('CgNLZXkSDgoCaWQYASABKAlSAmlkEiQKC2V4dGVybmFsX2lkGAIgASgJSABSCmV4dGVybmFsSWSIAQESHwoLcHJpdmF0ZV9rZXkYAyABKAlSCnByaXZhdGVLZXkSHQoKcHVibGljX2tleRgEIAEoCVIJcHVibGljS2V5EigKDXNob3VsZF9yb3RhdGUYBSABKAhIAVIMc2hvdWxkUm90YXRliAEBEisKD3JvdGF0ZWRfZnJvbV9pZBgGIAEoCUgCUg1yb3RhdGVkRnJvbUlkiAEBEiQKC3JvdGF0ZV9jcm9uGAcgASgJSANSCnJvdGF0ZUNyb26IAQESOQoKZXhwaXJlc19hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdBI5Cgp1cGRhdGVkX2F0GAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0EjkKCmNyZWF0ZWRfYXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXRCDgoMX2V4dGVybmFsX2lkQhAKDl9zaG91bGRfcm90YXRlQhIKEF9yb3RhdGVkX2Zyb21faWRCDgoMX3JvdGF0ZV9jcm9u');
@$core.Deprecated('Use keyServiceCreateRequestDescriptor instead')
const KeyServiceCreateRequest$json = const {
  '1': 'KeyServiceCreateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    const {'1': 'should_rotate', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'shouldRotate', '17': true},
    const {'1': 'rotate_cron', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'rotateCron', '17': true},
  ],
  '8': const [
    const {'1': '_id'},
    const {'1': '_should_rotate'},
    const {'1': '_rotate_cron'},
  ],
};

/// Descriptor for `KeyServiceCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceCreateRequestDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlQ3JlYXRlUmVxdWVzdBITCgJpZBgBIAEoCUgAUgJpZIgBARIoCg1zaG91bGRfcm90YXRlGAIgASgISAFSDHNob3VsZFJvdGF0ZYgBARIkCgtyb3RhdGVfY3JvbhgDIAEoCUgCUgpyb3RhdGVDcm9uiAEBQgUKA19pZEIQCg5fc2hvdWxkX3JvdGF0ZUIOCgxfcm90YXRlX2Nyb24=');
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
  ],
};

/// Descriptor for `KeyServiceGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceGetRequestDescriptor = $convert.base64Decode('ChRLZXlTZXJ2aWNlR2V0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
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
    const {'1': 'should_rotate', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'shouldRotate', '17': true},
    const {'1': 'rotate_cron', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'rotateCron', '17': true},
  ],
  '8': const [
    const {'1': '_should_rotate'},
    const {'1': '_rotate_cron'},
  ],
};

/// Descriptor for `KeyServiceGetOrCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceGetOrCreateRequestDescriptor = $convert.base64Decode('ChxLZXlTZXJ2aWNlR2V0T3JDcmVhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIoCg1zaG91bGRfcm90YXRlGAIgASgISABSDHNob3VsZFJvdGF0ZYgBARIkCgtyb3RhdGVfY3JvbhgDIAEoCUgBUgpyb3RhdGVDcm9uiAEBQhAKDl9zaG91bGRfcm90YXRlQg4KDF9yb3RhdGVfY3Jvbg==');
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
  ],
  '8': const [
    const {'1': '_first_id'},
  ],
};

/// Descriptor for `KeyServiceListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceListRequestDescriptor = $convert.base64Decode('ChVLZXlTZXJ2aWNlTGlzdFJlcXVlc3QSHgoIZmlyc3RfaWQYASABKAlIAFIHZmlyc3RJZIgBAUILCglfZmlyc3RfaWQ=');
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
  ],
};

/// Descriptor for `KeyServiceSignResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceSignResponseDescriptor = $convert.base64Decode('ChZLZXlTZXJ2aWNlU2lnblJlc3BvbnNlEhwKCXNpZ25hdHVyZRgBIAEoCVIJc2lnbmF0dXJl');
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
  ],
};

/// Descriptor for `KeyServiceRotateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyServiceRotateRequestDescriptor = $convert.base64Decode('ChdLZXlTZXJ2aWNlUm90YXRlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
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
const $core.Map<$core.String, $core.dynamic> KeyServiceBase$json = const {
  '1': 'KeyService',
  '2': const [
    const {'1': 'Create', '2': '.models.KeyServiceCreateRequest', '3': '.models.KeyServiceCreateResponse', '4': const {}},
    const {'1': 'Get', '2': '.models.KeyServiceGetRequest', '3': '.models.KeyServiceGetResponse', '4': const {}},
    const {'1': 'GetOrCreate', '2': '.models.KeyServiceGetOrCreateRequest', '3': '.models.KeyServiceGetOrCreateResponse', '4': const {}},
    const {'1': 'List', '2': '.models.KeyServiceListRequest', '3': '.models.KeyServiceListResponse', '4': const {}},
    const {'1': 'Sign', '2': '.models.KeyServiceSignRequest', '3': '.models.KeyServiceSignResponse', '4': const {}},
    const {'1': 'Verify', '2': '.models.KeyServiceVerifyRequest', '3': '.models.KeyServiceVerifyResponse', '4': const {}},
    const {'1': 'Crypt', '2': '.models.KeyServiceCryptRequest', '3': '.models.KeyServiceCryptResponse', '4': const {}},
    const {'1': 'Decrypt', '2': '.models.KeyServiceDecryptRequest', '3': '.models.KeyServiceDecryptResponse', '4': const {}},
    const {'1': 'Rotate', '2': '.models.KeyServiceRotateRequest', '3': '.models.KeyServiceRotateResponse', '4': const {}},
    const {'1': 'Delete', '2': '.models.KeyServiceDeleteRequest', '3': '.models.KeyServiceDeleteResponse', '4': const {}},
    const {'1': 'JWK', '2': '.models.KeyServiceJWKRequest', '3': '.models.KeyServiceJWKResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use keyServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> KeyServiceBase$messageJson = const {
  '.models.KeyServiceCreateRequest': KeyServiceCreateRequest$json,
  '.models.KeyServiceCreateResponse': KeyServiceCreateResponse$json,
  '.models.Key': Key$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.models.KeyServiceGetRequest': KeyServiceGetRequest$json,
  '.models.KeyServiceGetResponse': KeyServiceGetResponse$json,
  '.models.KeyServiceGetOrCreateRequest': KeyServiceGetOrCreateRequest$json,
  '.models.KeyServiceGetOrCreateResponse': KeyServiceGetOrCreateResponse$json,
  '.models.KeyServiceListRequest': KeyServiceListRequest$json,
  '.models.KeyServiceListResponse': KeyServiceListResponse$json,
  '.models.KeyServiceSignRequest': KeyServiceSignRequest$json,
  '.models.KeyServiceSignResponse': KeyServiceSignResponse$json,
  '.models.KeyServiceVerifyRequest': KeyServiceVerifyRequest$json,
  '.models.KeyServiceVerifyResponse': KeyServiceVerifyResponse$json,
  '.models.KeyServiceCryptRequest': KeyServiceCryptRequest$json,
  '.models.KeyServiceCryptResponse': KeyServiceCryptResponse$json,
  '.models.KeyServiceDecryptRequest': KeyServiceDecryptRequest$json,
  '.models.KeyServiceDecryptResponse': KeyServiceDecryptResponse$json,
  '.models.KeyServiceRotateRequest': KeyServiceRotateRequest$json,
  '.models.KeyServiceRotateResponse': KeyServiceRotateResponse$json,
  '.models.KeyServiceDeleteRequest': KeyServiceDeleteRequest$json,
  '.models.KeyServiceDeleteResponse': KeyServiceDeleteResponse$json,
  '.models.KeyServiceJWKRequest': KeyServiceJWKRequest$json,
  '.models.KeyServiceJWKResponse': KeyServiceJWKResponse$json,
};

/// Descriptor for `KeyService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List keyServiceDescriptor = $convert.base64Decode('CgpLZXlTZXJ2aWNlEmAKBkNyZWF0ZRIfLm1vZGVscy5LZXlTZXJ2aWNlQ3JlYXRlUmVxdWVzdBogLm1vZGVscy5LZXlTZXJ2aWNlQ3JlYXRlUmVzcG9uc2UiE4LT5JMCDToBKiIIL3YxL2tleXMSWQoDR2V0EhwubW9kZWxzLktleVNlcnZpY2VHZXRSZXF1ZXN0Gh0ubW9kZWxzLktleVNlcnZpY2VHZXRSZXNwb25zZSIVgtPkkwIPEg0vdjEva2V5cy97aWR9En0KC0dldE9yQ3JlYXRlEiQubW9kZWxzLktleVNlcnZpY2VHZXRPckNyZWF0ZVJlcXVlc3QaJS5tb2RlbHMuS2V5U2VydmljZUdldE9yQ3JlYXRlUmVzcG9uc2UiIYLT5JMCGzoBKiIWL3YxL2tleXMvZ2V0LW9yLWNyZWF0ZRJXCgRMaXN0Eh0ubW9kZWxzLktleVNlcnZpY2VMaXN0UmVxdWVzdBoeLm1vZGVscy5LZXlTZXJ2aWNlTGlzdFJlc3BvbnNlIhCC0+STAgoSCC92MS9rZXlzEmQKBFNpZ24SHS5tb2RlbHMuS2V5U2VydmljZVNpZ25SZXF1ZXN0Gh4ubW9kZWxzLktleVNlcnZpY2VTaWduUmVzcG9uc2UiHYLT5JMCFzoBKiISL3YxL2tleXMve2lkfS9zaWduEmwKBlZlcmlmeRIfLm1vZGVscy5LZXlTZXJ2aWNlVmVyaWZ5UmVxdWVzdBogLm1vZGVscy5LZXlTZXJ2aWNlVmVyaWZ5UmVzcG9uc2UiH4LT5JMCGToBKiIUL3YxL2tleXMve2lkfS92ZXJpZnkSaAoFQ3J5cHQSHi5tb2RlbHMuS2V5U2VydmljZUNyeXB0UmVxdWVzdBofLm1vZGVscy5LZXlTZXJ2aWNlQ3J5cHRSZXNwb25zZSIegtPkkwIYOgEqIhMvdjEva2V5cy97aWR9L2NyeXB0EnAKB0RlY3J5cHQSIC5tb2RlbHMuS2V5U2VydmljZURlY3J5cHRSZXF1ZXN0GiEubW9kZWxzLktleVNlcnZpY2VEZWNyeXB0UmVzcG9uc2UiIILT5JMCGjoBKiIVL3YxL2tleXMve2lkfS9kZWNyeXB0EmkKBlJvdGF0ZRIfLm1vZGVscy5LZXlTZXJ2aWNlUm90YXRlUmVxdWVzdBogLm1vZGVscy5LZXlTZXJ2aWNlUm90YXRlUmVzcG9uc2UiHILT5JMCFiIUL3YxL2tleXMve2lkfS9yb3RhdGUSYgoGRGVsZXRlEh8ubW9kZWxzLktleVNlcnZpY2VEZWxldGVSZXF1ZXN0GiAubW9kZWxzLktleVNlcnZpY2VEZWxldGVSZXNwb25zZSIVgtPkkwIPKg0vdjEva2V5cy97aWR9El0KA0pXSxIcLm1vZGVscy5LZXlTZXJ2aWNlSldLUmVxdWVzdBodLm1vZGVscy5LZXlTZXJ2aWNlSldLUmVzcG9uc2UiGYLT5JMCExIRL3YxL2tleXMve2lkfS9qd2s=');
