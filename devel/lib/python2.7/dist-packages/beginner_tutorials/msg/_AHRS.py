# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from beginner_tutorials/AHRS.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import beginner_tutorials.msg

class AHRS(genpy.Message):
  _md5sum = "a8f2e835f7df7c60991a6cba8353dd78"
  _type = "beginner_tutorials/AHRS"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Angular angular

================================================================================
MSG: beginner_tutorials/Angular
float32 roll
float32 pitch
float32 yaw
"""
  __slots__ = ['angular']
  _slot_types = ['beginner_tutorials/Angular']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       angular

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AHRS, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.angular is None:
        self.angular = beginner_tutorials.msg.Angular()
    else:
      self.angular = beginner_tutorials.msg.Angular()

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
      buff.write(_get_struct_3f().pack(_x.angular.roll, _x.angular.pitch, _x.angular.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.angular is None:
        self.angular = beginner_tutorials.msg.Angular()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.angular.roll, _x.angular.pitch, _x.angular.yaw,) = _get_struct_3f().unpack(str[start:end])
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
      buff.write(_get_struct_3f().pack(_x.angular.roll, _x.angular.pitch, _x.angular.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.angular is None:
        self.angular = beginner_tutorials.msg.Angular()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.angular.roll, _x.angular.pitch, _x.angular.yaw,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
