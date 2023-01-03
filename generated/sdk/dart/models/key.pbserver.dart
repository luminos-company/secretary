///
//  Generated code. Do not modify.
//  source: models/key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'key.pb.dart' as $1;
import 'key.pbjson.dart';

export 'key.pb.dart';

abstract class KeyServiceBase extends $pb.GeneratedService {
  $async.Future<$1.KeyServiceCreateResponse> create($pb.ServerContext ctx, $1.KeyServiceCreateRequest request);
  $async.Future<$1.KeyServiceGetResponse> get($pb.ServerContext ctx, $1.KeyServiceGetRequest request);
  $async.Future<$1.KeyServiceCreateResponse> getOrCreate($pb.ServerContext ctx, $1.KeyServiceCreateRequest request);
  $async.Future<$1.KeyServiceListResponse> list($pb.ServerContext ctx, $1.KeyServiceListRequest request);
  $async.Future<$1.KeyServiceSignResponse> sign($pb.ServerContext ctx, $1.KeyServiceSignRequest request);
  $async.Future<$1.KeyServiceVerifyResponse> verify($pb.ServerContext ctx, $1.KeyServiceVerifyRequest request);
  $async.Future<$1.KeyServiceCryptoResponse> crypto($pb.ServerContext ctx, $1.KeyServiceCryptoRequest request);
  $async.Future<$1.KeyServiceDecryptResponse> decrypt($pb.ServerContext ctx, $1.KeyServiceDecryptRequest request);
  $async.Future<$1.KeyServiceRotateResponse> rotate($pb.ServerContext ctx, $1.KeyServiceRotateRequest request);
  $async.Future<$1.KeyServiceDeleteResponse> delete($pb.ServerContext ctx, $1.KeyServiceDeleteRequest request);
  $async.Future<$1.KeyServiceJWKResponse> jWK($pb.ServerContext ctx, $1.KeyServiceJWKRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Create': return $1.KeyServiceCreateRequest();
      case 'Get': return $1.KeyServiceGetRequest();
      case 'GetOrCreate': return $1.KeyServiceCreateRequest();
      case 'List': return $1.KeyServiceListRequest();
      case 'Sign': return $1.KeyServiceSignRequest();
      case 'Verify': return $1.KeyServiceVerifyRequest();
      case 'Crypto': return $1.KeyServiceCryptoRequest();
      case 'Decrypt': return $1.KeyServiceDecryptRequest();
      case 'Rotate': return $1.KeyServiceRotateRequest();
      case 'Delete': return $1.KeyServiceDeleteRequest();
      case 'JWK': return $1.KeyServiceJWKRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Create': return this.create(ctx, request as $1.KeyServiceCreateRequest);
      case 'Get': return this.get(ctx, request as $1.KeyServiceGetRequest);
      case 'GetOrCreate': return this.getOrCreate(ctx, request as $1.KeyServiceCreateRequest);
      case 'List': return this.list(ctx, request as $1.KeyServiceListRequest);
      case 'Sign': return this.sign(ctx, request as $1.KeyServiceSignRequest);
      case 'Verify': return this.verify(ctx, request as $1.KeyServiceVerifyRequest);
      case 'Crypto': return this.crypto(ctx, request as $1.KeyServiceCryptoRequest);
      case 'Decrypt': return this.decrypt(ctx, request as $1.KeyServiceDecryptRequest);
      case 'Rotate': return this.rotate(ctx, request as $1.KeyServiceRotateRequest);
      case 'Delete': return this.delete(ctx, request as $1.KeyServiceDeleteRequest);
      case 'JWK': return this.jWK(ctx, request as $1.KeyServiceJWKRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => KeyServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => KeyServiceBase$messageJson;
}

