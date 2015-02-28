% Configure serial port and move to Hard Home (0,99.22,321.47,0,0)
s = initXR4 ; 
for i = 1:2

    gripper(0,s) ;
    moveXYZAT(s,100,200,400,60,60) ;
    gripper(1,s) ;

    pause(5) ;

    gripper(0,s) ;
    moveXYZAT(s,0,100,300,0,0) ;
    gripper(1,s) ;

    pause(5) ;
end
gripper(0,s) ;
closeXR4(s) ;

    

