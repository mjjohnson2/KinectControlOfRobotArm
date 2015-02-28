function [ retVal ] = sendCmd( cmd, s)
    fprintf(s,cmd) ;
    pause(0.2) ;
    if (s.BytesAvailable ~= 0)
        retVal = fread(s,s.BytesAvailable) ;
    else
        retVal = -1 ;
    end

end

