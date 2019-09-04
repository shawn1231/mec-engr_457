
"use strict";

let Vehicle = require('./Vehicle.js');
let ADC = require('./ADC.js');
let RC = require('./RC.js');
let AHRS = require('./AHRS.js');
let PWM = require('./PWM.js');
let Gyroscope = require('./Gyroscope.js');
let Magnetometer = require('./Magnetometer.js');
let Accelerometer = require('./Accelerometer.js');
let LED = require('./LED.js');
let Barometer = require('./Barometer.js');
let GPS = require('./GPS.js');
let IMU = require('./IMU.js');
let Angular = require('./Angular.js');

module.exports = {
  Vehicle: Vehicle,
  ADC: ADC,
  RC: RC,
  AHRS: AHRS,
  PWM: PWM,
  Gyroscope: Gyroscope,
  Magnetometer: Magnetometer,
  Accelerometer: Accelerometer,
  LED: LED,
  Barometer: Barometer,
  GPS: GPS,
  IMU: IMU,
  Angular: Angular,
};
