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

class Encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder
    // Check that the constant length array field [count] has the right length
    if (obj.count.length !== 2) {
      throw new Error('Unable to serialize array field count - length must be 2')
    }
    // Serialize message field [count]
    bufferOffset = _arraySerializer.int32(obj.count, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder
    let len;
    let data = new Encoder(null);
    // Deserialize message field [count]
    data.count = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'me457common/Encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba144d1786533a74b485986151fda73c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[2] count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoder(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = Encoder;
