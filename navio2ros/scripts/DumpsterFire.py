#!/usr/bin/env python

"""
Created on Mon Sep 30 11:35:36 2019

@author: Cody Smith
"""

import math as math
import rospy
import numpy as np
 

from navio2ros.msg import Vehicle
from navio2ros.msg import IMU
from navio2ros.msg import Angular

veh = Vehicle()

def callback_imu(data):
    global veh
    veh.imu.accelerometer.x = data.accelerometer.x
    veh.imu.accelerometer.y = data.accelerometer.y
    veh.imu.accelerometer.z = data.accelerometer.z
    veh.imu.gyroscope.x = data.gyroscope.x
    veh.imu.gyroscope.y = data.gyroscope.y
    veh.imu.gyroscope.z = data.gyroscope.z
    veh.imu.magnetometer.x = data.magnetometer.x
    veh.imu.magnetometer.y = data.magnetometer.y
    veh.imu.magnetometer.z = data.magnetometer.z
    
message_name = '/imumpupub'
sub = rospy.Subscriber(message_name, IMU,callback_imu)

rospy.init_node ('angle_calc', anonymous = True)

pub = rospy.Publisher('/TrashCan',Angular,queue_size = 10)

rate = rospy.Rate(100)

gyro_x = [0,0,0]
gyro_y = [0,0,0]
gyro_z = [0,0,0]

accel_theta_1 = [0,0,0]
gyro_theta_1 = [0,0,0]
accel_theta_2 = [0,0,0]
gyro_theta_2 = [0,0,0]

now = rospy.get_time()
time = [0,0]

##Initializing Variables for Filtering 
fc = 1 #Cutoff frequency determined through the application of FFT
fs = 100 #Sampling Frequency

#
alpha = np.tan((np.pi*fc)/fs)
D = (alpha**2)+(np.sqrt(2)*alpha)+1
a1 = (2*((alpha**2)-1))/D
a2 = ((alpha**2)-(np.sqrt(2)*alpha)+1)/D
b0 = (alpha**2)/D
b1 = 2*b0
b2 = b0

bh0 = 1/D
bh1 = -2/D
bh2 = bh0

   
filtered_pitch_accel = [0,0,0]
filtered_roll_accel = [0,0,0]

filtered_pitch_gyro = [0,0,0]
filtered_roll_gyro = [0,0,0]

combined_filtered_pitch = 0
combined_filtered_roll = 0

    
    #This is where all the stff that loops at 100hz goes
while not rospy.is_shutdown():
    
    time[0] = time[1]
    time[1] =rospy.get_time() - now
    
    accel_x = -veh.imu.accelerometer.x
    accel_y = -veh.imu.accelerometer.y
    accel_z = -veh.imu.accelerometer.z 
    
    gyro_x[0] = gyro_x[1]
    gyro_x[1] = gyro_x[2]
    gyro_x[2] = veh.imu.gyroscope.x * (180/math.pi)
    
    gyro_y[0] = gyro_y[1]
    gyro_y[1] = gyro_y[2]
    gyro_y[2] = veh.imu.gyroscope.y * (180/math.pi)
    
    gyro_z[0] = gyro_z[1]
    gyro_z[1] = gyro_z[2]
    gyro_z[2] = veh.imu.gyroscope.z * (180/math.pi)
    
    accel_theta_1[0] = accel_theta_1[1]
    accel_theta_1[1] = accel_theta_1[2]
    
    accel_theta_2[0] = accel_theta_2[1]
    accel_theta_2[1] = accel_theta_2[2]
    
    gyro_theta_1[0] = gyro_theta_1[1]
    gyro_theta_1[1] = gyro_theta_1[2]
    
    gyro_theta_2[0] = gyro_theta_2[1]
    gyro_theta_2[1] = gyro_theta_2[2]
    
    filtered_pitch_gyro[0] = filtered_pitch_gyro[1]
    filtered_pitch_gyro[1] = filtered_pitch_gyro[2]

    filtered_pitch_accel[0] = filtered_pitch_accel[1]
    filtered_pitch_accel[1] = filtered_pitch_accel[2]

    filtered_roll_accel[0] = filtered_roll_accel[1]
    filtered_roll_accel[1] = filtered_roll_accel[2]

    filtered_roll_gyro[0] = filtered_roll_gyro[1]
    filtered_roll_gyro[1] = filtered_roll_gyro[2]
   
    #Accelerometer Roll
    accel_theta_1[2] = math.atan2(accel_y, accel_z)*180/math.pi
    #accel_theta_1[2] = np.rad2deg(accel_theta_1[2])
    
    #Gyro Roll
    gyro_theta_1[2] = gyro_theta_1[1] + ((time[1] - time[0])*((gyro_x[2] + gyro_x[1])/2))  

    #Accelerometer Pitch
    accel_theta_2[2] = math.atan2(-accel_x, accel_z)
    accel_theta_2[2] = np.rad2deg(accel_theta_2[2])
    
    #Gyro Pitch
    gyro_theta_2[2] = gyro_theta_2[1] + ((time[1] - time[0])*((gyro_y[2]+gyro_y[1])/2)) 
    
#####################################################################
#Applying a low pass filter to the pitch angles
    
    #filtered_pitch_accel[2] = accel_theta_2[2]####shouldn't need this statement
     
    filtered_pitch_accel[2] = (accel_theta_2[2]*b0)+(accel_theta_2[1]*b1)+(accel_theta_2[0]*b2)-(filtered_pitch_accel[1]*a1)-(filtered_pitch_accel[0]*a2)

#####################################################################
#Applying a low pass filter to the roll angles
        
    filtered_roll_accel[2] = (accel_theta_1[2]*b0)+(accel_theta_1[1]*b1)+(accel_theta_1[0]*b2)-(filtered_roll_accel[1]*a1)-(filtered_roll_accel[0]*a2)

#####################################################################
#Applying a high pass filter to the pitch angles    
    
    filtered_pitch_gyro[2] = (gyro_theta_2[2]*bh0)+(gyro_theta_2[1]*bh1)+(gyro_theta_2[0]*bh2)-(filtered_pitch_gyro[1]*a1)-(filtered_pitch_gyro[0]*a2)
    
#####################################################################
#Applying a high pass filter to the roll angles
        
    filtered_roll_gyro[2] = (gyro_theta_1[2]*bh0)+(gyro_theta_1[1]*bh1)+(gyro_theta_1[0]*bh2)-(filtered_roll_gyro[1]*a1)-(filtered_roll_gyro[0]*a2)
    
#####################################################################
    
    combined_filtered_pitch = filtered_pitch_accel[2] + filtered_pitch_gyro[2]
    
    combined_filtered_roll = filtered_roll_accel[2] + filtered_roll_gyro[2]
  
    
	####Seocnd part of publishing, just copy and paste
    Ang = Angular() #name the message type
    Ang.roll = combined_filtered_roll #tell what its going to output to roll:
    Ang.pitch = combined_filtered_pitch #tell what its going to output to roll:
    pub.publish(Ang) #publish it all in a nice little packet
	#if you want to look at this more you can look at the file in catkin_ws/src/navio2ros/msg/Angular.msg
