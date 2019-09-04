# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navio2ros/Vehicle.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import navio2ros.msg

class Vehicle(genpy.Message):
  _md5sum = "2febfc1276c558c16a1a94747227f3aa"
  _type = "navio2ros/Vehicle"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Barometer barometer
ADC adc
RC rc
IMU imu
GPS gps
PWM pwm
LED led
AHRS ahrs

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

================================================================================
MSG: navio2ros/PWM
float32[14] channel

================================================================================
MSG: navio2ros/LED
bool red
bool green
bool blue

================================================================================
MSG: navio2ros/AHRS
Angular angular

================================================================================
MSG: navio2ros/Angular
float32 roll
float32 pitch
float32 yaw
"""
  __slots__ = ['barometer','adc','rc','imu','gps','pwm','led','ahrs']
  _slot_types = ['navio2ros/Barometer','navio2ros/ADC','navio2ros/RC','navio2ros/IMU','navio2ros/GPS','navio2ros/PWM','navio2ros/LED','navio2ros/AHRS']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       barometer,adc,rc,imu,gps,pwm,led,ahrs

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Vehicle, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.barometer is None:
        self.barometer = navio2ros.msg.Barometer()
      if self.adc is None:
        self.adc = navio2ros.msg.ADC()
      if self.rc is None:
        self.rc = navio2ros.msg.RC()
      if self.imu is None:
        self.imu = navio2ros.msg.IMU()
      if self.gps is None:
        self.gps = navio2ros.msg.GPS()
      if self.pwm is None:
        self.pwm = navio2ros.msg.PWM()
      if self.led is None:
        self.led = navio2ros.msg.LED()
      if self.ahrs is None:
        self.ahrs = navio2ros.msg.AHRS()
    else:
      self.barometer = navio2ros.msg.Barometer()
      self.adc = navio2ros.msg.ADC()
      self.rc = navio2ros.msg.RC()
      self.imu = navio2ros.msg.IMU()
      self.gps = navio2ros.msg.GPS()
      self.pwm = navio2ros.msg.PWM()
      self.led = navio2ros.msg.LED()
      self.ahrs = navio2ros.msg.AHRS()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3f().pack(_x.barometer.pressure, _x.barometer.temperature, _x.barometer.elevation))
      buff.write(_get_struct_6f().pack(*self.adc.channel))
      buff.write(_get_struct_12f().pack(*self.rc.channel))
      _x = self
      buff.write(_get_struct_9fi7f().pack(_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy))
      buff.write(_get_struct_14f().pack(*self.pwm.channel))
      _x = self
      buff.write(_get_struct_3B3f().pack(_x.led.red, _x.led.green, _x.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.barometer is None:
        self.barometer = navio2ros.msg.Barometer()
      if self.adc is None:
        self.adc = navio2ros.msg.ADC()
      if self.rc is None:
        self.rc = navio2ros.msg.RC()
      if self.imu is None:
        self.imu = navio2ros.msg.IMU()
      if self.gps is None:
        self.gps = navio2ros.msg.GPS()
      if self.pwm is None:
        self.pwm = navio2ros.msg.PWM()
      if self.led is None:
        self.led = navio2ros.msg.LED()
      if self.ahrs is None:
        self.ahrs = navio2ros.msg.AHRS()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.barometer.pressure, _x.barometer.temperature, _x.barometer.elevation,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 24
      self.adc.channel = _get_struct_6f().unpack(str[start:end])
      start = end
      end += 48
      self.rc.channel = _get_struct_12f().unpack(str[start:end])
      _x = self
      start = end
      end += 68
      (_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy,) = _get_struct_9fi7f().unpack(str[start:end])
      start = end
      end += 56
      self.pwm.channel = _get_struct_14f().unpack(str[start:end])
      _x = self
      start = end
      end += 15
      (_x.led.red, _x.led.green, _x.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw,) = _get_struct_3B3f().unpack(str[start:end])
      self.led.red = bool(self.led.red)
      self.led.green = bool(self.led.green)
      self.led.blue = bool(self.led.blue)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3f().pack(_x.barometer.pressure, _x.barometer.temperature, _x.barometer.elevation))
      buff.write(self.adc.channel.tostring())
      buff.write(self.rc.channel.tostring())
      _x = self
      buff.write(_get_struct_9fi7f().pack(_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy))
      buff.write(self.pwm.channel.tostring())
      _x = self
      buff.write(_get_struct_3B3f().pack(_x.led.red, _x.led.green, _x.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.barometer is None:
        self.barometer = navio2ros.msg.Barometer()
      if self.adc is None:
        self.adc = navio2ros.msg.ADC()
      if self.rc is None:
        self.rc = navio2ros.msg.RC()
      if self.imu is None:
        self.imu = navio2ros.msg.IMU()
      if self.gps is None:
        self.gps = navio2ros.msg.GPS()
      if self.pwm is None:
        self.pwm = navio2ros.msg.PWM()
      if self.led is None:
        self.led = navio2ros.msg.LED()
      if self.ahrs is None:
        self.ahrs = navio2ros.msg.AHRS()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.barometer.pressure, _x.barometer.temperature, _x.barometer.elevation,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 24
      self.adc.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=6)
      start = end
      end += 48
      self.rc.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=12)
      _x = self
      start = end
      end += 68
      (_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy,) = _get_struct_9fi7f().unpack(str[start:end])
      start = end
      end += 56
      self.pwm.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=14)
      _x = self
      start = end
      end += 15
      (_x.led.red, _x.led.green, _x.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw,) = _get_struct_3B3f().unpack(str[start:end])
      self.led.red = bool(self.led.red)
      self.led.green = bool(self.led.green)
      self.led.blue = bool(self.led.blue)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B3f = None
def _get_struct_3B3f():
    global _struct_3B3f
    if _struct_3B3f is None:
        _struct_3B3f = struct.Struct("<3B3f")
    return _struct_3B3f
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
_struct_12f = None
def _get_struct_12f():
    global _struct_12f
    if _struct_12f is None:
        _struct_12f = struct.Struct("<12f")
    return _struct_12f
_struct_14f = None
def _get_struct_14f():
    global _struct_14f
    if _struct_14f is None:
        _struct_14f = struct.Struct("<14f")
    return _struct_14f
_struct_9fi7f = None
def _get_struct_9fi7f():
    global _struct_9fi7f
    if _struct_9fi7f is None:
        _struct_9fi7f = struct.Struct("<9fi7f")
    return _struct_9fi7f
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
