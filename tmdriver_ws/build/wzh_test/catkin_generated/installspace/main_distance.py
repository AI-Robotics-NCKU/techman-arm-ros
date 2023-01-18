import cv2
import time
import numpy as np
import mediapipe as mp
from sys import exit
import rospy
from std_msgs.msg import String
import os
import sys

path = os.path.abspath(".")
sys.path.insert(0, path + "/src/wzh_test/scripts")
import realsense_depth2


# --------------------------------self definition

# -------------------------------- constant varaiable
drawTableOpen = 1 # 0/1: open/close draw
dc = realsense_depth2.DepthCamera()
face_landmarks_id_mp = [130,359,1,76,306,175] 


class FaceDetector():
    def __init__(self, minDetectionCon = 0.8 ):
        self.minDetectionCon = minDetectionCon
        self.mpFaceDetection = mp.solutions.face_detection
        self.faceDetection = self.mpFaceDetection.FaceDetection(self.minDetectionCon)

    def findFace(self, frame, draw = True):
        self.h, self.w, self.c = frame.shape
        self.imRGB = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        self.result = self.faceDetection.process(self.imRGB)
        self.bboxs = []
        if self.result.detections:
            for id,detection in enumerate(self.result.detections):
                self.bboxC = detection.location_data.relative_bounding_box
                self.bbox = int(self.bboxC.xmin * self.w), int(self.bboxC.ymin * self.h), \
                            int(self.bboxC.width * self.w), int(self.bboxC.height * self.h)
                self.bboxs.append([self.bbox, detection.score])

                cv2.rectangle(frame, self.bbox, (0, 255, 0), 2)
                cv2.putText(frame, f'{int(detection.score[0] * 100)}%', (self.bbox[0], self.bbox[1] - 20), cv2.FONT_HERSHEY_PLAIN, 1, (255, 0, 0), 2)
        return frame, self.bboxs


def main():
    # ros節點

    rospy.init_node("realsense_distance_pub")
    pub = rospy.Publisher("realsense_distance",String,queue_size=10)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        # use mediapipe
        detector = FaceDetector()
        
        while(True):
            ret, depth_frame, color_frame = dc.get_frame()
            start = time.time() 

            raw = color_frame
            size = color_frame.shape
            distance = 0

            if not ret:
                print("Can't receive frame (stream end?). Exiting ...")
                break
            
            
            frame, bboxs = detector.findFace(color_frame)
            
            # landmarks
            if bboxs: 
                points_x = int(bboxs[0][0][0] + bboxs[0][0][2]/2)
                points_y = int(bboxs[0][0][1] + bboxs[0][0][3]/2)
                
                if points_y < 0 or points_y > size[0]:
                    continue
                if points_x < 0 or points_x > size[1]:
                    continue

                distance = depth_frame[points_y][points_x]
    
                cv2.circle(color_frame, (int(bboxs[0][0][0] + bboxs[0][0][2]/2), int(bboxs[0][0][1] + bboxs[0][0][3]/2)), 5, (0, 255, 255), 3)
                cv2.circle(depth_frame, (points_x, points_y), 5, (0, 255, 255), 3)
                cv2.putText(color_frame, f'distance: {int(distance)}', (20, 70), cv2.FONT_HERSHEY_PLAIN, 3, (255, 0, 0), 2)


            # cv2.imshow('depth_frame', depth_frame)
            cv2.imshow('color_frame', color_frame)
            end = time.time()
            # print(format(end-start))
            # press q to leave
            if cv2.waitKey(1) == ord('q'):
                cv2.destroyAllWindows()
                break   

            pub.publish(str(distance)) #发布Topic
            rate.sleep() #确保Topic以我们设定的频率发布

    


##-----------------------------------------------------------------------------
if __name__=='__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass


# start = time.time() 
# end = time.time()
# print(format(end-start))