// ROS headers
#include <ros/ros.h>
#include <std_msgs/String.h>

// std header
#include <sstream>
#include <cstdlib>
#include <string>
#include <ctime>
#include <unistd.h>
#include "std_msgs/Float32MultiArray.h"
using namespace std;
// TM Driver header
#include "tm_msgs/SendScript.h"
#include "tm_msgs/SetEvent.h"

#include<wzh_test/pose.h>

ros::Subscriber sub;
ros::ServiceClient client;

int number = 0;

void callback(const wzh_test::pose::ConstPtr &msg)
{ 
  std::vector<double> array = msg->pose;
  tm_msgs::SendScript srv;
  std::string cmd;
  // fill in the request data
  // ...
  std::string position_str ={};
  srv.request.id = "demo1";
  for(int i = 0; i < 6; i++)
  {
    position_str = position_str + to_string(msg->pose[i]) + ",";
  }
  cmd = "Line(\"CPR\"," + position_str + "70,200,0,false)";

  number = number + 1;
  std::cout << number << std::endl;
  if (number > 40)
  {
    cmd = "Line(\"CPR\", -450.00,  150.00, 450.00, 180.00, 0.00, -90.00, 70, 200, 0, false)";
  }

  srv.request.script = cmd;
  std::cout << cmd << std::endl;
  client.call(srv);


}




int main(int argc, char **argv)
{
  

  ros::init(argc, argv, "my_node");
  ros::NodeHandle n;
  sub = n.subscribe("desired_position_data", 1000, callback);
  client = n.serviceClient<tm_msgs::SendScript>("tm_driver/send_script");

  ros::spin();

  


  return 0;
}