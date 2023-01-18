// ROS headers
#include <ros/ros.h>
#include <std_msgs/String.h>

// std header
#include <sstream>
#include <cstdlib>
#include <string>
#include <ctime>
#include <unistd.h>

using namespace std;
// TM Driver header
#include "tm_msgs/SendScript.h"
#include "tm_msgs/SetEvent.h"

int main(int argc, char **argv)
{    
  clock_t t1, t2;
  double position0[6] = {-350.00,  150.00, 450.00, 180.00, 0.00, -90.00}; //中點
  double position1[6] = {-350.00,    0.00, 450.00, 180.00, 0.00, -90.00}; //左
  double position2[6] = {-350.00,  300.00, 450.00, 180.00, 0.00, -90.00};  //右
  double position3[6] = {-450.00,  150.00, 450.00, 180.00, 0.00, -90.00};  //前

  // double positions[10][6] = {
  //                           {-400.00,     0.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,    30.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,    60.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,    90.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,   120.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,   150.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,   180.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,   210.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,   240.00, 450.00, 180.00, 0.00, -90.00},
  //                           {-400.00,   270.00, 450.00, 180.00, 0.00, -90.00},           
  //                           }; //中點

  const int len = 20;
  double positions[len][6] = {0}; 
  for(int i = 0; i < 10; i++) {
        positions[i][0] = -350; 
        positions[i][1] = (i + 1) * 15; 
        positions[i][2] = 450; 
        positions[i][3] = 180; 
        positions[i][4] = 0; 
        positions[i][5] = -90; 
  } //{-400.00,  150.00, 450.00, 180.00, 0.00, -90.00}

  for(int i = 10; i < 20; i++) {
        positions[i][0] = -350 - (i + 1) * 10; 
        positions[i][1] = 150; 
        positions[i][2] = 450; 
        positions[i][3] = 180; 
        positions[i][4] = 0; 
        positions[i][5] = -90; 
  } //{-500.00,  150.00, 450.00, 180.00, 0.00, -90.00}
  
  // Declare a float array to store the target coordinate
  // Line(”CAR”, var_Point1,100,200,50,false)

  // Line(”CAR”, 417.50,-122.30,343.90,180.00,0.00,90.00,100,200,50,false);
  
  // 動作部份
  ros::init(argc, argv, "demo_send_script");      
  ros::NodeHandle nh_demo_move; 
  ros::ServiceClient client_move = nh_demo_move.serviceClient<tm_msgs::SendScript>("tm_driver/send_script");
  tm_msgs::SendScript srv_move;
  std::string position_str;
  std::string cmd;

  // // stop service setting
  // ros::init(argc, argv, "demo_set_event");      
  // ros::NodeHandle nh_demo_stop; 
  // ros::ServiceClient client_stop = nh_demo_stop.serviceClient<tm_msgs::SetEvent>("tm_driver/set_event");
  // tm_msgs::SetEvent srv_stop;
  

  // request 到左
  srv_move.request.id = "demo1";
  position_str = {};
  for(int i = 0; i < 6; i++)
  {
    position_str = position_str + to_string(position1[i]) + ",";
  }
  cmd = "Line(\"CPR\"," + position_str + "30,200,0,false)";
  srv_move.request.script = cmd;
  client_move.call(srv_move);
  sleep(5);


  
  //連續點位
  for( int i=0 ; i<len ; i=i+1 )
  {
    //Request 中斷
    // srv_stop.request.func = tm_msgs::SetEvent::Request::STOP;
    // srv_stop.request.arg0 = 0;
    // srv_stop.request.arg1 = 0;
    // client_stop.call(srv_stop);

    position_str = {};
    for(int j = 0; j < 6; j++)
    {
      position_str = position_str + to_string(positions[i][j]) + ",";
    }
    cmd = "Line(\"CPR\"," + position_str + "10,200,0,false)";
    srv_move.request.script = cmd;
    client_move.call(srv_move);
    t1 = clock();
    usleep(100*1000);
    t2 = clock();
    cout << (t2 - t1)/(double)CLOCKS_PER_SEC << endl;
  }
  
  





  //ROS_INFO_STREAM_NAMED("demo_sendscript", "shutdown.");
  return 0;

}
