// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: models/key.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class Key;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - KeyRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface KeyRoot : GPBRootObject
@end

#pragma mark - Key

typedef GPB_ENUM(Key_FieldNumber) {
  Key_FieldNumber_Id_p = 1,
  Key_FieldNumber_ExternalId = 2,
  Key_FieldNumber_PrivateKey = 3,
  Key_FieldNumber_PublicKey = 4,
  Key_FieldNumber_ShouldRotate = 5,
  Key_FieldNumber_RotatedFromId = 6,
  Key_FieldNumber_RotateCron = 7,
  Key_FieldNumber_ExpiresAt = 8,
  Key_FieldNumber_UpdatedAt = 9,
  Key_FieldNumber_CreatedAt = 10,
};

GPB_FINAL @interface Key : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *externalId;
/** Test to see if @c externalId has been set. */
@property(nonatomic, readwrite) BOOL hasExternalId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *privateKey;

@property(nonatomic, readwrite, copy, null_resettable) NSString *publicKey;

@property(nonatomic, readwrite) BOOL shouldRotate;

@property(nonatomic, readwrite) BOOL hasShouldRotate;
@property(nonatomic, readwrite, copy, null_resettable) NSString *rotatedFromId;
/** Test to see if @c rotatedFromId has been set. */
@property(nonatomic, readwrite) BOOL hasRotatedFromId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *rotateCron;
/** Test to see if @c rotateCron has been set. */
@property(nonatomic, readwrite) BOOL hasRotateCron;

@property(nonatomic, readwrite, strong, null_resettable) GPBTimestamp *expiresAt;
/** Test to see if @c expiresAt has been set. */
@property(nonatomic, readwrite) BOOL hasExpiresAt;

@property(nonatomic, readwrite, strong, null_resettable) GPBTimestamp *updatedAt;
/** Test to see if @c updatedAt has been set. */
@property(nonatomic, readwrite) BOOL hasUpdatedAt;

@property(nonatomic, readwrite, strong, null_resettable) GPBTimestamp *createdAt;
/** Test to see if @c createdAt has been set. */
@property(nonatomic, readwrite) BOOL hasCreatedAt;

@end

#pragma mark - KeyServiceCreateRequest

typedef GPB_ENUM(KeyServiceCreateRequest_FieldNumber) {
  KeyServiceCreateRequest_FieldNumber_Id_p = 1,
  KeyServiceCreateRequest_FieldNumber_ShouldRotate = 2,
  KeyServiceCreateRequest_FieldNumber_RotateCron = 3,
  KeyServiceCreateRequest_FieldNumber_Bits = 4,
};

GPB_FINAL @interface KeyServiceCreateRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;
/** Test to see if @c id_p has been set. */
@property(nonatomic, readwrite) BOOL hasId_p;

@property(nonatomic, readwrite) BOOL shouldRotate;

@property(nonatomic, readwrite) BOOL hasShouldRotate;
@property(nonatomic, readwrite, copy, null_resettable) NSString *rotateCron;
/** Test to see if @c rotateCron has been set. */
@property(nonatomic, readwrite) BOOL hasRotateCron;

@property(nonatomic, readwrite) int32_t bits;

@property(nonatomic, readwrite) BOOL hasBits;
@end

#pragma mark - KeyServiceCreateResponse

typedef GPB_ENUM(KeyServiceCreateResponse_FieldNumber) {
  KeyServiceCreateResponse_FieldNumber_Key = 1,
};

GPB_FINAL @interface KeyServiceCreateResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Key *key;
/** Test to see if @c key has been set. */
@property(nonatomic, readwrite) BOOL hasKey;

@end

#pragma mark - KeyServiceGetRequest

typedef GPB_ENUM(KeyServiceGetRequest_FieldNumber) {
  KeyServiceGetRequest_FieldNumber_Id_p = 1,
};

GPB_FINAL @interface KeyServiceGetRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

#pragma mark - KeyServiceGetResponse

typedef GPB_ENUM(KeyServiceGetResponse_FieldNumber) {
  KeyServiceGetResponse_FieldNumber_Key = 1,
};

GPB_FINAL @interface KeyServiceGetResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Key *key;
/** Test to see if @c key has been set. */
@property(nonatomic, readwrite) BOOL hasKey;

@end

#pragma mark - KeyServiceGetOrCreateRequest

typedef GPB_ENUM(KeyServiceGetOrCreateRequest_FieldNumber) {
  KeyServiceGetOrCreateRequest_FieldNumber_Id_p = 1,
  KeyServiceGetOrCreateRequest_FieldNumber_ShouldRotate = 2,
  KeyServiceGetOrCreateRequest_FieldNumber_RotateCron = 3,
  KeyServiceGetOrCreateRequest_FieldNumber_Bits = 4,
};

GPB_FINAL @interface KeyServiceGetOrCreateRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite) BOOL shouldRotate;

@property(nonatomic, readwrite) BOOL hasShouldRotate;
@property(nonatomic, readwrite, copy, null_resettable) NSString *rotateCron;
/** Test to see if @c rotateCron has been set. */
@property(nonatomic, readwrite) BOOL hasRotateCron;

@property(nonatomic, readwrite) int32_t bits;

@property(nonatomic, readwrite) BOOL hasBits;
@end

#pragma mark - KeyServiceGetOrCreateResponse

typedef GPB_ENUM(KeyServiceGetOrCreateResponse_FieldNumber) {
  KeyServiceGetOrCreateResponse_FieldNumber_Key = 1,
};

GPB_FINAL @interface KeyServiceGetOrCreateResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Key *key;
/** Test to see if @c key has been set. */
@property(nonatomic, readwrite) BOOL hasKey;

@end

#pragma mark - KeyServiceListRequest

typedef GPB_ENUM(KeyServiceListRequest_FieldNumber) {
  KeyServiceListRequest_FieldNumber_FirstId = 1,
};

GPB_FINAL @interface KeyServiceListRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *firstId;
/** Test to see if @c firstId has been set. */
@property(nonatomic, readwrite) BOOL hasFirstId;

@end

#pragma mark - KeyServiceListResponse

typedef GPB_ENUM(KeyServiceListResponse_FieldNumber) {
  KeyServiceListResponse_FieldNumber_KeysArray = 1,
  KeyServiceListResponse_FieldNumber_LastId = 2,
};

GPB_FINAL @interface KeyServiceListResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Key*> *keysArray;
/** The number of items in @c keysArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger keysArray_Count;

@property(nonatomic, readwrite, copy, null_resettable) NSString *lastId;
/** Test to see if @c lastId has been set. */
@property(nonatomic, readwrite) BOOL hasLastId;

@end

#pragma mark - KeyServiceSignRequest

typedef GPB_ENUM(KeyServiceSignRequest_FieldNumber) {
  KeyServiceSignRequest_FieldNumber_Id_p = 1,
  KeyServiceSignRequest_FieldNumber_Message = 2,
};

GPB_FINAL @interface KeyServiceSignRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@end

#pragma mark - KeyServiceSignResponse

typedef GPB_ENUM(KeyServiceSignResponse_FieldNumber) {
  KeyServiceSignResponse_FieldNumber_Signature = 1,
  KeyServiceSignResponse_FieldNumber_Kid = 2,
};

GPB_FINAL @interface KeyServiceSignResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *signature;

@property(nonatomic, readwrite, copy, null_resettable) NSString *kid;

@end

#pragma mark - KeyServiceVerifyRequest

typedef GPB_ENUM(KeyServiceVerifyRequest_FieldNumber) {
  KeyServiceVerifyRequest_FieldNumber_Id_p = 1,
  KeyServiceVerifyRequest_FieldNumber_Message = 2,
  KeyServiceVerifyRequest_FieldNumber_Signature = 3,
};

GPB_FINAL @interface KeyServiceVerifyRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@property(nonatomic, readwrite, copy, null_resettable) NSString *signature;

@end

#pragma mark - KeyServiceVerifyResponse

typedef GPB_ENUM(KeyServiceVerifyResponse_FieldNumber) {
  KeyServiceVerifyResponse_FieldNumber_Valid = 1,
};

GPB_FINAL @interface KeyServiceVerifyResponse : GPBMessage

@property(nonatomic, readwrite) BOOL valid;

@end

#pragma mark - KeyServiceCryptRequest

typedef GPB_ENUM(KeyServiceCryptRequest_FieldNumber) {
  KeyServiceCryptRequest_FieldNumber_Id_p = 1,
  KeyServiceCryptRequest_FieldNumber_Message = 2,
};

GPB_FINAL @interface KeyServiceCryptRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@end

#pragma mark - KeyServiceCryptResponse

typedef GPB_ENUM(KeyServiceCryptResponse_FieldNumber) {
  KeyServiceCryptResponse_FieldNumber_Ciphertext = 1,
};

GPB_FINAL @interface KeyServiceCryptResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *ciphertext;

@end

#pragma mark - KeyServiceDecryptRequest

typedef GPB_ENUM(KeyServiceDecryptRequest_FieldNumber) {
  KeyServiceDecryptRequest_FieldNumber_Id_p = 1,
  KeyServiceDecryptRequest_FieldNumber_Ciphertext = 2,
};

GPB_FINAL @interface KeyServiceDecryptRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *ciphertext;

@end

#pragma mark - KeyServiceDecryptResponse

typedef GPB_ENUM(KeyServiceDecryptResponse_FieldNumber) {
  KeyServiceDecryptResponse_FieldNumber_Message = 1,
};

GPB_FINAL @interface KeyServiceDecryptResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@end

#pragma mark - KeyServiceRotateRequest

typedef GPB_ENUM(KeyServiceRotateRequest_FieldNumber) {
  KeyServiceRotateRequest_FieldNumber_Id_p = 1,
};

GPB_FINAL @interface KeyServiceRotateRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

#pragma mark - KeyServiceRotateResponse

typedef GPB_ENUM(KeyServiceRotateResponse_FieldNumber) {
  KeyServiceRotateResponse_FieldNumber_Key = 1,
};

GPB_FINAL @interface KeyServiceRotateResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) Key *key;
/** Test to see if @c key has been set. */
@property(nonatomic, readwrite) BOOL hasKey;

@end

#pragma mark - KeyServiceDeleteRequest

typedef GPB_ENUM(KeyServiceDeleteRequest_FieldNumber) {
  KeyServiceDeleteRequest_FieldNumber_Id_p = 1,
};

GPB_FINAL @interface KeyServiceDeleteRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

#pragma mark - KeyServiceDeleteResponse

GPB_FINAL @interface KeyServiceDeleteResponse : GPBMessage

@end

#pragma mark - KeyServiceJWKRequest

typedef GPB_ENUM(KeyServiceJWKRequest_FieldNumber) {
  KeyServiceJWKRequest_FieldNumber_Id_p = 1,
};

GPB_FINAL @interface KeyServiceJWKRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

@end

#pragma mark - KeyServiceJWKResponse

typedef GPB_ENUM(KeyServiceJWKResponse_FieldNumber) {
  KeyServiceJWKResponse_FieldNumber_Jwk = 1,
};

GPB_FINAL @interface KeyServiceJWKResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *jwk;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
