// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Input = require('./Input.js');
let Output = require('./Output.js');
let AHRS = require('./AHRS.js');

//-----------------------------------------------------------

class Vehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
      this.output = null;
      this.ahrs = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = new Input();
      }
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = new Output();
      }
      if (initObj.hasOwnProperty('ahrs')) {
        this.ahrs = initObj.ahrs
      }
      else {
        this.ahrs = new AHRS();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle
    // Serialize message field [input]
    bufferOffset = Input.serialize(obj.input, buffer, bufferOffset);
    // Serialize message field [output]
    bufferOffset = Output.serialize(obj.output, buffer, bufferOffset);
    // Serialize message field [ahrs]
    bufferOffset = AHRS.serialize(obj.ahrs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle
    let len;
    let data = new Vehicle(null);
    // Deserialize message field [input]
    data.input = Input.deserialize(buffer, bufferOffset);
    // Deserialize message field [output]
    data.output = Output.deserialize(buffer, bufferOffset);
    // Deserialize message field [ahrs]
    data.ahrs = AHRS.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 191;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Vehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da90bcd421369e980b50dd533315976a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Input input
    Output output
    AHRS ahrs
    
    ================================================================================
    MSG: beginner_tutorials/Input
    Barometer barometer
    ADC adc
    RC rc
    IMU imu
    
    ================================================================================
    MSG: beginner_tutorials/Barometer
    float32 pressure
    float32 temperature
    float32 elevation
    
    ================================================================================
    MSG: beginner_tutorials/ADC
    float32[6] channel
    
    ================================================================================
    MSG: beginner_tutorials/RC
    float32[12] channel
    
    ================================================================================
    MSG: beginner_tutorials/IMU
    Accelerometer accelerometer
    Gyroscope gyroscope
    Magnetometer magnetometer
    
    ================================================================================
    MSG: beginner_tutorials/Accelerometer
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: beginner_tutorials/Gyroscope
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: beginner_tutorials/Magnetometer
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: beginner_tutorials/Output
    PWM pwm
    LED led
    
    ================================================================================
    MSG: beginner_tutorials/PWM
    float32[14] channel
    
    ================================================================================
    MSG: beginner_tutorials/LED
    bool red
    bool green
    bool blue
    
    ================================================================================
    MSG: beginner_tutorials/AHRS
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
    const resolved = new Vehicle(null);
    if (msg.input !== undefined) {
      resolved.input = Input.Resolve(msg.input)
    }
    else {
      resolved.input = new Input()
    }

    if (msg.output !== undefined) {
      resolved.output = Output.Resolve(msg.output)
    }
    else {
      resolved.output = new Output()
    }

    if (msg.ahrs !== undefined) {
      resolved.ahrs = AHRS.Resolve(msg.ahrs)
    }
    else {
      resolved.ahrs = new AHRS()
    }

    return resolved;
    }
};

module.exports = Vehicle;
