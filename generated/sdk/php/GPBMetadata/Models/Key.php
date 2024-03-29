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
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        $pool->internalAddGeneratedFile(
            '
�!
models/key.protomodelsgoogle/protobuf/timestamp.proto google/protobuf/descriptor.proto"�
Key
id (	Rid$
external_id (	H R
externalId�
private_key (	R
privateKey

public_key (	R	publicKey
kid (	Rkid(
should_rotate (HRshouldRotate�+
rotated_from_id (	HRrotatedFromId�$
rotate_cron (	HR
rotateCron�9

expires_at	 (2.google.protobuf.TimestampR	expiresAt9

updated_at
 (2.google.protobuf.TimestampR	updatedAt9

created_at (2.google.protobuf.TimestampR	createdAtB
_external_idB
_should_rotateB
_rotated_from_idB
_rotate_cron"�
KeyServiceCreateRequest
id (	H Rid�-
show_private_key (HRshowPrivateKey�(
should_rotate (HRshouldRotate�$
rotate_cron (	HR
rotateCron�
bits (HRbits�B
_idB
_show_private_keyB
_should_rotateB
_rotate_cronB
_bits"9
KeyServiceCreateResponse
key (2.models.KeyRkey"j
KeyServiceGetRequest
id (	Rid-
show_private_key (H RshowPrivateKey�B
_show_private_key"6
KeyServiceGetResponse
key (2.models.KeyRkey"�
KeyServiceGetOrCreateRequest
id (	Rid-
show_private_key (H RshowPrivateKey�(
should_rotate (HRshouldRotate�$
rotate_cron (	HR
rotateCron�
bits (HRbits�B
_show_private_keyB
_should_rotateB
_rotate_cronB
_bits">
KeyServiceGetOrCreateResponse
key (2.models.KeyRkey"�
KeyServiceListRequest
first_id (	H RfirstId�-
show_private_key (HRshowPrivateKey�B
	_first_idB
_show_private_key"c
KeyServiceListResponse
keys (2.models.KeyRkeys
last_id (	H RlastId�B

_last_id"A
KeyServiceSignRequest
id (	Rid
message (	Rmessage"H
KeyServiceSignResponse
	signature (	R	signature
kid (	Rkid"a
KeyServiceVerifyRequest
id (	Rid
message (	Rmessage
	signature (	R	signature"0
KeyServiceVerifyResponse
valid (Rvalid"B
KeyServiceCryptRequest
id (	Rid
message (	Rmessage"9
KeyServiceCryptResponse

ciphertext (	R
ciphertext"J
KeyServiceDecryptRequest
id (	Rid

ciphertext (	R
ciphertext"5
KeyServiceDecryptResponse
message (	Rmessage"m
KeyServiceRotateRequest
id (	Rid-
show_private_key (H RshowPrivateKey�B
_show_private_key"9
KeyServiceRotateResponse
key (2.models.KeyRkey")
KeyServiceDeleteRequest
id (	Rid"
KeyServiceDeleteResponse"&
KeyServiceJWKRequest
id (	Rid")
KeyServiceJWKResponse
jwk (	Rjwk"D
KeyServiceJWTSignRequest
id (	Rid
message (	Rmessage"1
KeyServiceJWTSignResponse
token (	Rtoken"B
KeyServiceJWTVerifyRequest
id (	Rid
token (	Rtoken"3
KeyServiceJWTVerifyResponse
valid (Rvalid2�


KeyService`
Create.models.KeyServiceCreateRequest .models.KeyServiceCreateResponse"���:*"/v1/keysY
Get.models.KeyServiceGetRequest.models.KeyServiceGetResponse"���/v1/keys/{id}}
GetOrCreate$.models.KeyServiceGetOrCreateRequest%.models.KeyServiceGetOrCreateResponse"!���:*"/v1/keys/get-or-createW
List.models.KeyServiceListRequest.models.KeyServiceListResponse"���
/v1/keysd
Sign.models.KeyServiceSignRequest.models.KeyServiceSignResponse"���:*"/v1/keys/{id}/signl
Verify.models.KeyServiceVerifyRequest .models.KeyServiceVerifyResponse"���:*"/v1/keys/{id}/verifyh
Crypt.models.KeyServiceCryptRequest.models.KeyServiceCryptResponse"���:*"/v1/keys/{id}/cryptp
Decrypt .models.KeyServiceDecryptRequest!.models.KeyServiceDecryptResponse" ���:*"/v1/keys/{id}/decrypti
Rotate.models.KeyServiceRotateRequest .models.KeyServiceRotateResponse"���"/v1/keys/{id}/rotateb
Delete.models.KeyServiceDeleteRequest .models.KeyServiceDeleteResponse"���*/v1/keys/{id}]
JWK.models.KeyServiceJWKRequest.models.KeyServiceJWKResponse"���/v1/keys/{id}/jwkq
JWTSign .models.KeyServiceJWTSignRequest!.models.KeyServiceJWTSignResponse"!���:*"/v1/keys/{id}/jwt-signy
	JWTVerify".models.KeyServiceJWTVerifyRequest#.models.KeyServiceJWTVerifyResponse"#���:*"/v1/keys/{id}/jwt-verifyB9HZ5github.com/luminos-company/secretary/generated/modelsbproto3'
        , true);

        static::$is_initialized = true;
    }
}

