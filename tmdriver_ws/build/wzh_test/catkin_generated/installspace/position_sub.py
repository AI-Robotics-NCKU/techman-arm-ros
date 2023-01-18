
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
    print(position)

if __name__ == "__main__":
    
    # #1.建立excel檔
    # path = os.path.abspath(".")
    # wb = openpyxl.Workbook()    # 建立空白的 Excel 活頁簿物件
    # wb.save(path + "/src/wzh_test/position.xlsx")       # 儲存檔案

    #2.開啟excel檔
    path = os.path.abspath(".")
    wb = openpyxl.load_workbook(path + "/src/wzh_test/position.xlsx") 
    s1 = wb['Sheet'] 

    #1.初始化节点
    rospy.init_node("position_sub")
    #2.创建订阅者对象
    sub = rospy.Subscriber("feedback_states",FeedbackState,doFeedback,queue_size=10)
    rospy.spin() #4.循环
    wb.save(path + "/src/wzh_test/position.xlsx")