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


#include <ros/ros.h>
#include <std_msgs/Float32MultiArray.h>

#include<wzh_test/pose.h>


class MyNode {
private:
    ros::NodeHandle n;
    ros::Subscriber sub;
    ros::ServiceClient client;
    void callback(wzh_test::pose::ConstPtr& msg);

public:
    MyNode();
    void spin();
};

MyNode::MyNode() {
    sub = n.subscribe("desired_position_data", 1000, &MyNode::callback, this);
    client = n.serviceClient<tm_msgs::SendScript>("tm_driver/send_script");
}

void MyNode::callback(wzh_test::pose::ConstPtr &msg) {
    std::vector<double> array = msg->pose;
    // do something with the message
    // ...
    tm_msgs::SendScript srv;
    std::string cmd;
    // fill in the request data
    // ...
    std::string position_str;
    srv.request.id = "demo1";
    std::cout << "msg->data=" << msg->pose[0] << ", " << msg->pose[1] <<  ", " << msg->pose[2] << ", " <<  msg->pose[3] << ", " <<  msg->pose[4] << ", " <<  msg->pose[5] << std::endl;

}


void MyNode::spin() {
    ros::spin();
}


int main(int argc, char** argv) {
    ros::init(argc, argv, "my_node");
    MyNode node;
    node.spin();
    return 0;
}