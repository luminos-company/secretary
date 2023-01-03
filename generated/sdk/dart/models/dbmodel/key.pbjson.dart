///
//  Generated code. Do not modify.
//  source: models/dbmodel/key.proto
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
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.types.ID', '8': const {}, '10': 'id'},
    const {'1': 'private_key', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'privateKey'},
    const {'1': 'public_key', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'publicKey'},
    const {'1': 'should_rotate', '3': 4, '4': 1, '5': 8, '8': const {}, '10': 'shouldRotate'},
    const {'1': 'rotated_from_id', '3': 5, '4': 1, '5': 9, '8': const {}, '9': 0, '10': 'rotatedFromId', '17': true},
    const {'1': 'rotate_cron', '3': 6, '4': 1, '5': 9, '8': const {}, '10': 'rotateCron'},
    const {'1': 'expires_at', '3': 9, '4': 1, '5': 11, '6': '.types.Timestamp', '8': const {}, '10': 'expiresAt'},
    const {'1': 'updated_at', '3': 10, '4': 1, '5': 11, '6': '.types.Timestamp', '8': const {}, '10': 'updatedAt'},
    const {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.types.Timestamp', '8': const {}, '10': 'createdAt'},
    const {'1': 'deleted_at', '3': 12, '4': 1, '5': 11, '6': '.types.DeletedAt', '8': const {}, '10': 'deletedAt'},
  ],
  '8': const [
    const {'1': '_rotated_from_id'},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode('CgNLZXkSPAoCaWQYASABKAsyCS50eXBlcy5JREIhmoSeAxxqc29uOiJpZCIgZ29ybToicHJpbWFyeV9rZXkiUgJpZBI4Cgtwcml2YXRlX2tleRgCIAEoCUIXmoSeAxJqc29uOiJwcml2YXRlX2tleSJSCnByaXZhdGVLZXkSNQoKcHVibGljX2tleRgDIAEoCUIWmoSeAxFqc29uOiJwdWJsaWNfa2V5IlIJcHVibGljS2V5EmQKDXNob3VsZF9yb3RhdGUYBCABKAhCP5qEngM6anNvbjoic2hvdWxkX3JvdGF0ZSIgZ29ybToiZGVmYXVsdDpmYWxzZTsgaW5kZXg7IG5vdCBudWxsIlIMc2hvdWxkUm90YXRlElUKD3JvdGF0ZWRfZnJvbV9pZBgFIAEoCUIomoSeAyNqc29uOiJyb3RhdGVkX2Zyb21faWQiIGdvcm06ImluZGV4IkgAUg1yb3RhdGVkRnJvbUlkiAEBElUKC3JvdGF0ZV9jcm9uGAYgASgJQjSahJ4DL2pzb246InJvdGF0ZV9jcm9uIiBnb3JtOiJkZWZhdWx0OicwIDAgMCAxICogKiciUgpyb3RhdGVDcm9uEmYKCmV4cGlyZXNfYXQYCSABKAsyEC50eXBlcy5UaW1lc3RhbXBCNZqEngMwanNvbjoiZXhwaXJlc19hdCIgZ29ybToiaW5kZXg7IHR5cGU6dGltZXN0YW1wdHoiUglleHBpcmVzQXQSdgoKdXBkYXRlZF9hdBgKIAEoCzIQLnR5cGVzLlRpbWVzdGFtcEJFmoSeA0Bqc29uOiJ1cGRhdGVkX2F0IiBnb3JtOiJpbmRleDsgdHlwZTp0aW1lc3RhbXB0ejsgYXV0b0NyZWF0ZVRpbWUiUgl1cGRhdGVkQXQSdgoKY3JlYXRlZF9hdBgLIAEoCzIQLnR5cGVzLlRpbWVzdGFtcEJFmoSeA0Bqc29uOiJjcmVhdGVkX2F0IiBnb3JtOiJpbmRleDsgdHlwZTp0aW1lc3RhbXB0ejsgYXV0b1VwZGF0ZVRpbWUiUgljcmVhdGVkQXQSZgoKZGVsZXRlZF9hdBgMIAEoCzIQLnR5cGVzLkRlbGV0ZWRBdEI1moSeAzBqc29uOiJkZWxldGVkX2F0IiBnb3JtOiJpbmRleDsgdHlwZTp0aW1lc3RhbXB0eiJSCWRlbGV0ZWRBdEISChBfcm90YXRlZF9mcm9tX2lk');
