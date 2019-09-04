# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from beginner_tutorials/Vehicle.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import beginner_tutorials.msg

class Vehicle(genpy.Message):
  _md5sum = "da90bcd421369e980b50dd533315976a"
  _type = "beginner_tutorials/Vehicle"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Input input
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
"""
  __slots__ = ['input','output','ahrs']
  _slot_types = ['beginner_tutorials/Input','beginner_tutorials/Output','beginner_tutorials/AHRS']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       input,output,ahrs

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Vehicle, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.input is None:
        self.input = beginner_tutorials.msg.Input()
      if self.output is None:
        self.output = beginner_tutorials.msg.Output()
      if self.ahrs is None:
        self.ahrs = beginner_tutorials.msg.AHRS()
    else:
      self.input = beginner_tutorials.msg.Input()
      self.output = beginner_tutorials.msg.Output()
      self.ahrs = beginner_tutorials.msg.AHRS()

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
      buff.write(_get_struct_3f().pack(_x.input.barometer.pressure, _x.input.barometer.temperature, _x.input.barometer.elevation))
      buff.write(_get_struct_6f().pack(*self.input.adc.channel))
      buff.write(_get_struct_12f().pack(*self.input.rc.channel))
      _x = self
      buff.write(_get_struct_9f().pack(_x.input.imu.accelerometer.x, _x.input.imu.accelerometer.y, _x.input.imu.accelerometer.z, _x.input.imu.gyroscope.x, _x.input.imu.gyroscope.y, _x.input.imu.gyroscope.z, _x.input.imu.magnetometer.x, _x.input.imu.magnetometer.y, _x.input.imu.magnetometer.z))
      buff.write(_get_struct_14f().pack(*self.output.pwm.channel))
      _x = self
      buff.write(_get_struct_3B3f().pack(_x.output.led.red, _x.output.led.green, _x.output.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.input is None:
        self.input = beginner_tutorials.msg.Input()
      if self.output is None:
        self.output = beginner_tutorials.msg.Output()
      if self.ahrs is None:
        self.ahrs = beginner_tutorials.msg.AHRS()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.input.barometer.pressure, _x.input.barometer.temperature, _x.input.barometer.elevation,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 24
      self.input.adc.channel = _get_struct_6f().unpack(str[start:end])
      start = end
      end += 48
      self.input.rc.channel = _get_struct_12f().unpack(str[start:end])
      _x = self
      start = end
      end += 36
      (_x.input.imu.accelerometer.x, _x.input.imu.accelerometer.y, _x.input.imu.accelerometer.z, _x.input.imu.gyroscope.x, _x.input.imu.gyroscope.y, _x.input.imu.gyroscope.z, _x.input.imu.magnetometer.x, _x.input.imu.magnetometer.y, _x.input.imu.magnetometer.z,) = _get_struct_9f().unpack(str[start:end])
      start = end
      end += 56
      self.output.pwm.channel = _get_struct_14f().unpack(str[start:end])
      _x = self
      start = end
      end += 15
      (_x.output.led.red, _x.output.led.green, _x.output.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw,) = _get_struct_3B3f().unpack(str[start:end])
      self.output.led.red = bool(self.output.led.red)
      self.output.led.green = bool(self.output.led.green)
      self.output.led.blue = bool(self.output.led.blue)
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
      buff.write(_get_struct_3f().pack(_x.input.barometer.pressure, _x.input.barometer.temperature, _x.input.barometer.elevation))
      buff.write(self.input.adc.channel.tostring())
      buff.write(self.input.rc.channel.tostring())
      _x = self
      buff.write(_get_struct_9f().pack(_x.input.imu.accelerometer.x, _x.input.imu.accelerometer.y, _x.input.imu.accelerometer.z, _x.input.imu.gyroscope.x, _x.input.imu.gyroscope.y, _x.input.imu.gyroscope.z, _x.input.imu.magnetometer.x, _x.input.imu.magnetometer.y, _x.input.imu.magnetometer.z))
      buff.write(self.output.pwm.channel.tostring())
      _x = self
      buff.write(_get_struct_3B3f().pack(_x.output.led.red, _x.output.led.green, _x.output.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.input is None:
        self.input = beginner_tutorials.msg.Input()
      if self.output is None:
        self.output = beginner_tutorials.msg.Output()
      if self.ahrs is None:
        self.ahrs = beginner_tutorials.msg.AHRS()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.input.barometer.pressure, _x.input.barometer.temperature, _x.input.barometer.elevation,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 24
      self.input.adc.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=6)
      start = end
      end += 48
      self.input.rc.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=12)
      _x = self
      start = end
      end += 36
      (_x.input.imu.accelerometer.x, _x.input.imu.accelerometer.y, _x.input.imu.accelerometer.z, _x.input.imu.gyroscope.x, _x.input.imu.gyroscope.y, _x.input.imu.gyroscope.z, _x.input.imu.magnetometer.x, _x.input.imu.magnetometer.y, _x.input.imu.magnetometer.z,) = _get_struct_9f().unpack(str[start:end])
      start = end
      end += 56
      self.output.pwm.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=14)
      _x = self
      start = end
      end += 15
      (_x.output.led.red, _x.output.led.green, _x.output.led.blue, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw,) = _get_struct_3B3f().unpack(str[start:end])
      self.output.led.red = bool(self.output.led.red)
      self.output.led.green = bool(self.output.led.green)
      self.output.led.blue = bool(self.output.led.blue)
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
_struct_9f = None
def _get_struct_9f():
    global _struct_9f
    if _struct_9f is None:
        _struct_9f = struct.Struct("<9f")
    return _struct_9f
_struct_14f = None
def _get_struct_14f():
    global _struct_14f
    if _struct_14f is None:
        _struct_14f = struct.Struct("<14f")
    return _struct_14f
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
