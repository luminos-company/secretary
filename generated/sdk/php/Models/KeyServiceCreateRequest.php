<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/key.proto

namespace Models;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Generated from protobuf message <code>models.KeyServiceCreateRequest</code>
 */
class KeyServiceCreateRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Generated from protobuf field <code>optional string id = 1 [json_name = "id"];</code>
     */
    protected $id = null;
    /**
     * Generated from protobuf field <code>optional bool should_rotate = 2 [json_name = "shouldRotate"];</code>
     */
    protected $should_rotate = null;
    /**
     * Generated from protobuf field <code>optional string rotate_cron = 3 [json_name = "rotateCron"];</code>
     */
    protected $rotate_cron = null;
    /**
     * Generated from protobuf field <code>optional int32 bits = 4 [json_name = "bits"];</code>
     */
    protected $bits = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $id
     *     @type bool $should_rotate
     *     @type string $rotate_cron
     *     @type int $bits
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Models\Key::initOnce();
        parent::__construct($data);
    }

    /**
     * Generated from protobuf field <code>optional string id = 1 [json_name = "id"];</code>
     * @return string
     */
    public function getId()
    {
        return isset($this->id) ? $this->id : '';
    }

    public function hasId()
    {
        return isset($this->id);
    }

    public function clearId()
    {
        unset($this->id);
    }

    /**
     * Generated from protobuf field <code>optional string id = 1 [json_name = "id"];</code>
     * @param string $var
     * @return $this
     */
    public function setId($var)
    {
        GPBUtil::checkString($var, True);
        $this->id = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>optional bool should_rotate = 2 [json_name = "shouldRotate"];</code>
     * @return bool
     */
    public function getShouldRotate()
    {
        return isset($this->should_rotate) ? $this->should_rotate : false;
    }

    public function hasShouldRotate()
    {
        return isset($this->should_rotate);
    }

    public function clearShouldRotate()
    {
        unset($this->should_rotate);
    }

    /**
     * Generated from protobuf field <code>optional bool should_rotate = 2 [json_name = "shouldRotate"];</code>
     * @param bool $var
     * @return $this
     */
    public function setShouldRotate($var)
    {
        GPBUtil::checkBool($var);
        $this->should_rotate = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>optional string rotate_cron = 3 [json_name = "rotateCron"];</code>
     * @return string
     */
    public function getRotateCron()
    {
        return isset($this->rotate_cron) ? $this->rotate_cron : '';
    }

    public function hasRotateCron()
    {
        return isset($this->rotate_cron);
    }

    public function clearRotateCron()
    {
        unset($this->rotate_cron);
    }

    /**
     * Generated from protobuf field <code>optional string rotate_cron = 3 [json_name = "rotateCron"];</code>
     * @param string $var
     * @return $this
     */
    public function setRotateCron($var)
    {
        GPBUtil::checkString($var, True);
        $this->rotate_cron = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>optional int32 bits = 4 [json_name = "bits"];</code>
     * @return int
     */
    public function getBits()
    {
        return isset($this->bits) ? $this->bits : 0;
    }

    public function hasBits()
    {
        return isset($this->bits);
    }

    public function clearBits()
    {
        unset($this->bits);
    }

    /**
     * Generated from protobuf field <code>optional int32 bits = 4 [json_name = "bits"];</code>
     * @param int $var
     * @return $this
     */
    public function setBits($var)
    {
        GPBUtil::checkInt32($var);
        $this->bits = $var;

        return $this;
    }

}

