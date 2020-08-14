// Auto-generated. Do not edit!

// (in-package me457common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DCMotor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DCMotor
    // Check that the constant length array field [speed] has the right length
    if (obj.speed.length !== 2) {
      throw new Error('Unable to serialize array field speed - length must be 2')
    }
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.int16(obj.speed, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DCMotor
    let len;
    let data = new DCMotor(null);
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.int16(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'me457common/DCMotor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55e53b59e8500e0d573f34660001b31c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[2] speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DCMotor(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = DCMotor;
