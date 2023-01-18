import math
import numpy as np

def rotationMatrixToEulerAngles(R) :
    sy = math.sqrt(R[2,1] * R[2,1] +  R[2,2] * R[2,2])
    singular = sy < 1e-6
    if  not singular :
        x = math.atan2(R[2,1] , R[2,2])
        y = math.atan2(-R[2,0], sy)
        z = math.atan2(R[1,0], R[0,0])
    # else :
    #     x = math.atan2(-R[1,2], R[1,1])
    #     y = math.atan2(-R[2,0], sy)
    #     z = 0
    if x>0:
        x=3.14-x
    else:
        x=-3.14-x
    return np.array([x, y, z])*(180/math.pi) #roll/yaw/pitch