// Auto-generated. Do not edit!

// (in-package navio2ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PWM = require('./PWM.js');
let LED = require('./LED.js');

//-----------------------------------------------------------

class Output {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pwm = null;
      this.led = null;
    }
    else {
      if (initObj.hasOwnProperty('pwm')) {
        this.pwm = initObj.pwm
      }
      else {
        this.pwm = new PWM();
      }
      if (initObj.hasOwnProperty('led')) {
        this.led = initObj.led
      }
      else {
        this.led = new LED();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Output
    // Serialize message field [pwm]
    bufferOffset = PWM.serialize(obj.pwm, buffer, bufferOffset);
    // Serialize message field [led]
    bufferOffset = LED.serialize(obj.led, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Output
    let len;
    let data = new Output(null);
    // Deserialize message field [pwm]
    data.pwm = PWM.deserialize(buffer, bufferOffset);
    // Deserialize message field [led]
    data.led = LED.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navio2ros/Output';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbd4021ec4ea8e258f9330f6d559599c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PWM pwm
    LED led
    
    ================================================================================
    MSG: navio2ros/PWM
    float32[14] channel
    
    ================================================================================
    MSG: navio2ros/LED
    bool red
    bool green
    bool blue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Output(null);
    if (msg.pwm !== undefined) {
      resolved.pwm = PWM.Resolve(msg.pwm)
    }
    else {
      resolved.pwm = new PWM()
    }

    if (msg.led !== undefined) {
      resolved.led = LED.Resolve(msg.led)
    }
    else {
      resolved.led = new LED()
    }

    return resolved;
    }
};

module.exports = Output;
