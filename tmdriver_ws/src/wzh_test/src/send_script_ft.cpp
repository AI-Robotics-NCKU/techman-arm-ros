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

  std::string position_str0, position_str1;
  double position0[6] = {-400.00,  150.00, 450.00, 180.00, 0.00, -90.00}; //中點
  double position1[6] = {-400.00,    0.00, 450.00, 180.00, 0.00, -90.00}; //左
  int data = {};
  position_str0 = {};
  

  for(int i = 0; i < 6; i++)
  {
    position_str0 = position_str0 + to_string(position0[i]) + ",";
  } 
  position_str1 = {};
  for(int i = 0; i < 6; i++)
  {
    position_str1 = position_str1 + to_string(position1[i]) + ",";
  } 

  // 動作部份
  ros::init(argc, argv, "demo_send_script");      
  ros::NodeHandle nh_demo; 
  ros::ServiceClient client = nh_demo.serviceClient<tm_msgs::SendScript>("tm_driver/send_script");
  tm_msgs::SendScript srv;
  std::string cmd;
 

  // cmd = "int[] i = {0,1,2,3}\r\n"
  //       "Line(\"CPR\"," + position_str0 + "40,200,0,false)\r\n"
  //       "QueueTag(1)\r\n"
  //       "Line(\"CPR\"," + position_str1 + "40,200,0,false)\r\n"
  //       "QueueTag(1)\r\n";

  // cmd = "float[] force = FT["fts_AXIA"].ForceValue\r\n";


  srv.request.script = cmd;
  client.call(srv);
  // request 到左
  






  return 0;

}
