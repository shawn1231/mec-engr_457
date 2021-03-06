// Auto-generated. Do not edit!

// (in-package me457common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GPS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.mtow = null;
      this.longitude = null;
      this.latitude = null;
      this.elevation_ellipsoid = null;
      this.elevation_msl = null;
      this.horizontal_accuracy = null;
      this.vertical_accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('mtow')) {
        this.mtow = initObj.mtow
      }
      else {
        this.mtow = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('elevation_ellipsoid')) {
        this.elevation_ellipsoid = initObj.elevation_ellipsoid
      }
      else {
        this.elevation_ellipsoid = 0.0;
      }
      if (initObj.hasOwnProperty('elevation_msl')) {
        this.elevation_msl = initObj.elevation_msl
      }
      else {
        this.elevation_msl = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_accuracy')) {
        this.horizontal_accuracy = initObj.horizontal_accuracy
      }
      else {
        this.horizontal_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_accuracy')) {
        this.vertical_accuracy = initObj.vertical_accuracy
      }
      else {
        this.vertical_accuracy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [mtow]
    bufferOffset = _serializer.float32(obj.mtow, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float32(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float32(obj.latitude, buffer, bufferOffset);
    // Serialize message field [elevation_ellipsoid]
    bufferOffset = _serializer.float32(obj.elevation_ellipsoid, buffer, bufferOffset);
    // Serialize message field [elevation_msl]
    bufferOffset = _serializer.float32(obj.elevation_msl, buffer, bufferOffset);
    // Serialize message field [horizontal_accuracy]
    bufferOffset = _serializer.float32(obj.horizontal_accuracy, buffer, bufferOffset);
    // Serialize message field [vertical_accuracy]
    bufferOffset = _serializer.float32(obj.vertical_accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPS
    let len;
    let data = new GPS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mtow]
    data.mtow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation_ellipsoid]
    data.elevation_ellipsoid = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation_msl]
    data.elevation_msl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [horizontal_accuracy]
    data.horizontal_accuracy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vertical_accuracy]
    data.vertical_accuracy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'me457common/GPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7a0226ca25d2ec6df67636d80c479d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 status
    float32 mtow
    float32 longitude
    float32 latitude
    float32 elevation_ellipsoid
    float32 elevation_msl
    float32 horizontal_accuracy
    float32 vertical_accuracy
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.mtow !== undefined) {
      resolved.mtow = msg.mtow;
    }
    else {
      resolved.mtow = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.elevation_ellipsoid !== undefined) {
      resolved.elevation_ellipsoid = msg.elevation_ellipsoid;
    }
    else {
      resolved.elevation_ellipsoid = 0.0
    }

    if (msg.elevation_msl !== undefined) {
      resolved.elevation_msl = msg.elevation_msl;
    }
    else {
      resolved.elevation_msl = 0.0
    }

    if (msg.horizontal_accuracy !== undefined) {
      resolved.horizontal_accuracy = msg.horizontal_accuracy;
    }
    else {
      resolved.horizontal_accuracy = 0.0
    }

    if (msg.vertical_accuracy !== undefined) {
      resolved.vertical_accuracy = msg.vertical_accuracy;
    }
    else {
      resolved.vertical_accuracy = 0.0
    }

    return resolved;
    }
};

module.exports = GPS;
