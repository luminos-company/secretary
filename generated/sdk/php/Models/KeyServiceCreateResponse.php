<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/key.proto

namespace Models;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Generated from protobuf message <code>models.KeyServiceCreateResponse</code>
 */
class KeyServiceCreateResponse extends \Google\Protobuf\Internal\Message
{
    /**
     * Generated from protobuf field <code>.models.Key key = 1 [json_name = "key"];</code>
     */
    protected $key = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type \Models\Key $key
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Models\Key::initOnce();
        parent::__construct($data);
    }

    /**
     * Generated from protobuf field <code>.models.Key key = 1 [json_name = "key"];</code>
     * @return \Models\Key|null
     */
    public function getKey()
    {
        return $this->key;
    }

    public function hasKey()
    {
        return isset($this->key);
    }

    public function clearKey()
    {
        unset($this->key);
    }

    /**
     * Generated from protobuf field <code>.models.Key key = 1 [json_name = "key"];</code>
     * @param \Models\Key $var
     * @return $this
     */
    public function setKey($var)
    {
        GPBUtil::checkMessage($var, \Models\Key::class);
        $this->key = $var;

        return $this;
    }

}

