
"""
    订阅方:
"""
import rospy
from wzh_realsense.msg import vision
count = 0
def doVision(v):
    rospy.loginfo("接收到的攝影機的信息:")
    rospy.loginfo("姿態:%d, %d, %d",v.pitch, v.yaw, v.roll)
    rospy.loginfo("距離:%d", v.distance)

if __name__ == "__main__":
    #1.初始化节点
    rospy.init_node("realsense_sub")
    #2.创建订阅者对象
    sub = rospy.Subscriber("realsense_data",vision,doVision,queue_size=10)
    rospy.spin() #4.循环