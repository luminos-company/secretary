<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/key.proto

namespace GPBMetadata\Models;

class Key
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Types\Types::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        \GPBMetadata\Tagger\Tagger::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
models/key.protomodelsgoogle/api/annotations.protogoogle/protobuf/timestamp.prototagger/tagger.proto"�
Key1
id (	B!���json:"id" gorm:"primary_key"Rid8
private_key (	B���json:"private_key"R
privateKey5

public_key (	B���json:"public_key"R	publicKeyd
should_rotate (B?���:json:"should_rotate" gorm:"default:false; index; not null"RshouldRotateU
rotated_from_id (	B(���#json:"rotated_from_id" gorm:"index"H RrotatedFromId�U
rotate_cron (	B4���/json:"rotate_cron" gorm:"default:\'0 0 0 1 * *\'"R
rotateCronp

expires_at	 (2.google.protobuf.TimestampB5���0json:"expires_at" gorm:"index; type:timestamptz"R	expiresAt�

updated_at
 (2.google.protobuf.TimestampBE���@json:"updated_at" gorm:"index; type:timestamptz; autoCreateTime"R	updatedAt�

created_at (2.google.protobuf.TimestampBE���@json:"created_at" gorm:"index; type:timestamptz; autoUpdateTime"R	createdAtp

deleted_at (2.google.protobuf.TimestampB5���0json:"deleted_at" gorm:"index; type:timestamptz"R	deletedAtB
_rotated_from_id"�
KeyServiceCreateRequest
private_key (	R
privateKey

public_key (	R	publicKey#
should_rotate (RshouldRotate
rotate_cron (	R
rotateCron"9
KeyServiceCreateResponse
key (2.models.KeyRkey"&
KeyServiceGetRequest
id (	Rid"6
KeyServiceGetResponse
key (2.models.KeyRkey"J
KeyServiceListRequest1

pagination (2.types.PaginationR
pagination"l
KeyServiceListResponse
keys (2.models.KeyRkeys1

pagination (2.types.PaginationR
pagination"A
KeyServiceSignRequest
id (	Rid
message (	Rmessage"6
KeyServiceSignResponse
	signature (	R	signature"a
KeyServiceVerifyRequest
id (	Rid
message (	Rmessage
	signature (	R	signature"0
KeyServiceVerifyResponse
valid (Rvalid"C
KeyServiceCryptoRequest
id (	Rid
message (	Rmessage":
KeyServiceCryptoResponse

ciphertext (	R
ciphertext"J
KeyServiceDecryptRequest
id (	Rid

ciphertext (	R
ciphertext"5
KeyServiceDecryptResponse
message (	Rmessage")
KeyServiceRotateRequest
id (	Rid"9
KeyServiceRotateResponse
key (2.models.KeyRkey")
KeyServiceDeleteRequest
id (	Rid"9
KeyServiceDeleteResponse
key (2.models.KeyRkey"&
KeyServiceJWKRequest
id (	Rid")
KeyServiceJWKResponse
jwk (	Rjwk2�

KeyService`
Create.models.KeyServiceCreateRequest .models.KeyServiceCreateResponse"���:*"/v1/keysY
Get.models.KeyServiceGetRequest.models.KeyServiceGetResponse"���/v1/keys/{id}W
List.models.KeyServiceListRequest.models.KeyServiceListResponse"���
/v1/keysd
Sign.models.KeyServiceSignRequest.models.KeyServiceSignResponse"���:*"/v1/keys/{id}/signl
Verify.models.KeyServiceVerifyRequest .models.KeyServiceVerifyResponse"���:*"/v1/keys/{id}/verifyl
Crypto.models.KeyServiceCryptoRequest .models.KeyServiceCryptoResponse"���:*"/v1/keys/{id}/cryptop
Decrypt .models.KeyServiceDecryptRequest!.models.KeyServiceDecryptResponse" ���:*"/v1/keys/{id}/decrypti
Rotate.models.KeyServiceRotateRequest .models.KeyServiceRotateResponse"���"/v1/keys/{id}/rotateb
Delete.models.KeyServiceDeleteRequest .models.KeyServiceDeleteResponse"���*/v1/keys/{id}]
JWK.models.KeyServiceJWKRequest.models.KeyServiceJWKResponse"���/v1/keys/{id}/jwkB9HZ5github.com/luminos-company/secretary/generated/modelsbproto3'
        , true);

        static::$is_initialized = true;
    }
}

