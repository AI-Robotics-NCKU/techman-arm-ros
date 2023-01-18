# 匯入必要套件
import rospy
from wzh_test.msg import pose
import numpy as np
from getkey import getkey
import threading
import os

user_input = "5"
def input_thread():
    while True:
        global user_input
        user_input = getkey()

def cleanup():
    os.system("stty echo")

# creat input thread
rospy.on_shutdown(cleanup)
try:
    input_thread = threading.Thread(target=input_thread)
    input_thread.daemon = True
    input_thread.start()

    # ros 節點
    position = np.array([-350.00,  150.00, 450.00, 180.00, 0.00, -90.00], dtype=float) #中點
    rospy.init_node("desired_position_pub")
    pub = rospy.Publisher("desired_position_data",pose,queue_size=10)
    rate = rospy.Rate(8)
    msg = pose()
    while not rospy.is_shutdown():   
        if user_input == "5":
            position = position
        elif user_input == "1":
            position[0] = position[0] - 1
        elif user_input == "7":
            position[0] = position[0] + 1
        elif user_input == "2":
            position[1] = position[1] - 1
        elif user_input == "8":
            position[1] = position[1] + 1
        elif user_input == "3":
            position[2] = position[2] - 1
        elif user_input == "9":
            position[2] = position[2] + 1

        msg.pose = position
        pub.publish(msg) #发布Topic
        rate.sleep() #确保Topic以我们设定的频率发布
except rospy.ROSInterruptException:
    pass