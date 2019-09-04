// Generated by gencpp from file beginner_tutorials/IMU.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_IMU_H
#define BEGINNER_TUTORIALS_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <beginner_tutorials/Accelerometer.h>
#include <beginner_tutorials/Gyroscope.h>
#include <beginner_tutorials/Magnetometer.h>

namespace beginner_tutorials
{
template <class ContainerAllocator>
struct IMU_
{
  typedef IMU_<ContainerAllocator> Type;

  IMU_()
    : accelerometer()
    , gyroscope()
    , magnetometer()  {
    }
  IMU_(const ContainerAllocator& _alloc)
    : accelerometer(_alloc)
    , gyroscope(_alloc)
    , magnetometer(_alloc)  {
  (void)_alloc;
    }



   typedef  ::beginner_tutorials::Accelerometer_<ContainerAllocator>  _accelerometer_type;
  _accelerometer_type accelerometer;

   typedef  ::beginner_tutorials::Gyroscope_<ContainerAllocator>  _gyroscope_type;
  _gyroscope_type gyroscope;

   typedef  ::beginner_tutorials::Magnetometer_<ContainerAllocator>  _magnetometer_type;
  _magnetometer_type magnetometer;




  typedef boost::shared_ptr< ::beginner_tutorials::IMU_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::IMU_<ContainerAllocator> const> ConstPtr;

}; // struct IMU_

typedef ::beginner_tutorials::IMU_<std::allocator<void> > IMU;

typedef boost::shared_ptr< ::beginner_tutorials::IMU > IMUPtr;
typedef boost::shared_ptr< ::beginner_tutorials::IMU const> IMUConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::IMU_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::IMU_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/pi/catkin_ws/src/beginner_tutorials/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::IMU_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::IMU_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33ff63b96a03311723bbe1dce9705773";
  }

  static const char* value(const ::beginner_tutorials::IMU_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33ff63b96a033117ULL;
  static const uint64_t static_value2 = 0x23bbe1dce9705773ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/IMU";
  }

  static const char* value(const ::beginner_tutorials::IMU_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Accelerometer accelerometer\n\
Gyroscope gyroscope\n\
Magnetometer magnetometer\n\
\n\
================================================================================\n\
MSG: beginner_tutorials/Accelerometer\n\
float32 x\n\
float32 y\n\
float32 z\n\
\n\
================================================================================\n\
MSG: beginner_tutorials/Gyroscope\n\
float32 x\n\
float32 y\n\
float32 z\n\
\n\
================================================================================\n\
MSG: beginner_tutorials/Magnetometer\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::beginner_tutorials::IMU_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::IMU_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
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
struct Printer< ::beginner_tutorials::IMU_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::IMU_<ContainerAllocator>& v)
  {
    s << indent << "accelerometer: ";
    s << std::endl;
    Printer< ::beginner_tutorials::Accelerometer_<ContainerAllocator> >::stream(s, indent + "  ", v.accelerometer);
    s << indent << "gyroscope: ";
    s << std::endl;
    Printer< ::beginner_tutorials::Gyroscope_<ContainerAllocator> >::stream(s, indent + "  ", v.gyroscope);
    s << indent << "magnetometer: ";
    s << std::endl;
    Printer< ::beginner_tutorials::Magnetometer_<ContainerAllocator> >::stream(s, indent + "  ", v.magnetometer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_IMU_H
