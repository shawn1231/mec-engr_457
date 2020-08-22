// Auto-generated. Do not edit!

// (in-package me457common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StepperServerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steps = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('steps')) {
        this.steps = initObj.steps
      }
      else {
        this.steps = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperServerRequest
    // Serialize message field [steps]
    bufferOffset = _serializer.int64(obj.steps, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int64(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperServerRequest
    let len;
    let data = new StepperServerRequest(null);
    // Deserialize message field [steps]
    data.steps = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'me457common/StepperServerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf198fa6e21ae42dd46f77dfd8067a64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 steps
    int64 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepperServerRequest(null);
    if (msg.steps !== undefined) {
      resolved.steps = msg.steps;
    }
    else {
      resolved.steps = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

class StepperServerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ready = null;
    }
    else {
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperServerResponse
    // Serialize message field [ready]
    bufferOffset = _serializer.int64(obj.ready, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperServerResponse
    let len;
    let data = new StepperServerResponse(null);
    // Deserialize message field [ready]
    data.ready = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'me457common/StepperServerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd74ca1ffb31881ab824e1d61313924a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ready
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepperServerResponse(null);
    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: StepperServerRequest,
  Response: StepperServerResponse,
  md5sum() { return 'e3b7f051b4258c90902e0e504971ecbd'; },
  datatype() { return 'me457common/StepperServer'; }
};
