// Generated by gencpp from file tm_msgs/SetIO.msg
// DO NOT EDIT!


#ifndef TM_MSGS_MESSAGE_SETIO_H
#define TM_MSGS_MESSAGE_SETIO_H

#include <ros/service_traits.h>


#include <tm_msgs/SetIORequest.h>
#include <tm_msgs/SetIOResponse.h>


namespace tm_msgs
{

struct SetIO
{

typedef SetIORequest Request;
typedef SetIOResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetIO
} // namespace tm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tm_msgs::SetIO > {
  static const char* value()
  {
    return "ee6cbf90dc535c1e6656dd67997a2cd6";
  }

  static const char* value(const ::tm_msgs::SetIO&) { return value(); }
};

template<>
struct DataType< ::tm_msgs::SetIO > {
  static const char* value()
  {
    return "tm_msgs/SetIO";
  }

  static const char* value(const ::tm_msgs::SetIO&) { return value(); }
};


// service_traits::MD5Sum< ::tm_msgs::SetIORequest> should match
// service_traits::MD5Sum< ::tm_msgs::SetIO >
template<>
struct MD5Sum< ::tm_msgs::SetIORequest>
{
  static const char* value()
  {
    return MD5Sum< ::tm_msgs::SetIO >::value();
  }
  static const char* value(const ::tm_msgs::SetIORequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tm_msgs::SetIORequest> should match
// service_traits::DataType< ::tm_msgs::SetIO >
template<>
struct DataType< ::tm_msgs::SetIORequest>
{
  static const char* value()
  {
    return DataType< ::tm_msgs::SetIO >::value();
  }
  static const char* value(const ::tm_msgs::SetIORequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tm_msgs::SetIOResponse> should match
// service_traits::MD5Sum< ::tm_msgs::SetIO >
template<>
struct MD5Sum< ::tm_msgs::SetIOResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tm_msgs::SetIO >::value();
  }
  static const char* value(const ::tm_msgs::SetIOResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tm_msgs::SetIOResponse> should match
// service_traits::DataType< ::tm_msgs::SetIO >
template<>
struct DataType< ::tm_msgs::SetIOResponse>
{
  static const char* value()
  {
    return DataType< ::tm_msgs::SetIO >::value();
  }
  static const char* value(const ::tm_msgs::SetIOResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TM_MSGS_MESSAGE_SETIO_H