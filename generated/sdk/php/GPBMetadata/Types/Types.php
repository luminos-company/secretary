<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: types/types.proto

namespace GPBMetadata\Types;

class Types
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        \GPBMetadata\Tagger\Tagger::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
types/types.prototypes google/protobuf/descriptor.prototagger/tagger.proto"E
	Timestamp8
	timestamp (2.google.protobuf.TimestampR	timestamp"E
	DeletedAt8
	timestamp (2.google.protobuf.TimestampR	timestamp"
ID
id (	Rid"%
IDList
ids (2	.types.IDRidsB8HZ4github.com/luminos-company/secretary/generated/typesbproto3'
        , true);

        static::$is_initialized = true;
    }
}

