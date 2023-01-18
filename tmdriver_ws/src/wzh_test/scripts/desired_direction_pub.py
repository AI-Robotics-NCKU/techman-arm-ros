# 匯入必要套件
import rospy
from std_msgs.msg import String
from getkey import getkey
import threading
import time

user_input = " "

def input_thread():
    while True:
        global user_input
        user_input = getkey()

# creat input thread
input_thread = threading.Thread(target=input_thread)
input_thread.start()

rospy.init_node("desired_direction_pub")
pub = rospy.Publisher("desired_direction_data",String,queue_size=10)
rate = rospy.Rate(10) # 10hz = 100ms
while not rospy.is_shutdown(): 
    user_input = " "
    pub.publish(user_input) #发布Topic
    rate.sleep() #确保Topic以我们设定的频率发布




