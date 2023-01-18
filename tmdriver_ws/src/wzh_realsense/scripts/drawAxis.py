import cv2
import numpy as np

def drawAxis(rotation_vector, translation_vector, camera_matrix, dist_coeffs, image_points, frame):
    (nose_end_z, _) = cv2.projectPoints(np.array([(0.0, 0.0, 1000.0)]), rotation_vector, translation_vector, camera_matrix, dist_coeffs)
    (nose_end_y, _) = cv2.projectPoints(np.array([(0.0, 1000.0, 0.0)]), rotation_vector, translation_vector, camera_matrix, dist_coeffs)
    (nose_end_x, _) = cv2.projectPoints(np.array([(1000.0, 0.0, 0.0)]), rotation_vector, translation_vector, camera_matrix, dist_coeffs)
    p1 = ( int(image_points[0][0]), int(image_points[0][1]))
    pz = ( int(nose_end_z[0][0][0]), int(nose_end_z[0][0][1]))
    py = ( int(nose_end_y[0][0][0]), int(nose_end_y[0][0][1]))
    px = ( int(nose_end_x[0][0][0]), int(nose_end_x[0][0][1]))
    cv2.line(frame, p1, pz, (255,0,0), 2)
    cv2.line(frame, p1, py, (0,255,0), 2)
    cv2.line(frame, p1, px, (0,0,255), 2)