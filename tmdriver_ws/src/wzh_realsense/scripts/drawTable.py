# -*- coding: utf-8 -*-
"""
Created on Thu Sep  8 13:21:53 2022

@author: wes
"""

# -*- coding: utf-8 -*-
"""
Created on Thu Sep  8 10:32:11 2022

@author: user
"""
#%%

import matplotlib.pyplot as plt    
import numpy as np
import time

class draw:
    def __init__(self):
        self.num = 0
        self.ax = list()
        self.rawAngle = np.zeros((1, 3))
        self.steadyAngle = np.zeros((1, 3))
        self.name = ['Pitch', 'Yaw', 'Roll'] 
        
        

    def display(self, raw_Angle, steady_Angle):
        raw_Angle = raw_Angle.reshape(1, 3)
        steady_Angle = steady_Angle.reshape(1, 3)
        # plt.ion()    # 開啟一個視窗進入交互模式，即時更新數據
        plt.rcParams['figure.figsize'] = (10, 10)        
        plt.rcParams['axes.unicode_minus'] = False
        plt.clf()    # 清除圖表，但保留視窗
        plt.suptitle("Raw Angle v.s. Steady Angle", fontsize=30)   # 大標題
        self.ax.append(self.num)      # 添加x座標
        
        if (self.num == 0):
            self.rawAngle = raw_Angle.astype(int)
            self.steadyAngle = steady_Angle.astype(int)
        else:
            self.rawAngle = np.append(self.rawAngle, raw_Angle.astype(int), axis=0)       # 添加rawAngle data
            self.steadyAngle = np.append(self.steadyAngle, steady_Angle.astype(int), axis=0)       # 添加steadyAngle data
        # print("self.rawAngle[:,0]",self.rawAngle[:,0])

        for i in range(3):
            agraphic=plt.subplot(3, 1, i+1)
            agraphic.set_title(self.name[i])     # 添加子標題
            agraphic.set_xlabel('Time',fontsize=10)    # 添加軸
            agraphic.set_ylabel('Degree',fontsize=10)    # 添加軸
            plt.plot(self.ax, self.rawAngle[:,i], 'g-', linewidth = 2, label='Raw') 
            plt.plot(self.ax, self.steadyAngle[:,i], 'r-', linewidth = 2, label='Stabilize') 
            plt.legend()     
        # plt.pause(0.01)   # 太快, plt來不及畫
        self.num = self.num + 1
        # plt.show()
        plt.savefig('Raw_v.s._stable2.png')
        
    def start(self, raw_Angle, steady_Angle):
        while True:
            self.display(raw_Angle, steady_Angle)
            time.sleep(1)
        
        
    # def stop(self):
        # plt.ioff()       # 关闭画图的窗口，即关闭交互模式
        # plt.show()       # 显示图片，防止闪退





def main():
    draw_A = draw()
    draw_A.display(np.array([10, 20, 30]), np.array([20, 30, 40]))
    draw_A.display(np.array([15, 25, 35]), np.array([15, 25, 35]))
    draw_A.display(np.array([20, 30, 40]), np.array([10, 20, 30]))
    # draw_A.stop()
        
        
if __name__ == '__main__':
    main()



