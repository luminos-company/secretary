# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/key.proto

require 'google/protobuf'

require 'types/types_pb'
require 'google/api/annotations_pb'
require 'tagger/tagger_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("models/key.proto", :syntax => :proto3) do
    add_message "models.Key" do
      optional :id, :message, 1, "types.ID", json_name: "id"
      optional :private_key, :string, 2, json_name: "privateKey"
      optional :public_key, :string, 3, json_name: "publicKey"
      optional :should_rotate, :bool, 4, json_name: "shouldRotate"
      proto3_optional :rotated_from_id, :string, 5, json_name: "rotatedFromId"
      proto3_optional :rotate_cron, :string, 6, json_name: "rotateCron"
      optional :expires_at, :message, 9, "types.Timestamp", json_name: "expiresAt"
      optional :updated_at, :message, 10, "types.Timestamp", json_name: "updatedAt"
      optional :created_at, :message, 11, "types.Timestamp", json_name: "createdAt"
      optional :deleted_at, :message, 12, "types.DeletedAt", json_name: "deletedAt"
    end
    add_message "models.KeyServiceCreateRequest" do
      optional :should_rotate, :bool, 1, json_name: "shouldRotate"
      proto3_optional :rotate_cron, :string, 2, json_name: "rotateCron"
    end
    add_message "models.KeyServiceCreateResponse" do
      optional :key, :message, 1, "models.Key", json_name: "key"
    end
    add_message "models.KeyServiceGetRequest" do
      optional :id, :string, 1, json_name: "id"
    end
    add_message "models.KeyServiceGetResponse" do
      optional :key, :message, 1, "models.Key", json_name: "key"
    end
    add_message "models.KeyServiceListRequest" do
      optional :pagination, :message, 1, "types.Pagination", json_name: "pagination"
    end
    add_message "models.KeyServiceListResponse" do
      repeated :keys, :message, 1, "models.Key", json_name: "keys"
      optional :pagination, :message, 2, "types.Pagination", json_name: "pagination"
    end
    add_message "models.KeyServiceSignRequest" do
      optional :id, :string, 1, json_name: "id"
      optional :message, :string, 2, json_name: "message"
    end
    add_message "models.KeyServiceSignResponse" do
      optional :signature, :string, 1, json_name: "signature"
    end
    add_message "models.KeyServiceVerifyRequest" do
      optional :id, :string, 1, json_name: "id"
      optional :message, :string, 2, json_name: "message"
      optional :signature, :string, 3, json_name: "signature"
    end
    add_message "models.KeyServiceVerifyResponse" do
      optional :valid, :bool, 1, json_name: "valid"
    end
    add_message "models.KeyServiceCryptoRequest" do
      optional :id, :string, 1, json_name: "id"
      optional :message, :string, 2, json_name: "message"
    end
    add_message "models.KeyServiceCryptoResponse" do
      optional :ciphertext, :string, 1, json_name: "ciphertext"
    end
    add_message "models.KeyServiceDecryptRequest" do
      optional :id, :string, 1, json_name: "id"
      optional :ciphertext, :string, 2, json_name: "ciphertext"
    end
    add_message "models.KeyServiceDecryptResponse" do
      optional :message, :string, 1, json_name: "message"
    end
    add_message "models.KeyServiceRotateRequest" do
      optional :id, :string, 1, json_name: "id"
    end
    add_message "models.KeyServiceRotateResponse" do
      optional :key, :message, 1, "models.Key", json_name: "key"
    end
    add_message "models.KeyServiceDeleteRequest" do
      optional :id, :string, 1, json_name: "id"
    end
    add_message "models.KeyServiceDeleteResponse" do
      optional :key, :message, 1, "models.Key", json_name: "key"
    end
    add_message "models.KeyServiceJWKRequest" do
      optional :id, :string, 1, json_name: "id"
    end
    add_message "models.KeyServiceJWKResponse" do
      optional :jwk, :string, 1, json_name: "jwk"
    end
  end
end

module Models
  Key = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.Key").msgclass
  KeyServiceCreateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceCreateRequest").msgclass
  KeyServiceCreateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceCreateResponse").msgclass
  KeyServiceGetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceGetRequest").msgclass
  KeyServiceGetResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceGetResponse").msgclass
  KeyServiceListRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceListRequest").msgclass
  KeyServiceListResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceListResponse").msgclass
  KeyServiceSignRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceSignRequest").msgclass
  KeyServiceSignResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceSignResponse").msgclass
  KeyServiceVerifyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceVerifyRequest").msgclass
  KeyServiceVerifyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceVerifyResponse").msgclass
  KeyServiceCryptoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceCryptoRequest").msgclass
  KeyServiceCryptoResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceCryptoResponse").msgclass
  KeyServiceDecryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceDecryptRequest").msgclass
  KeyServiceDecryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceDecryptResponse").msgclass
  KeyServiceRotateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceRotateRequest").msgclass
  KeyServiceRotateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceRotateResponse").msgclass
  KeyServiceDeleteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceDeleteRequest").msgclass
  KeyServiceDeleteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceDeleteResponse").msgclass
  KeyServiceJWKRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceJWKRequest").msgclass
  KeyServiceJWKResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("models.KeyServiceJWKResponse").msgclass
end
