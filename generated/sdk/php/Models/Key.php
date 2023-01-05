<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models/key.proto

namespace Models;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Generated from protobuf message <code>models.Key</code>
 */
class Key extends \Google\Protobuf\Internal\Message
{
    /**
     * Generated from protobuf field <code>string id = 1 [json_name = "id"];</code>
     */
    protected $id = '';
    /**
     * Generated from protobuf field <code>optional string external_id = 2 [json_name = "externalId"];</code>
     */
    protected $external_id = null;
    /**
     * Generated from protobuf field <code>string private_key = 3 [json_name = "privateKey"];</code>
     */
    protected $private_key = '';
    /**
     * Generated from protobuf field <code>string public_key = 4 [json_name = "publicKey"];</code>
     */
    protected $public_key = '';
    /**
     * Generated from protobuf field <code>string kid = 5 [json_name = "kid"];</code>
     */
    protected $kid = '';
    /**
     * Generated from protobuf field <code>optional bool should_rotate = 6 [json_name = "shouldRotate"];</code>
     */
    protected $should_rotate = null;
    /**
     * Generated from protobuf field <code>optional string rotated_from_id = 7 [json_name = "rotatedFromId"];</code>
     */
    protected $rotated_from_id = null;
    /**
     * Generated from protobuf field <code>optional string rotate_cron = 8 [json_name = "rotateCron"];</code>
     */
    protected $rotate_cron = null;
    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp expires_at = 9 [json_name = "expiresAt"];</code>
     */
    protected $expires_at = null;
    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp updated_at = 10 [json_name = "updatedAt"];</code>
     */
    protected $updated_at = null;
    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp created_at = 11 [json_name = "createdAt"];</code>
     */
    protected $created_at = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $id
     *     @type string $external_id
     *     @type string $private_key
     *     @type string $public_key
     *     @type string $kid
     *     @type bool $should_rotate
     *     @type string $rotated_from_id
     *     @type string $rotate_cron
     *     @type \Google\Protobuf\Timestamp $expires_at
     *     @type \Google\Protobuf\Timestamp $updated_at
     *     @type \Google\Protobuf\Timestamp $created_at
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Models\Key::initOnce();
        parent::__construct($data);
    }

    /**
     * Generated from protobuf field <code>string id = 1 [json_name = "id"];</code>
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Generated from protobuf field <code>string id = 1 [json_name = "id"];</code>
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
     * Generated from protobuf field <code>optional string external_id = 2 [json_name = "externalId"];</code>
     * @return string
     */
    public function getExternalId()
    {
        return isset($this->external_id) ? $this->external_id : '';
    }

    public function hasExternalId()
    {
        return isset($this->external_id);
    }

    public function clearExternalId()
    {
        unset($this->external_id);
    }

    /**
     * Generated from protobuf field <code>optional string external_id = 2 [json_name = "externalId"];</code>
     * @param string $var
     * @return $this
     */
    public function setExternalId($var)
    {
        GPBUtil::checkString($var, True);
        $this->external_id = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string private_key = 3 [json_name = "privateKey"];</code>
     * @return string
     */
    public function getPrivateKey()
    {
        return $this->private_key;
    }

    /**
     * Generated from protobuf field <code>string private_key = 3 [json_name = "privateKey"];</code>
     * @param string $var
     * @return $this
     */
    public function setPrivateKey($var)
    {
        GPBUtil::checkString($var, True);
        $this->private_key = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string public_key = 4 [json_name = "publicKey"];</code>
     * @return string
     */
    public function getPublicKey()
    {
        return $this->public_key;
    }

    /**
     * Generated from protobuf field <code>string public_key = 4 [json_name = "publicKey"];</code>
     * @param string $var
     * @return $this
     */
    public function setPublicKey($var)
    {
        GPBUtil::checkString($var, True);
        $this->public_key = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string kid = 5 [json_name = "kid"];</code>
     * @return string
     */
    public function getKid()
    {
        return $this->kid;
    }

    /**
     * Generated from protobuf field <code>string kid = 5 [json_name = "kid"];</code>
     * @param string $var
     * @return $this
     */
    public function setKid($var)
    {
        GPBUtil::checkString($var, True);
        $this->kid = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>optional bool should_rotate = 6 [json_name = "shouldRotate"];</code>
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
     * Generated from protobuf field <code>optional bool should_rotate = 6 [json_name = "shouldRotate"];</code>
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
     * Generated from protobuf field <code>optional string rotated_from_id = 7 [json_name = "rotatedFromId"];</code>
     * @return string
     */
    public function getRotatedFromId()
    {
        return isset($this->rotated_from_id) ? $this->rotated_from_id : '';
    }

    public function hasRotatedFromId()
    {
        return isset($this->rotated_from_id);
    }

    public function clearRotatedFromId()
    {
        unset($this->rotated_from_id);
    }

    /**
     * Generated from protobuf field <code>optional string rotated_from_id = 7 [json_name = "rotatedFromId"];</code>
     * @param string $var
     * @return $this
     */
    public function setRotatedFromId($var)
    {
        GPBUtil::checkString($var, True);
        $this->rotated_from_id = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>optional string rotate_cron = 8 [json_name = "rotateCron"];</code>
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
     * Generated from protobuf field <code>optional string rotate_cron = 8 [json_name = "rotateCron"];</code>
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
     * Generated from protobuf field <code>.google.protobuf.Timestamp expires_at = 9 [json_name = "expiresAt"];</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getExpiresAt()
    {
        return $this->expires_at;
    }

    public function hasExpiresAt()
    {
        return isset($this->expires_at);
    }

    public function clearExpiresAt()
    {
        unset($this->expires_at);
    }

    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp expires_at = 9 [json_name = "expiresAt"];</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setExpiresAt($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->expires_at = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp updated_at = 10 [json_name = "updatedAt"];</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    public function hasUpdatedAt()
    {
        return isset($this->updated_at);
    }

    public function clearUpdatedAt()
    {
        unset($this->updated_at);
    }

    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp updated_at = 10 [json_name = "updatedAt"];</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setUpdatedAt($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->updated_at = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp created_at = 11 [json_name = "createdAt"];</code>
     * @return \Google\Protobuf\Timestamp|null
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    public function hasCreatedAt()
    {
        return isset($this->created_at);
    }

    public function clearCreatedAt()
    {
        unset($this->created_at);
    }

    /**
     * Generated from protobuf field <code>.google.protobuf.Timestamp created_at = 11 [json_name = "createdAt"];</code>
     * @param \Google\Protobuf\Timestamp $var
     * @return $this
     */
    public function setCreatedAt($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\Timestamp::class);
        $this->created_at = $var;

        return $this;
    }

}

