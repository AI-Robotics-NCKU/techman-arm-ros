
"""
    订阅方:
"""
import rospy
from tm_msgs.msg import FeedbackState
import openpyxl
import os
import sys

def doFeedback(v): 
    position = list(v.tool_pose)
    s1.append(position) 
    # print(position)

if __name__ == "__main__":
    print("start")
    #1.開啟excel檔
    wb = openpyxl.Workbook()    # 建立空白的 Excel 活頁簿物件
    s1 = wb['Sheet'] 
    #2.初始化节点
    rospy.init_node("position_sub")
    #3.创建订阅者对象
    sub = rospy.Subscriber("feedback_states",FeedbackState,doFeedback,queue_size=10)
    rospy.spin() #循环
    #4.結束
    # path = os.path.abspath(".") # rosrun 路徑
    path = "/home/leo/tmdriver_ws" # roslaunch 路徑
    wb.save(path + "/src/wzh_test/position.xlsx")

 
   
