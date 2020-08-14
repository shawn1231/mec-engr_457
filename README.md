## mec-engr_457
*This repository is provided as a framework for the course MEC-ENGR 00457 taught at the University of Missouri - Kansas City.*

### Brief Introduction
MEC-ENGR 00457 Mechatronics System Design is a course offered at the University of Missouri - Kansas City.  Students enrolled in this course are tasked with developing a control system and learning to fly a quadrotor; skills which they must demonstrate during the final exam in the form of a flight demonstration.

At the beginning of the class students are given the code contained in this repository and a collection of quadrotor parts.  Their objective is to assemble the quadrotor and write all of the software necessary to complete the demonstration flight at the end of the course.  The goal of the provided code is to provide a basic framework for development including exposing raw sensor information and giving examples which students can borrow from as they develop more complex code for their own projects.

### autophatros ROS Package

The autophatros ROS package provides support for the Auto pHAT board for the Raspberry Pi which is made by Sparkfun.

The code provided here exposes important sensor information and provides interfaces for interacting with different types of actuators.

### me457common ROS Package

Common messages which are shared by various autopilot hats have been moved to the me457common ROS package. These messages were previously contained within the navio2ros package before support for other boards was added.

### navio2ros ROS Package

The navio2ros ROS package provides support for the Navio2 autopilot hat for the Raspberry Pi which is made by Emlid.

In the past, a similar framework was provided which was based on the manufacturer provided examples [Navio2 Docs](https://docs.emlid.com/navio2/).  New for Fall 2019, the code framework has been updated to utilize ROS.  This new framework is based on an old branch of the repo at this link [https://github.com/emlid/Navio2](https://github.com/emlid/Navio2).

The new ROS based interface is intended to provide a more modular code base which can be used more effectively in research as well as teaching applications.  In addition, the student interaction with the code is greatly simplified which should allow students to spend more time developing code to solve interesting problems and less time stuck trying to comprehend a large and difficult to understand code base.
