// Auto-generated. Do not edit!

// (in-package me457common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Accelerometer = require('./Accelerometer.js');
let Gyroscope = require('./Gyroscope.js');
let Magnetometer = require('./Magnetometer.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class IMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.accelerometer = null;
      this.gyroscope = null;
      this.magnetometer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('accelerometer')) {
        this.accelerometer = initObj.accelerometer
      }
      else {
        this.accelerometer = new Accelerometer();
      }
      if (initObj.hasOwnProperty('gyroscope')) {
        this.gyroscope = initObj.gyroscope
      }
      else {
        this.gyroscope = new Gyroscope();
      }
      if (initObj.hasOwnProperty('magnetometer')) {
        this.magnetometer = initObj.magnetometer
      }
      else {
        this.magnetometer = new Magnetometer();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IMU
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [accelerometer]
    bufferOffset = Accelerometer.serialize(obj.accelerometer, buffer, bufferOffset);
    // Serialize message field [gyroscope]
    bufferOffset = Gyroscope.serialize(obj.gyroscope, buffer, bufferOffset);
    // Serialize message field [magnetometer]
    bufferOffset = Magnetometer.serialize(obj.magnetometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IMU
    let len;
    let data = new IMU(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelerometer]
    data.accelerometer = Accelerometer.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroscope]
    data.gyroscope = Gyroscope.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnetometer]
    data.magnetometer = Magnetometer.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Accelerometer.getMessageSize(object.accelerometer);
    length += Gyroscope.getMessageSize(object.gyroscope);
    length += Magnetometer.getMessageSize(object.magnetometer);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'me457common/IMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0494ce31f87f2216a9da6d0830d062cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Accelerometer accelerometer
    Gyroscope gyroscope
    Magnetometer magnetometer
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: me457common/Accelerometer
    Header header
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: me457common/Gyroscope
    Header header
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: me457common/Magnetometer
    Header header
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IMU(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.accelerometer !== undefined) {
      resolved.accelerometer = Accelerometer.Resolve(msg.accelerometer)
    }
    else {
      resolved.accelerometer = new Accelerometer()
    }

    if (msg.gyroscope !== undefined) {
      resolved.gyroscope = Gyroscope.Resolve(msg.gyroscope)
    }
    else {
      resolved.gyroscope = new Gyroscope()
    }

    if (msg.magnetometer !== undefined) {
      resolved.magnetometer = Magnetometer.Resolve(msg.magnetometer)
    }
    else {
      resolved.magnetometer = new Magnetometer()
    }

    return resolved;
    }
};

module.exports = IMU;
