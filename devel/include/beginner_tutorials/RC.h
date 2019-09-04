// Generated by gencpp from file beginner_tutorials/RC.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_RC_H
#define BEGINNER_TUTORIALS_MESSAGE_RC_H


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
struct RC_
{
  typedef RC_<ContainerAllocator> Type;

  RC_()
    : channel()  {
      channel.assign(0.0);
  }
  RC_(const ContainerAllocator& _alloc)
    : channel()  {
  (void)_alloc;
      channel.assign(0.0);
  }



   typedef boost::array<float, 12>  _channel_type;
  _channel_type channel;




  typedef boost::shared_ptr< ::beginner_tutorials::RC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::RC_<ContainerAllocator> const> ConstPtr;

}; // struct RC_

typedef ::beginner_tutorials::RC_<std::allocator<void> > RC;

typedef boost::shared_ptr< ::beginner_tutorials::RC > RCPtr;
typedef boost::shared_ptr< ::beginner_tutorials::RC const> RCConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::RC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::RC_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beginner_tutorials::RC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::RC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::RC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::RC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::RC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::RC_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::RC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7dd1c0436bcad91f32df636741a98371";
  }

  static const char* value(const ::beginner_tutorials::RC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7dd1c0436bcad91fULL;
  static const uint64_t static_value2 = 0x32df636741a98371ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::RC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/RC";
  }

  static const char* value(const ::beginner_tutorials::RC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::RC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[12] channel\n\
";
  }

  static const char* value(const ::beginner_tutorials::RC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::RC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::RC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::RC_<ContainerAllocator>& v)
  {
    s << indent << "channel[]" << std::endl;
    for (size_t i = 0; i < v.channel.size(); ++i)
    {
      s << indent << "  channel[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.channel[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_RC_H
