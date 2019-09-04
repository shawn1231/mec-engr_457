// Generated by gencpp from file beginner_tutorials/Barometer.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_BAROMETER_H
#define BEGINNER_TUTORIALS_MESSAGE_BAROMETER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct Barometer_
{
  typedef Barometer_<ContainerAllocator> Type;

  Barometer_()
    : pressure(0.0)
    , temperature(0.0)
    , elevation(0.0)  {
    }
  Barometer_(const ContainerAllocator& _alloc)
    : pressure(0.0)
    , temperature(0.0)
    , elevation(0.0)  {
  (void)_alloc;
    }



   typedef float _pressure_type;
  _pressure_type pressure;

   typedef float _temperature_type;
  _temperature_type temperature;

   typedef float _elevation_type;
  _elevation_type elevation;




  typedef boost::shared_ptr< ::beginner_tutorials::Barometer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Barometer_<ContainerAllocator> const> ConstPtr;

}; // struct Barometer_

typedef ::beginner_tutorials::Barometer_<std::allocator<void> > Barometer;

typedef boost::shared_ptr< ::beginner_tutorials::Barometer > BarometerPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Barometer const> BarometerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Barometer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Barometer_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beginner_tutorials::Barometer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Barometer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Barometer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Barometer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Barometer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Barometer_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Barometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "65093e1d0bdc79afdb9f1c102acbfb46";
  }

  static const char* value(const ::beginner_tutorials::Barometer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x65093e1d0bdc79afULL;
  static const uint64_t static_value2 = 0xdb9f1c102acbfb46ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Barometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Barometer";
  }

  static const char* value(const ::beginner_tutorials::Barometer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Barometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 pressure\n\
float32 temperature\n\
float32 elevation\n\
";
  }

  static const char* value(const ::beginner_tutorials::Barometer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Barometer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pressure);
      stream.next(m.temperature);
      stream.next(m.elevation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Barometer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Barometer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Barometer_<ContainerAllocator>& v)
  {
    s << indent << "pressure: ";
    Printer<float>::stream(s, indent + "  ", v.pressure);
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
    s << indent << "elevation: ";
    Printer<float>::stream(s, indent + "  ", v.elevation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_BAROMETER_H
