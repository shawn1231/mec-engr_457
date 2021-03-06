// Generated by gencpp from file me457common/IMU.msg
// DO NOT EDIT!


#ifndef ME457COMMON_MESSAGE_IMU_H
#define ME457COMMON_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <me457common/Accelerometer.h>
#include <me457common/Gyroscope.h>
#include <me457common/Magnetometer.h>

namespace me457common
{
template <class ContainerAllocator>
struct IMU_
{
  typedef IMU_<ContainerAllocator> Type;

  IMU_()
    : header()
    , accelerometer()
    , gyroscope()
    , magnetometer()  {
    }
  IMU_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , accelerometer(_alloc)
    , gyroscope(_alloc)
    , magnetometer(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::me457common::Accelerometer_<ContainerAllocator>  _accelerometer_type;
  _accelerometer_type accelerometer;

   typedef  ::me457common::Gyroscope_<ContainerAllocator>  _gyroscope_type;
  _gyroscope_type gyroscope;

   typedef  ::me457common::Magnetometer_<ContainerAllocator>  _magnetometer_type;
  _magnetometer_type magnetometer;





  typedef boost::shared_ptr< ::me457common::IMU_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::me457common::IMU_<ContainerAllocator> const> ConstPtr;

}; // struct IMU_

typedef ::me457common::IMU_<std::allocator<void> > IMU;

typedef boost::shared_ptr< ::me457common::IMU > IMUPtr;
typedef boost::shared_ptr< ::me457common::IMU const> IMUConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::me457common::IMU_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::me457common::IMU_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace me457common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'me457common': ['/home/pi/catkin_ws/src/me457common/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::me457common::IMU_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::me457common::IMU_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::me457common::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::me457common::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::me457common::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::me457common::IMU_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::me457common::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0494ce31f87f2216a9da6d0830d062cd";
  }

  static const char* value(const ::me457common::IMU_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0494ce31f87f2216ULL;
  static const uint64_t static_value2 = 0xa9da6d0830d062cdULL;
};

template<class ContainerAllocator>
struct DataType< ::me457common::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "me457common/IMU";
  }

  static const char* value(const ::me457common::IMU_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::me457common::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Accelerometer accelerometer\n\
Gyroscope gyroscope\n\
Magnetometer magnetometer\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: me457common/Accelerometer\n\
Header header\n\
float32 x\n\
float32 y\n\
float32 z\n\
\n\
================================================================================\n\
MSG: me457common/Gyroscope\n\
Header header\n\
float32 x\n\
float32 y\n\
float32 z\n\
\n\
================================================================================\n\
MSG: me457common/Magnetometer\n\
Header header\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::me457common::IMU_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::me457common::IMU_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.accelerometer);
      stream.next(m.gyroscope);
      stream.next(m.magnetometer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IMU_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::me457common::IMU_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::me457common::IMU_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "accelerometer: ";
    s << std::endl;
    Printer< ::me457common::Accelerometer_<ContainerAllocator> >::stream(s, indent + "  ", v.accelerometer);
    s << indent << "gyroscope: ";
    s << std::endl;
    Printer< ::me457common::Gyroscope_<ContainerAllocator> >::stream(s, indent + "  ", v.gyroscope);
    s << indent << "magnetometer: ";
    s << std::endl;
    Printer< ::me457common::Magnetometer_<ContainerAllocator> >::stream(s, indent + "  ", v.magnetometer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ME457COMMON_MESSAGE_IMU_H
