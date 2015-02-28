function moveXYZAT( s,x,y,z,a,t)
% T is the angle of the gripper relative to the X-Axis
% A is the angle of the gripper relative to the Z-Axis
    str = sprintf('PX,X,%6.2f',x) ;
    sendCmd(str,s) ;
    str = sprintf('PX,Y,%6.2f',y) ;
    sendCmd(str,s) ;
    str = sprintf('PX,Z,%6.2f',z) ;
    sendCmd(str,s) ;
    str = sprintf('PX,A,%6.2f',a) ;
    sendCmd(str,s) ;
    str = sprintf('PX,T,%6.2f',t) ;
    sendCmd(str,s) ;
    sendCmd('MX',s) ;
    waitXR4(s) ;
end

