# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/key.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import builder as _builder
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2
from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2
from google.protobuf import descriptor_pb2 as google_dot_protobuf_dot_descriptor__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x10models/key.proto\x12\x06models\x1a\x1cgoogle/api/annotations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a google/protobuf/descriptor.proto\"\xef\x03\n\x03Key\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12$\n\x0b\x65xternal_id\x18\x02 \x01(\tH\x00R\nexternalId\x88\x01\x01\x12\x1f\n\x0bprivate_key\x18\x03 \x01(\tR\nprivateKey\x12\x1d\n\npublic_key\x18\x04 \x01(\tR\tpublicKey\x12(\n\rshould_rotate\x18\x05 \x01(\x08H\x01R\x0cshouldRotate\x88\x01\x01\x12+\n\x0frotated_from_id\x18\x06 \x01(\tH\x02R\rrotatedFromId\x88\x01\x01\x12$\n\x0brotate_cron\x18\x07 \x01(\tH\x03R\nrotateCron\x88\x01\x01\x12\x39\n\nexpires_at\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\texpiresAt\x12\x39\n\nupdated_at\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampR\tupdatedAt\x12\x39\n\ncreated_at\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampR\tcreatedAtB\x0e\n\x0c_external_idB\x10\n\x0e_should_rotateB\x12\n\x10_rotated_from_idB\x0e\n\x0c_rotate_cron\"\x8b\x01\n\x17KeyServiceCreateRequest\x12(\n\rshould_rotate\x18\x01 \x01(\x08H\x00R\x0cshouldRotate\x88\x01\x01\x12$\n\x0brotate_cron\x18\x02 \x01(\tH\x01R\nrotateCron\x88\x01\x01\x42\x10\n\x0e_should_rotateB\x0e\n\x0c_rotate_cron\"9\n\x18KeyServiceCreateResponse\x12\x1d\n\x03key\x18\x01 \x01(\x0b\x32\x0b.models.KeyR\x03key\"&\n\x14KeyServiceGetRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"6\n\x15KeyServiceGetResponse\x12\x1d\n\x03key\x18\x01 \x01(\x0b\x32\x0b.models.KeyR\x03key\"D\n\x15KeyServiceListRequest\x12\x1e\n\x08\x66irst_id\x18\x01 \x01(\tH\x00R\x07\x66irstId\x88\x01\x01\x42\x0b\n\t_first_id\"c\n\x16KeyServiceListResponse\x12\x1f\n\x04keys\x18\x01 \x03(\x0b\x32\x0b.models.KeyR\x04keys\x12\x1c\n\x07last_id\x18\x02 \x01(\tH\x00R\x06lastId\x88\x01\x01\x42\n\n\x08_last_id\"A\n\x15KeyServiceSignRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x18\n\x07message\x18\x02 \x01(\tR\x07message\"6\n\x16KeyServiceSignResponse\x12\x1c\n\tsignature\x18\x01 \x01(\tR\tsignature\"a\n\x17KeyServiceVerifyRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x18\n\x07message\x18\x02 \x01(\tR\x07message\x12\x1c\n\tsignature\x18\x03 \x01(\tR\tsignature\"0\n\x18KeyServiceVerifyResponse\x12\x14\n\x05valid\x18\x01 \x01(\x08R\x05valid\"C\n\x17KeyServiceCryptoRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x18\n\x07message\x18\x02 \x01(\tR\x07message\":\n\x18KeyServiceCryptoResponse\x12\x1e\n\nciphertext\x18\x01 \x01(\tR\nciphertext\"J\n\x18KeyServiceDecryptRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x1e\n\nciphertext\x18\x02 \x01(\tR\nciphertext\"5\n\x19KeyServiceDecryptResponse\x12\x18\n\x07message\x18\x01 \x01(\tR\x07message\")\n\x17KeyServiceRotateRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"9\n\x18KeyServiceRotateResponse\x12\x1d\n\x03key\x18\x01 \x01(\x0b\x32\x0b.models.KeyR\x03key\")\n\x17KeyServiceDeleteRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\"9\n\x18KeyServiceDeleteResponse\x12\x1d\n\x03key\x18\x01 \x01(\x0b\x32\x0b.models.KeyR\x03key\"&\n\x14KeyServiceJWKRequest\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\")\n\x15KeyServiceJWKResponse\x12\x10\n\x03jwk\x18\x01 \x01(\tR\x03jwk2\x84\x08\n\nKeyService\x12`\n\x06\x43reate\x12\x1f.models.KeyServiceCreateRequest\x1a .models.KeyServiceCreateResponse\"\x13\x82\xd3\xe4\x93\x02\r:\x01*\"\x08/v1/keys\x12Y\n\x03Get\x12\x1c.models.KeyServiceGetRequest\x1a\x1d.models.KeyServiceGetResponse\"\x15\x82\xd3\xe4\x93\x02\x0f\x12\r/v1/keys/{id}\x12W\n\x04List\x12\x1d.models.KeyServiceListRequest\x1a\x1e.models.KeyServiceListResponse\"\x10\x82\xd3\xe4\x93\x02\n\x12\x08/v1/keys\x12\x64\n\x04Sign\x12\x1d.models.KeyServiceSignRequest\x1a\x1e.models.KeyServiceSignResponse\"\x1d\x82\xd3\xe4\x93\x02\x17:\x01*\"\x12/v1/keys/{id}/sign\x12l\n\x06Verify\x12\x1f.models.KeyServiceVerifyRequest\x1a .models.KeyServiceVerifyResponse\"\x1f\x82\xd3\xe4\x93\x02\x19:\x01*\"\x14/v1/keys/{id}/verify\x12l\n\x06\x43rypto\x12\x1f.models.KeyServiceCryptoRequest\x1a .models.KeyServiceCryptoResponse\"\x1f\x82\xd3\xe4\x93\x02\x19:\x01*\"\x14/v1/keys/{id}/crypto\x12p\n\x07\x44\x65\x63rypt\x12 .models.KeyServiceDecryptRequest\x1a!.models.KeyServiceDecryptResponse\" \x82\xd3\xe4\x93\x02\x1a:\x01*\"\x15/v1/keys/{id}/decrypt\x12i\n\x06Rotate\x12\x1f.models.KeyServiceRotateRequest\x1a .models.KeyServiceRotateResponse\"\x1c\x82\xd3\xe4\x93\x02\x16\"\x14/v1/keys/{id}/rotate\x12\x62\n\x06\x44\x65lete\x12\x1f.models.KeyServiceDeleteRequest\x1a .models.KeyServiceDeleteResponse\"\x15\x82\xd3\xe4\x93\x02\x0f*\r/v1/keys/{id}\x12]\n\x03JWK\x12\x1c.models.KeyServiceJWKRequest\x1a\x1d.models.KeyServiceJWKResponse\"\x19\x82\xd3\xe4\x93\x02\x13\x12\x11/v1/keys/{id}/jwkB9H\x02Z5github.com/luminos-company/secretary/generated/modelsb\x06proto3')

_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, globals())
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'models.key_pb2', globals())
if _descriptor._USE_C_DESCRIPTORS == False:

  DESCRIPTOR._options = None
  DESCRIPTOR._serialized_options = b'H\002Z5github.com/luminos-company/secretary/generated/models'
  _KEYSERVICE.methods_by_name['Create']._options = None
  _KEYSERVICE.methods_by_name['Create']._serialized_options = b'\202\323\344\223\002\r:\001*\"\010/v1/keys'
  _KEYSERVICE.methods_by_name['Get']._options = None
  _KEYSERVICE.methods_by_name['Get']._serialized_options = b'\202\323\344\223\002\017\022\r/v1/keys/{id}'
  _KEYSERVICE.methods_by_name['List']._options = None
  _KEYSERVICE.methods_by_name['List']._serialized_options = b'\202\323\344\223\002\n\022\010/v1/keys'
  _KEYSERVICE.methods_by_name['Sign']._options = None
  _KEYSERVICE.methods_by_name['Sign']._serialized_options = b'\202\323\344\223\002\027:\001*\"\022/v1/keys/{id}/sign'
  _KEYSERVICE.methods_by_name['Verify']._options = None
  _KEYSERVICE.methods_by_name['Verify']._serialized_options = b'\202\323\344\223\002\031:\001*\"\024/v1/keys/{id}/verify'
  _KEYSERVICE.methods_by_name['Crypto']._options = None
  _KEYSERVICE.methods_by_name['Crypto']._serialized_options = b'\202\323\344\223\002\031:\001*\"\024/v1/keys/{id}/crypto'
  _KEYSERVICE.methods_by_name['Decrypt']._options = None
  _KEYSERVICE.methods_by_name['Decrypt']._serialized_options = b'\202\323\344\223\002\032:\001*\"\025/v1/keys/{id}/decrypt'
  _KEYSERVICE.methods_by_name['Rotate']._options = None
  _KEYSERVICE.methods_by_name['Rotate']._serialized_options = b'\202\323\344\223\002\026\"\024/v1/keys/{id}/rotate'
  _KEYSERVICE.methods_by_name['Delete']._options = None
  _KEYSERVICE.methods_by_name['Delete']._serialized_options = b'\202\323\344\223\002\017*\r/v1/keys/{id}'
  _KEYSERVICE.methods_by_name['JWK']._options = None
  _KEYSERVICE.methods_by_name['JWK']._serialized_options = b'\202\323\344\223\002\023\022\021/v1/keys/{id}/jwk'
  _KEY._serialized_start=126
  _KEY._serialized_end=621
  _KEYSERVICECREATEREQUEST._serialized_start=624
  _KEYSERVICECREATEREQUEST._serialized_end=763
  _KEYSERVICECREATERESPONSE._serialized_start=765
  _KEYSERVICECREATERESPONSE._serialized_end=822
  _KEYSERVICEGETREQUEST._serialized_start=824
  _KEYSERVICEGETREQUEST._serialized_end=862
  _KEYSERVICEGETRESPONSE._serialized_start=864
  _KEYSERVICEGETRESPONSE._serialized_end=918
  _KEYSERVICELISTREQUEST._serialized_start=920
  _KEYSERVICELISTREQUEST._serialized_end=988
  _KEYSERVICELISTRESPONSE._serialized_start=990
  _KEYSERVICELISTRESPONSE._serialized_end=1089
  _KEYSERVICESIGNREQUEST._serialized_start=1091
  _KEYSERVICESIGNREQUEST._serialized_end=1156
  _KEYSERVICESIGNRESPONSE._serialized_start=1158
  _KEYSERVICESIGNRESPONSE._serialized_end=1212
  _KEYSERVICEVERIFYREQUEST._serialized_start=1214
  _KEYSERVICEVERIFYREQUEST._serialized_end=1311
  _KEYSERVICEVERIFYRESPONSE._serialized_start=1313
  _KEYSERVICEVERIFYRESPONSE._serialized_end=1361
  _KEYSERVICECRYPTOREQUEST._serialized_start=1363
  _KEYSERVICECRYPTOREQUEST._serialized_end=1430
  _KEYSERVICECRYPTORESPONSE._serialized_start=1432
  _KEYSERVICECRYPTORESPONSE._serialized_end=1490
  _KEYSERVICEDECRYPTREQUEST._serialized_start=1492
  _KEYSERVICEDECRYPTREQUEST._serialized_end=1566
  _KEYSERVICEDECRYPTRESPONSE._serialized_start=1568
  _KEYSERVICEDECRYPTRESPONSE._serialized_end=1621
  _KEYSERVICEROTATEREQUEST._serialized_start=1623
  _KEYSERVICEROTATEREQUEST._serialized_end=1664
  _KEYSERVICEROTATERESPONSE._serialized_start=1666
  _KEYSERVICEROTATERESPONSE._serialized_end=1723
  _KEYSERVICEDELETEREQUEST._serialized_start=1725
  _KEYSERVICEDELETEREQUEST._serialized_end=1766
  _KEYSERVICEDELETERESPONSE._serialized_start=1768
  _KEYSERVICEDELETERESPONSE._serialized_end=1825
  _KEYSERVICEJWKREQUEST._serialized_start=1827
  _KEYSERVICEJWKREQUEST._serialized_end=1865
  _KEYSERVICEJWKRESPONSE._serialized_start=1867
  _KEYSERVICEJWKRESPONSE._serialized_end=1908
  _KEYSERVICE._serialized_start=1911
  _KEYSERVICE._serialized_end=2939
# @@protoc_insertion_point(module_scope)