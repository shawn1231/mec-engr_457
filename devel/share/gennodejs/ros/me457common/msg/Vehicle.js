// Auto-generated. Do not edit!

// (in-package me457common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IMU = require('./IMU.js');
let AHRS = require('./AHRS.js');
let GPS = require('./GPS.js');
let LED = require('./LED.js');
let RC = require('./RC.js');
let Servo = require('./Servo.js');
let DCMotor = require('./DCMotor.js');
let Stepper = require('./Stepper.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Vehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imu = null;
      this.ahrs = null;
      this.gps = null;
      this.led = null;
      this.rc = null;
      this.servo = null;
      this.dcmotor = null;
      this.stepper = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new IMU();
      }
      if (initObj.hasOwnProperty('ahrs')) {
        this.ahrs = initObj.ahrs
      }
      else {
        this.ahrs = new AHRS();
      }
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GPS();
      }
      if (initObj.hasOwnProperty('led')) {
        this.led = initObj.led
      }
      else {
        this.led = new LED();
      }
      if (initObj.hasOwnProperty('rc')) {
        this.rc = initObj.rc
      }
      else {
        this.rc = new RC();
      }
      if (initObj.hasOwnProperty('servo')) {
        this.servo = initObj.servo
      }
      else {
        this.servo = new Servo();
      }
      if (initObj.hasOwnProperty('dcmotor')) {
        this.dcmotor = initObj.dcmotor
      }
      else {
        this.dcmotor = new DCMotor();
      }
      if (initObj.hasOwnProperty('stepper')) {
        this.stepper = initObj.stepper
      }
      else {
        this.stepper = new Stepper();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = IMU.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [ahrs]
    bufferOffset = AHRS.serialize(obj.ahrs, buffer, bufferOffset);
    // Serialize message field [gps]
    bufferOffset = GPS.serialize(obj.gps, buffer, bufferOffset);
    // Serialize message field [led]
    bufferOffset = LED.serialize(obj.led, buffer, bufferOffset);
    // Serialize message field [rc]
    bufferOffset = RC.serialize(obj.rc, buffer, bufferOffset);
    // Serialize message field [servo]
    bufferOffset = Servo.serialize(obj.servo, buffer, bufferOffset);
    // Serialize message field [dcmotor]
    bufferOffset = DCMotor.serialize(obj.dcmotor, buffer, bufferOffset);
    // Serialize message field [stepper]
    bufferOffset = Stepper.serialize(obj.stepper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle
    let len;
    let data = new Vehicle(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = IMU.deserialize(buffer, bufferOffset);
    // Deserialize message field [ahrs]
    data.ahrs = AHRS.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps]
    data.gps = GPS.deserialize(buffer, bufferOffset);
    // Deserialize message field [led]
    data.led = LED.deserialize(buffer, bufferOffset);
    // Deserialize message field [rc]
    data.rc = RC.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo]
    data.servo = Servo.deserialize(buffer, bufferOffset);
    // Deserialize message field [dcmotor]
    data.dcmotor = DCMotor.deserialize(buffer, bufferOffset);
    // Deserialize message field [stepper]
    data.stepper = Stepper.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += IMU.getMessageSize(object.imu);
    length += AHRS.getMessageSize(object.ahrs);
    length += GPS.getMessageSize(object.gps);
    length += LED.getMessageSize(object.led);
    length += RC.getMessageSize(object.rc);
    length += Servo.getMessageSize(object.servo);
    length += DCMotor.getMessageSize(object.dcmotor);
    length += Stepper.getMessageSize(object.stepper);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'me457common/Vehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '487cd8168228e4f79bd450b37bc8a8dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    IMU imu
    AHRS ahrs
    GPS gps
    LED led
    RC rc
    Servo servo
    DCMotor dcmotor
    Stepper stepper
    
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
    MSG: me457common/IMU
    Header header
    Accelerometer accelerometer
    Gyroscope gyroscope
    Magnetometer magnetometer
    
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
    
    ================================================================================
    MSG: me457common/AHRS
    Header header
    Angular angular
    
    ================================================================================
    MSG: me457common/Angular
    Header header
    float32 roll
    float32 pitch
    float32 yaw
    
    ================================================================================
    MSG: me457common/GPS
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
    MSG: me457common/LED
    Header header
    bool red
    bool green
    bool blue
    
    ================================================================================
    MSG: me457common/RC
    Header header
    float32[12] channel
    
    ================================================================================
    MSG: me457common/Servo
    Header header
    float32[14] channel
    
    ================================================================================
    MSG: me457common/DCMotor
    Header header
    int16[2] speed
    
    ================================================================================
    MSG: me457common/Stepper
    Header header
    float32 step
    float32 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vehicle(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.imu !== undefined) {
      resolved.imu = IMU.Resolve(msg.imu)
    }
    else {
      resolved.imu = new IMU()
    }

    if (msg.ahrs !== undefined) {
      resolved.ahrs = AHRS.Resolve(msg.ahrs)
    }
    else {
      resolved.ahrs = new AHRS()
    }

    if (msg.gps !== undefined) {
      resolved.gps = GPS.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GPS()
    }

    if (msg.led !== undefined) {
      resolved.led = LED.Resolve(msg.led)
    }
    else {
      resolved.led = new LED()
    }

    if (msg.rc !== undefined) {
      resolved.rc = RC.Resolve(msg.rc)
    }
    else {
      resolved.rc = new RC()
    }

    if (msg.servo !== undefined) {
      resolved.servo = Servo.Resolve(msg.servo)
    }
    else {
      resolved.servo = new Servo()
    }

    if (msg.dcmotor !== undefined) {
      resolved.dcmotor = DCMotor.Resolve(msg.dcmotor)
    }
    else {
      resolved.dcmotor = new DCMotor()
    }

    if (msg.stepper !== undefined) {
      resolved.stepper = Stepper.Resolve(msg.stepper)
    }
    else {
      resolved.stepper = new Stepper()
    }

    return resolved;
    }
};

module.exports = Vehicle;
