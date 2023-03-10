// Generated by gencpp from file tm_msgs/SetIOResponse.msg
// DO NOT EDIT!


#ifndef TM_MSGS_MESSAGE_SETIORESPONSE_H
#define TM_MSGS_MESSAGE_SETIORESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tm_msgs
{
template <class ContainerAllocator>
struct SetIOResponse_
{
  typedef SetIOResponse_<ContainerAllocator> Type;

  SetIOResponse_()
    : ok(false)  {
    }
  SetIOResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::tm_msgs::SetIOResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tm_msgs::SetIOResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetIOResponse_

typedef ::tm_msgs::SetIOResponse_<std::allocator<void> > SetIOResponse;

typedef boost::shared_ptr< ::tm_msgs::SetIOResponse > SetIOResponsePtr;
typedef boost::shared_ptr< ::tm_msgs::SetIOResponse const> SetIOResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tm_msgs::SetIOResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tm_msgs::SetIOResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tm_msgs::SetIOResponse_<ContainerAllocator1> & lhs, const ::tm_msgs::SetIOResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tm_msgs::SetIOResponse_<ContainerAllocator1> & lhs, const ::tm_msgs::SetIOResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tm_msgs::SetIOResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tm_msgs::SetIOResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tm_msgs::SetIOResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::tm_msgs::SetIOResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tm_msgs/SetIOResponse";
  }

  static const char* value(const ::tm_msgs::SetIOResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#ok= set function status\n"
"bool ok\n"
"\n"
;
  }

  static const char* value(const ::tm_msgs::SetIOResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetIOResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tm_msgs::SetIOResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tm_msgs::SetIOResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TM_MSGS_MESSAGE_SETIORESPONSE_H
