# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from me457common/Vehicle.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import me457common.msg
import std_msgs.msg

class Vehicle(genpy.Message):
  _md5sum = "067afcb60f63192020dd9194535331a0"
  _type = "me457common/Vehicle"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
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
Accelerometer accelerometer
Gyroscope gyroscope
Magnetometer magnetometer

================================================================================
MSG: me457common/Accelerometer
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/Gyroscope
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/Magnetometer
float32 x
float32 y
float32 z

================================================================================
MSG: me457common/AHRS
Angular angular

================================================================================
MSG: me457common/Angular
float32 roll
float32 pitch
float32 yaw

================================================================================
MSG: me457common/GPS
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
bool red
bool green
bool blue

================================================================================
MSG: me457common/RC
float32[12] channel

================================================================================
MSG: me457common/Servo
float32[14] channel

================================================================================
MSG: me457common/DCMotor
int16[2] speed

================================================================================
MSG: me457common/Stepper
float32 step
float32 direction
"""
  __slots__ = ['header','imu','ahrs','gps','led','rc','servo','dcmotor','stepper']
  _slot_types = ['std_msgs/Header','me457common/IMU','me457common/AHRS','me457common/GPS','me457common/LED','me457common/RC','me457common/Servo','me457common/DCMotor','me457common/Stepper']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,imu,ahrs,gps,led,rc,servo,dcmotor,stepper

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Vehicle, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.imu is None:
        self.imu = me457common.msg.IMU()
      if self.ahrs is None:
        self.ahrs = me457common.msg.AHRS()
      if self.gps is None:
        self.gps = me457common.msg.GPS()
      if self.led is None:
        self.led = me457common.msg.LED()
      if self.rc is None:
        self.rc = me457common.msg.RC()
      if self.servo is None:
        self.servo = me457common.msg.Servo()
      if self.dcmotor is None:
        self.dcmotor = me457common.msg.DCMotor()
      if self.stepper is None:
        self.stepper = me457common.msg.Stepper()
    else:
      self.header = std_msgs.msg.Header()
      self.imu = me457common.msg.IMU()
      self.ahrs = me457common.msg.AHRS()
      self.gps = me457common.msg.GPS()
      self.led = me457common.msg.LED()
      self.rc = me457common.msg.RC()
      self.servo = me457common.msg.Servo()
      self.dcmotor = me457common.msg.DCMotor()
      self.stepper = me457common.msg.Stepper()

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_12fi7f3B().pack(_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy, _x.led.red, _x.led.green, _x.led.blue))
      buff.write(_get_struct_12f().pack(*self.rc.channel))
      buff.write(_get_struct_14f().pack(*self.servo.channel))
      buff.write(_get_struct_2h().pack(*self.dcmotor.speed))
      _x = self
      buff.write(_get_struct_2f().pack(_x.stepper.step, _x.stepper.direction))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.imu is None:
        self.imu = me457common.msg.IMU()
      if self.ahrs is None:
        self.ahrs = me457common.msg.AHRS()
      if self.gps is None:
        self.gps = me457common.msg.GPS()
      if self.led is None:
        self.led = me457common.msg.LED()
      if self.rc is None:
        self.rc = me457common.msg.RC()
      if self.servo is None:
        self.servo = me457common.msg.Servo()
      if self.dcmotor is None:
        self.dcmotor = me457common.msg.DCMotor()
      if self.stepper is None:
        self.stepper = me457common.msg.Stepper()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 83
      (_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy, _x.led.red, _x.led.green, _x.led.blue,) = _get_struct_12fi7f3B().unpack(str[start:end])
      self.led.red = bool(self.led.red)
      self.led.green = bool(self.led.green)
      self.led.blue = bool(self.led.blue)
      start = end
      end += 48
      self.rc.channel = _get_struct_12f().unpack(str[start:end])
      start = end
      end += 56
      self.servo.channel = _get_struct_14f().unpack(str[start:end])
      start = end
      end += 4
      self.dcmotor.speed = _get_struct_2h().unpack(str[start:end])
      _x = self
      start = end
      end += 8
      (_x.stepper.step, _x.stepper.direction,) = _get_struct_2f().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_12fi7f3B().pack(_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy, _x.led.red, _x.led.green, _x.led.blue))
      buff.write(self.rc.channel.tostring())
      buff.write(self.servo.channel.tostring())
      buff.write(self.dcmotor.speed.tostring())
      _x = self
      buff.write(_get_struct_2f().pack(_x.stepper.step, _x.stepper.direction))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.imu is None:
        self.imu = me457common.msg.IMU()
      if self.ahrs is None:
        self.ahrs = me457common.msg.AHRS()
      if self.gps is None:
        self.gps = me457common.msg.GPS()
      if self.led is None:
        self.led = me457common.msg.LED()
      if self.rc is None:
        self.rc = me457common.msg.RC()
      if self.servo is None:
        self.servo = me457common.msg.Servo()
      if self.dcmotor is None:
        self.dcmotor = me457common.msg.DCMotor()
      if self.stepper is None:
        self.stepper = me457common.msg.Stepper()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 83
      (_x.imu.accelerometer.x, _x.imu.accelerometer.y, _x.imu.accelerometer.z, _x.imu.gyroscope.x, _x.imu.gyroscope.y, _x.imu.gyroscope.z, _x.imu.magnetometer.x, _x.imu.magnetometer.y, _x.imu.magnetometer.z, _x.ahrs.angular.roll, _x.ahrs.angular.pitch, _x.ahrs.angular.yaw, _x.gps.status, _x.gps.mtow, _x.gps.longitude, _x.gps.latitude, _x.gps.elevation_ellipsoid, _x.gps.elevation_msl, _x.gps.horizontal_accuracy, _x.gps.vertical_accuracy, _x.led.red, _x.led.green, _x.led.blue,) = _get_struct_12fi7f3B().unpack(str[start:end])
      self.led.red = bool(self.led.red)
      self.led.green = bool(self.led.green)
      self.led.blue = bool(self.led.blue)
      start = end
      end += 48
      self.rc.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=12)
      start = end
      end += 56
      self.servo.channel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=14)
      start = end
      end += 4
      self.dcmotor.speed = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=2)
      _x = self
      start = end
      end += 8
      (_x.stepper.step, _x.stepper.direction,) = _get_struct_2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12f = None
def _get_struct_12f():
    global _struct_12f
    if _struct_12f is None:
        _struct_12f = struct.Struct("<12f")
    return _struct_12f
_struct_12fi7f3B = None
def _get_struct_12fi7f3B():
    global _struct_12fi7f3B
    if _struct_12fi7f3B is None:
        _struct_12fi7f3B = struct.Struct("<12fi7f3B")
    return _struct_12fi7f3B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_14f = None
def _get_struct_14f():
    global _struct_14f
    if _struct_14f is None:
        _struct_14f = struct.Struct("<14f")
    return _struct_14f
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_2h = None
def _get_struct_2h():
    global _struct_2h
    if _struct_2h is None:
        _struct_2h = struct.Struct("<2h")
    return _struct_2h