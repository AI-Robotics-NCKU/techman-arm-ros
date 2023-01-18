// ROS headers
#include <ros/ros.h>
#include <std_msgs/String.h>

// std header
#include <sstream>
#include <cstdlib>

// TM Driver header
#include "tm_msgs/SetPositions.h"

int main(int argc, char **argv)
{  
  // position 標準姿勢 -0.40 0.15 0.4 3.14 0 -1.57
  double position0[6] = {-0.4,  0.15, 0.45, 3.14, 0, -1.57}; //中點
  double position1[6] = {-0.4,  0.0, 0.45, 3.14, 0, -1.57}; //左
  double position2[6] = {-0.4,  0.3, 0.45, 3.14, 0, -1.57};  //右
  double position3[6] = {-0.55, 0.15, 0.45, 3.14, 0, -1.57};  //前
  double position4[6] = {-0.25, 0.15, 0.45, 3.14, 0, -1.57};  //後
  double position5[6] = {-0.4, 0.15, 0.55, 3.14, 0, -1.57};  //上
  double position6[6] = {-0.4, 0.15, 0.35, 3.14, 0, -1.57};  //下

  // service setting
  ros::init(argc, argv, "demo_set_positions");      
  ros::NodeHandle nh_demo; 
  ros::ServiceClient client = nh_demo.serviceClient<tm_msgs::SetPositions>("tm_driver/set_positions");
  tm_msgs::SetPositions srv;
  	
  //Request 回中點
  srv.request.motion_type = tm_msgs::SetPositions::Request::LINE_T;
  srv.request.positions = {position0[0], position0[1], position0[2], position0[3], position0[4], position0[5]};
  srv.request.velocity = 5;//m/s
  srv.request.acc_time = 0.5;
  srv.request.blend_percentage = 10;
  srv.request.fine_goal  = false;

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 2 左
  srv.request.positions = {position1[0], position1[1], position1[2], position1[3], position1[4], position1[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 3 右
  srv.request.positions = {position2[0], position2[1], position2[2], position2[3], position2[4], position2[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 4 回中點
  srv.request.positions = {position0[0], position0[1], position0[2], position0[3], position0[4], position0[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 5 前
  srv.request.positions = {position3[0], position3[1], position3[2], position3[3], position3[4], position3[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 6 後
  srv.request.positions = {position4[0], position4[1], position4[2], position4[3], position4[4], position4[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 7 回中點
  srv.request.positions = {position0[0], position0[1], position0[2], position0[3], position0[4], position0[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 8 上
  srv.request.positions = {position5[0], position5[1], position5[2], position5[3], position5[4], position5[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 9 下
  srv.request.positions = {position6[0], position6[1], position6[2], position6[3], position6[4], position6[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }

  //Request 10 回中點
  srv.request.positions = {position0[0], position0[1], position0[2], position0[3], position0[4], position0[5]};

  if (client.call(srv))                             
  {
    if (srv.response.ok) ROS_INFO_STREAM("SetPositions to robot");
    else ROS_WARN_STREAM("SetPositions to robot , but response not yet ok ");
  }
  else
  {
    ROS_ERROR_STREAM("Error SetPositions to robot");
    return 1;
  }




  //ROS_INFO_STREAM_NAMED("SetPositions", "shutdown.");  	
  return 0;
}