// Auto-generated. Do not edit!

// (in-package navio2ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Barometer = require('./Barometer.js');
let ADC = require('./ADC.js');
let RC = require('./RC.js');
let IMU = require('./IMU.js');
let GPS = require('./GPS.js');

//-----------------------------------------------------------

class Input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.barometer = null;
      this.adc = null;
      this.rc = null;
      this.imu = null;
      this.gps = null;
    }
    else {
      if (initObj.hasOwnProperty('barometer')) {
        this.barometer = initObj.barometer
      }
      else {
        this.barometer = new Barometer();
      }
      if (initObj.hasOwnProperty('adc')) {
        this.adc = initObj.adc
      }
      else {
        this.adc = new ADC();
      }
      if (initObj.hasOwnProperty('rc')) {
        this.rc = initObj.rc
      }
      else {
        this.rc = new RC();
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new IMU();
      }
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GPS();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Input
    // Serialize message field [barometer]
    bufferOffset = Barometer.serialize(obj.barometer, buffer, bufferOffset);
    // Serialize message field [adc]
    bufferOffset = ADC.serialize(obj.adc, buffer, bufferOffset);
    // Serialize message field [rc]
    bufferOffset = RC.serialize(obj.rc, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = IMU.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [gps]
    bufferOffset = GPS.serialize(obj.gps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Input
    let len;
    let data = new Input(null);
    // Deserialize message field [barometer]
    data.barometer = Barometer.deserialize(buffer, bufferOffset);
    // Deserialize message field [adc]
    data.adc = ADC.deserialize(buffer, bufferOffset);
    // Deserialize message field [rc]
    data.rc = RC.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = IMU.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps]
    data.gps = GPS.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 152;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navio2ros/Input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41bfe857689e03cf3cd507d1cb1bac8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Barometer barometer
    ADC adc
    RC rc
    IMU imu
    GPS gps
    
    ================================================================================
    MSG: navio2ros/Barometer
    float32 pressure
    float32 temperature
    float32 elevation
    
    ================================================================================
    MSG: navio2ros/ADC
    float32[6] channel
    
    ================================================================================
    MSG: navio2ros/RC
    float32[12] channel
    
    ================================================================================
    MSG: navio2ros/IMU
    Accelerometer accelerometer
    Gyroscope gyroscope
    Magnetometer magnetometer
    
    ================================================================================
    MSG: navio2ros/Accelerometer
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: navio2ros/Gyroscope
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: navio2ros/Magnetometer
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: navio2ros/GPS
    int32 status
    float32 mtow
    float32 longitude
    float32 latitude
    float32 elevation_ellipsoid
    float32 elevation_msl
    float32 horizontal_accuracy
    float32 vertical_accuracy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Input(null);
    if (msg.barometer !== undefined) {
      resolved.barometer = Barometer.Resolve(msg.barometer)
    }
    else {
      resolved.barometer = new Barometer()
    }

    if (msg.adc !== undefined) {
      resolved.adc = ADC.Resolve(msg.adc)
    }
    else {
      resolved.adc = new ADC()
    }

    if (msg.rc !== undefined) {
      resolved.rc = RC.Resolve(msg.rc)
    }
    else {
      resolved.rc = new RC()
    }

    if (msg.imu !== undefined) {
      resolved.imu = IMU.Resolve(msg.imu)
    }
    else {
      resolved.imu = new IMU()
    }

    if (msg.gps !== undefined) {
      resolved.gps = GPS.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GPS()
    }

    return resolved;
    }
};

module.exports = Input;
