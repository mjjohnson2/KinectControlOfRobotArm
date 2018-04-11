# KinectControlOfRobotArm

## Kinect: Controlling a Rhino XR-4 Robotic Arm

### For more detailed instructions and more information please visit:

http://openscholarship.wustl.edu/wushta_spr2013/173/

http://ese.wustl.edu/ContentFiles/Research/UndergraduateResearch/CompletedProjects/WebPages/fl12/MattJohnson/index.html

http://kinectkontrol.weebly.com/index.html

### Necessary Hardware:

1. Rhino XR-4 Robotic Arm 

2. Mark IV Controller (connected to a PC via an RS-232C interface)


### Necessary Software: 

1. Windows 7 32/64 bit (64 bit is preferred) or later

2. MatLab R2011b or later.

  Available from: http://www.mathworks.com/
        
3. CMEX Compiler: Microsoft Visual Studio 2010 Express Edition (VC++)

  Available from: http://www.microsoft.com/visualstudio/eng/downloads#d-2010-express

4. OpenNI 

  Available from http://www.openni.org/Downloads/OpenNIModules.aspx
  
  Select, download, and install: OpenNI Binaries-Stable-OpenNI Stable Build for Windows Development Edition and select your system (32 bit or 64 bit)  
  
  Select, download, and install: OpenNI Compliant Middleware Binaries-Stable-PrimeSense NITE Stable Build for Windows and select your system (32 or 64 bit)
  
  Select, download, and install: OpenNI Compliant Hardware Binaries-Stable-PrimeSensor Module Stable Build for Windows and select your system (32 or 64 bit)
        
5. Simulink Support for Kinect

  Available from MatLab File Exchange (Courtesy of Takashi Chikamasa): http://www.mathworks.com/matlabcentral/fileexchange/32318

### Initial Setup:

1. Configure CMEX Compiler in MatLab

  Type mex-setup in the command prompt of MatLab to select the compiler configuration and select Microsoft Visual Studio 2010 Express Edition as the compiler using the on screen instructions. More information on mex can be obtained from: http://www.mathworks.com/help/matlab/ref/mex.html

2. Install Simulink Support for Kinect
        Reboot PC
        Unzip the Simulink Support Folder and save it to a directory of your choosing
        Open and Run slkinect/setup_openni.m
        If everything is installed correctly, a CMEX file (sfun_nid.mexw32) should be created.
3. Experiment with the different demo models in the slkinect/Samples directory. 
        Please note that the Kinect Microphone Array and the Sensor Angle demos do not work with the OpenNI SDK, but will not be needed.

4. Download the provided Matlab files to the following directory, where the Simulink Support for Kinect was installed or add       this folder to the path: slkinect/Samples/win



### Kinect Files: 

#### markerlocator.mdl
The file is a Simulink model, which can be easily rebuilt. It should be noted that within the TransformCoordinates function, there exist three equations. Each equation pertains to the transformation, translation, and scaling of the Kinect coordinate axis to the XR-4 coordinate axis specific to my setup. These equations are based on very specific information regarding the layout of the Kinect and the XR-4 and are further explained here: http://kinectkontrol.weebly.com/kinectrhino.html


### Rhino XR-4 Function Files

#### main.m
This file is the main script, main.m script. It was written to reach, grab, and pick up the object. Then place it back down, return to the base, and then prompt the user if they would like to continue with another run.

#### The following files can be utilized to write a new main method:

### initxr4.m

This file initializes the connection between the computer and the Rhino XR-4 Robotic arm and saves the serial connection as the variable 's'. It contains the information needed to initiate the serial connection. This file also assumes that the serial COM1 is used, if you are not using COM1 change it to the right serial port.

#### movexyzat.m

This file moves the XR-4 gripper to the specified location (x,y,z) in mm in relation to the origin of the Rhino XR-4. The 'a' refers to the angle of the gripper in relation to the Z-axis of the XR-4 coordinate system and the 't' refers to angle of the gripper in relation o the X-axis of the XR-4 coordinate system. 

#### sendcmd.m

This file sends commands to the XR-4. These commands were obtained from the XR-4 manual. Some commands include 'TH' which commands the XR-4 to go into Host mode, to allow it to be controlled from the computer and 'HH' which tells the XR-4 to go into hard-home. Hard-home allows the XR-4 to start from a more accurate reference. 

#### waitxr4.m

This file tells the XR-4 to wait for a specified amount of time.

#### closexr4.m

This file is necessary to close and delete the serial port connection. 





