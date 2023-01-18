// ROS headers
#include <ros/ros.h>
#include <std_msgs/String.h>

// std header
#include <sstream>
#include <cstdlib>
#include <string>
using namespace std;
// TM Driver header
#include "tm_msgs/SendScript.h"
#include "tm_msgs/SetEvent.h"

int main(int argc, char **argv)
{    
  double position0[6] = {-350.00,  150.00, 450.00, 180.00, 0.00, -90.00}; //中點
  double position1[6] = {-400.00,    0.00, 450.00, 180.00, 0.00, -90.00}; //左
  double position2[6] = {-400.00,  300.00, 450.00, 180.00, 0.00, -90.00};  //右
  double position3[6] = {-550.00,  150.00, 450.00, 180.00, 0.00, -90.00};  //前
  // Declare a float array to store the target coordinate
  // Line(”CAR”, var_Point1,100,200,50,false)

  // Line(”CAR”, 417.50,-122.30,343.90,180.00,0.00,90.00,100,200,50,false);
  
  // 動作部份
  ros::init(argc, argv, "demo_send_script");      
  ros::NodeHandle nh_demo; 
  ros::ServiceClient client = nh_demo.serviceClient<tm_msgs::SendScript>("tm_driver/send_script");
  tm_msgs::SendScript srv;
  std::string position_str;
  std::string cmd;

  // stop service setting
  ros::init(argc, argv, "demo_set_event");      
  ros::NodeHandle nh_demo_stop; 
  ros::ServiceClient client_stop = nh_demo_stop.serviceClient<tm_msgs::SetEvent>("tm_driver/set_event");
  tm_msgs::SetEvent srv_stop;
  

  // request 到左
  srv.request.id = "demo1";
  position_str = {};
  for(int i = 0; i < 6; i++)
  {
    position_str = position_str + to_string(position1[i]) + ",";
  }
  cmd = "Line(\"CAR\"," + position_str + "400,200,0,false)";
  srv.request.script = cmd;
  client.call(srv);
  sleep(5);

  
  // request 到中
  srv.request.id = "demo2";
  position_str = {};
  for(int i = 0; i < 6; i++)
  {
    position_str = position_str + to_string(position0[i]) + ",";
  } 
  cmd = "Line(\"CPR\"," + position_str + "70,200,0,false)";
  srv.request.script = cmd;
  client.call(srv);

  
  //Request 中斷
  // sleep(1);
  // srv_stop.request.func = tm_msgs::SetEvent::Request::STOP;
  // srv_stop.request.arg0 = 0;
  // srv_stop.request.arg1 = 0;
  // client_stop.call(srv_stop);

  // // request 到前
  // srv.request.id = "demo2";
  // position_str = {};
  // for(int i = 0; i < 6; i++)
  // {
  //   position_str = position_str + to_string(position3[i]) + ",";
  // } 
  // cmd = "Line(\"CPR\"," + position_str + "80,200,0,false)";
  // srv.request.script = cmd;
  // client.call(srv);







  //ROS_INFO_STREAM_NAMED("demo_sendscript", "shutdown.");
  return 0;

}
