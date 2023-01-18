// ROS headers
#include <ros/ros.h>
#include <std_msgs/String.h>

// std header
#include <sstream>
#include <cstdlib>
#include <unistd.h>
// TM Driver header
#include "tm_msgs/SetPositions.h"
#include "tm_msgs/SetEvent.h"



int main(int argc, char **argv)
{  
  // position 標準姿勢 -0.40 0.15 0.4 3.14 0 -1.57
  double position0[6] = {-0.4,  0.15, 0.45, 3.14, 0, -1.57}; //中點
  double position1[6] = {-0.4,  0.0, 0.45, 3.14, 0, -1.57}; //左
  double position2[6] = {-0.4,  0.3, 0.45, 3.14, 0, -1.57};  //右
  double position3[6] = {-0.55, 0.15, 0.45, 3.14, 0, -1.57};  //前
  // double position4[6] = {-0.25, 0.15, 0.45, 3.14, 0, -1.57};  //後
  // double position5[6] = {-0.4, 0.15, 0.55, 3.14, 0, -1.57};  //上
  // double position6[6] = {-0.4, 0.15, 0.35, 3.14, 0, -1.57};  //下

  // move service setting
  ros::init(argc, argv, "demo_set_positions");      
  ros::NodeHandle nh_demo_move; 
  ros::ServiceClient client_move = nh_demo_move.serviceClient<tm_msgs::SetPositions>("tm_driver/set_positions");
  tm_msgs::SetPositions srv_move;
  	
  // stop service setting
  ros::init(argc, argv, "demo_set_event");      
  ros::NodeHandle nh_demo_stop; 
  ros::ServiceClient client_stop = nh_demo_stop.serviceClient<tm_msgs::SetEvent>("tm_driver/set_event");
  tm_msgs::SetEvent srv_stop;
  
  //Request move 基礎設定 運動方式,速度等
  srv_move.request.motion_type = tm_msgs::SetPositions::Request::LINE_T;
  srv_move.request.velocity = 40;//m/s
  srv_move.request.acc_time = 0.5;
  srv_move.request.blend_percentage = 10;
  srv_move.request.fine_goal  = false;

  
  // request 回左
  srv_move.request.positions = {position1[0], position1[1], position1[2], position1[3], position1[4], position1[5]};
  client_move.call(srv_move);
  sleep(5);

  // request 往前
  srv_move.request.positions = {position3[0], position3[1], position3[2], position3[3], position3[4], position3[5]};
  client_move.call(srv_move);

  //Request 中斷
  srv_stop.request.func = tm_msgs::SetEvent::Request::STOP;
  srv_stop.request.arg0 = 0;
  srv_stop.request.arg1 = 0;
  client_stop.call(srv_stop);
  

  // request 往右
  srv_move.request.positions = {position2[0], position2[1], position2[2], position2[3], position2[4], position2[5]};
  client_move.call(srv_move);

 
  

  

 

  //ROS_INFO_STREAM_NAMED("SetPositions", "shutdown.");  	
  
}