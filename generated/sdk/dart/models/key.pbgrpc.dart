///
//  Generated code. Do not modify.
//  source: models/key.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'key.pb.dart' as $0;
export 'key.pb.dart';

class KeyServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.KeyServiceCreateRequest,
          $0.KeyServiceCreateResponse>(
      '/models.KeyService/Create',
      ($0.KeyServiceCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceCreateResponse.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$0.KeyServiceGetRequest, $0.KeyServiceGetResponse>(
          '/models.KeyService/Get',
          ($0.KeyServiceGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.KeyServiceGetResponse.fromBuffer(value));
  static final _$getOrCreate = $grpc.ClientMethod<
          $0.KeyServiceGetOrCreateRequest, $0.KeyServiceGetOrCreateResponse>(
      '/models.KeyService/GetOrCreate',
      ($0.KeyServiceGetOrCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceGetOrCreateResponse.fromBuffer(value));
  static final _$list =
      $grpc.ClientMethod<$0.KeyServiceListRequest, $0.KeyServiceListResponse>(
          '/models.KeyService/List',
          ($0.KeyServiceListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.KeyServiceListResponse.fromBuffer(value));
  static final _$sign =
      $grpc.ClientMethod<$0.KeyServiceSignRequest, $0.KeyServiceSignResponse>(
          '/models.KeyService/Sign',
          ($0.KeyServiceSignRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.KeyServiceSignResponse.fromBuffer(value));
  static final _$verify = $grpc.ClientMethod<$0.KeyServiceVerifyRequest,
          $0.KeyServiceVerifyResponse>(
      '/models.KeyService/Verify',
      ($0.KeyServiceVerifyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceVerifyResponse.fromBuffer(value));
  static final _$crypt =
      $grpc.ClientMethod<$0.KeyServiceCryptRequest, $0.KeyServiceCryptResponse>(
          '/models.KeyService/Crypt',
          ($0.KeyServiceCryptRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.KeyServiceCryptResponse.fromBuffer(value));
  static final _$decrypt = $grpc.ClientMethod<$0.KeyServiceDecryptRequest,
          $0.KeyServiceDecryptResponse>(
      '/models.KeyService/Decrypt',
      ($0.KeyServiceDecryptRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceDecryptResponse.fromBuffer(value));
  static final _$rotate = $grpc.ClientMethod<$0.KeyServiceRotateRequest,
          $0.KeyServiceRotateResponse>(
      '/models.KeyService/Rotate',
      ($0.KeyServiceRotateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceRotateResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.KeyServiceDeleteRequest,
          $0.KeyServiceDeleteResponse>(
      '/models.KeyService/Delete',
      ($0.KeyServiceDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceDeleteResponse.fromBuffer(value));
  static final _$jWK =
      $grpc.ClientMethod<$0.KeyServiceJWKRequest, $0.KeyServiceJWKResponse>(
          '/models.KeyService/JWK',
          ($0.KeyServiceJWKRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.KeyServiceJWKResponse.fromBuffer(value));
  static final _$jWTSign = $grpc.ClientMethod<$0.KeyServiceJWTSignRequest,
          $0.KeyServiceJWTSignResponse>(
      '/models.KeyService/JWTSign',
      ($0.KeyServiceJWTSignRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceJWTSignResponse.fromBuffer(value));
  static final _$jWTVerify = $grpc.ClientMethod<$0.KeyServiceJWTVerifyRequest,
          $0.KeyServiceJWTVerifyResponse>(
      '/models.KeyService/JWTVerify',
      ($0.KeyServiceJWTVerifyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.KeyServiceJWTVerifyResponse.fromBuffer(value));

  KeyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.KeyServiceCreateResponse> create(
      $0.KeyServiceCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceGetResponse> get(
      $0.KeyServiceGetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceGetOrCreateResponse> getOrCreate(
      $0.KeyServiceGetOrCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrCreate, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceListResponse> list(
      $0.KeyServiceListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceSignResponse> sign(
      $0.KeyServiceSignRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sign, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceVerifyResponse> verify(
      $0.KeyServiceVerifyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceCryptResponse> crypt(
      $0.KeyServiceCryptRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$crypt, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceDecryptResponse> decrypt(
      $0.KeyServiceDecryptRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$decrypt, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceRotateResponse> rotate(
      $0.KeyServiceRotateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rotate, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceDeleteResponse> delete(
      $0.KeyServiceDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceJWKResponse> jWK(
      $0.KeyServiceJWKRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jWK, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceJWTSignResponse> jWTSign(
      $0.KeyServiceJWTSignRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jWTSign, request, options: options);
  }

  $grpc.ResponseFuture<$0.KeyServiceJWTVerifyResponse> jWTVerify(
      $0.KeyServiceJWTVerifyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jWTVerify, request, options: options);
  }
}

abstract class KeyServiceBase extends $grpc.Service {
  $core.String get $name => 'models.KeyService';

  KeyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.KeyServiceCreateRequest,
            $0.KeyServiceCreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceCreateRequest.fromBuffer(value),
        ($0.KeyServiceCreateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.KeyServiceGetRequest, $0.KeyServiceGetResponse>(
            'Get',
            get_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.KeyServiceGetRequest.fromBuffer(value),
            ($0.KeyServiceGetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceGetOrCreateRequest,
            $0.KeyServiceGetOrCreateResponse>(
        'GetOrCreate',
        getOrCreate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceGetOrCreateRequest.fromBuffer(value),
        ($0.KeyServiceGetOrCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceListRequest,
            $0.KeyServiceListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceListRequest.fromBuffer(value),
        ($0.KeyServiceListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceSignRequest,
            $0.KeyServiceSignResponse>(
        'Sign',
        sign_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceSignRequest.fromBuffer(value),
        ($0.KeyServiceSignResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceVerifyRequest,
            $0.KeyServiceVerifyResponse>(
        'Verify',
        verify_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceVerifyRequest.fromBuffer(value),
        ($0.KeyServiceVerifyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceCryptRequest,
            $0.KeyServiceCryptResponse>(
        'Crypt',
        crypt_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceCryptRequest.fromBuffer(value),
        ($0.KeyServiceCryptResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceDecryptRequest,
            $0.KeyServiceDecryptResponse>(
        'Decrypt',
        decrypt_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceDecryptRequest.fromBuffer(value),
        ($0.KeyServiceDecryptResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceRotateRequest,
            $0.KeyServiceRotateResponse>(
        'Rotate',
        rotate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceRotateRequest.fromBuffer(value),
        ($0.KeyServiceRotateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceDeleteRequest,
            $0.KeyServiceDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceDeleteRequest.fromBuffer(value),
        ($0.KeyServiceDeleteResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.KeyServiceJWKRequest, $0.KeyServiceJWKResponse>(
            'JWK',
            jWK_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.KeyServiceJWKRequest.fromBuffer(value),
            ($0.KeyServiceJWKResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceJWTSignRequest,
            $0.KeyServiceJWTSignResponse>(
        'JWTSign',
        jWTSign_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceJWTSignRequest.fromBuffer(value),
        ($0.KeyServiceJWTSignResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.KeyServiceJWTVerifyRequest,
            $0.KeyServiceJWTVerifyResponse>(
        'JWTVerify',
        jWTVerify_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.KeyServiceJWTVerifyRequest.fromBuffer(value),
        ($0.KeyServiceJWTVerifyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.KeyServiceCreateResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceCreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.KeyServiceGetResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceGetRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$0.KeyServiceGetOrCreateResponse> getOrCreate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.KeyServiceGetOrCreateRequest> request) async {
    return getOrCreate(call, await request);
  }

  $async.Future<$0.KeyServiceListResponse> list_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.KeyServiceSignResponse> sign_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceSignRequest> request) async {
    return sign(call, await request);
  }

  $async.Future<$0.KeyServiceVerifyResponse> verify_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceVerifyRequest> request) async {
    return verify(call, await request);
  }

  $async.Future<$0.KeyServiceCryptResponse> crypt_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceCryptRequest> request) async {
    return crypt(call, await request);
  }

  $async.Future<$0.KeyServiceDecryptResponse> decrypt_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.KeyServiceDecryptRequest> request) async {
    return decrypt(call, await request);
  }

  $async.Future<$0.KeyServiceRotateResponse> rotate_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceRotateRequest> request) async {
    return rotate(call, await request);
  }

  $async.Future<$0.KeyServiceDeleteResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.KeyServiceJWKResponse> jWK_Pre($grpc.ServiceCall call,
      $async.Future<$0.KeyServiceJWKRequest> request) async {
    return jWK(call, await request);
  }

  $async.Future<$0.KeyServiceJWTSignResponse> jWTSign_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.KeyServiceJWTSignRequest> request) async {
    return jWTSign(call, await request);
  }

  $async.Future<$0.KeyServiceJWTVerifyResponse> jWTVerify_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.KeyServiceJWTVerifyRequest> request) async {
    return jWTVerify(call, await request);
  }

  $async.Future<$0.KeyServiceCreateResponse> create(
      $grpc.ServiceCall call, $0.KeyServiceCreateRequest request);
  $async.Future<$0.KeyServiceGetResponse> get(
      $grpc.ServiceCall call, $0.KeyServiceGetRequest request);
  $async.Future<$0.KeyServiceGetOrCreateResponse> getOrCreate(
      $grpc.ServiceCall call, $0.KeyServiceGetOrCreateRequest request);
  $async.Future<$0.KeyServiceListResponse> list(
      $grpc.ServiceCall call, $0.KeyServiceListRequest request);
  $async.Future<$0.KeyServiceSignResponse> sign(
      $grpc.ServiceCall call, $0.KeyServiceSignRequest request);
  $async.Future<$0.KeyServiceVerifyResponse> verify(
      $grpc.ServiceCall call, $0.KeyServiceVerifyRequest request);
  $async.Future<$0.KeyServiceCryptResponse> crypt(
      $grpc.ServiceCall call, $0.KeyServiceCryptRequest request);
  $async.Future<$0.KeyServiceDecryptResponse> decrypt(
      $grpc.ServiceCall call, $0.KeyServiceDecryptRequest request);
  $async.Future<$0.KeyServiceRotateResponse> rotate(
      $grpc.ServiceCall call, $0.KeyServiceRotateRequest request);
  $async.Future<$0.KeyServiceDeleteResponse> delete(
      $grpc.ServiceCall call, $0.KeyServiceDeleteRequest request);
  $async.Future<$0.KeyServiceJWKResponse> jWK(
      $grpc.ServiceCall call, $0.KeyServiceJWKRequest request);
  $async.Future<$0.KeyServiceJWTSignResponse> jWTSign(
      $grpc.ServiceCall call, $0.KeyServiceJWTSignRequest request);
  $async.Future<$0.KeyServiceJWTVerifyResponse> jWTVerify(
      $grpc.ServiceCall call, $0.KeyServiceJWTVerifyRequest request);
}
