# Stereo Vision-Based 3D Object Localization for Robotic Manipulation

A vision pipeline for estimating **3D object position** using monocular and stereo camera setups, integrated with robotic simulation.

---

## 🎯 Objective
To detect objects in the camera frame and estimate their **3D position in space**, enabling:
- Robot reachability analysis
- Torque estimation for manipulation
- Vision-driven control logic

---

## 👁️ System Pipeline
1. Image acquisition
2. Camera calibration
3. Pinhole camera modeling
4. Object detection
5. Depth estimation (monocular & stereo)
6. 3D reconstruction
7. Transformation into robot base frame

---

## 🧠 Key Features
- Monocular 3D estimation using known object geometry
- Stereo disparity-based depth estimation
- Camera-to-link frame transformations
- Integration with robotic arm kinematics
- MATLAB-based visualization and plotting

---

## 🛠️ Tools Used
- MATLAB
- Image Processing Toolbox
- Computer Vision Toolbox

---

## 📌 Why This Project Matters
Shows ability to:
- Bridge **perception and robotics**
- Work with real camera parameters
- Build end-to-end pipelines from raw data to control inputs
