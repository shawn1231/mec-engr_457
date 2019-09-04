// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Angular = require('./Angular.js');

//-----------------------------------------------------------

class AHRS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angular = null;
    }
    else {
      if (initObj.hasOwnProperty('angular')) {
        this.angular = initObj.angular
      }
      else {
        this.angular = new Angular();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AHRS
    // Serialize message field [angular]
    bufferOffset = Angular.serialize(obj.angular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AHRS
    let len;
    let data = new AHRS(null);
    // Deserialize message field [angular]
    data.angular = Angular.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/AHRS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8f2e835f7df7c60991a6cba8353dd78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Angular angular
    
    ================================================================================
    MSG: beginner_tutorials/Angular
    float32 roll
    float32 pitch
    float32 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AHRS(null);
    if (msg.angular !== undefined) {
      resolved.angular = Angular.Resolve(msg.angular)
    }
    else {
      resolved.angular = new Angular()
    }

    return resolved;
    }
};

module.exports = AHRS;
