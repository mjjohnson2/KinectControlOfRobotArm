function [ retVal ] = sendCmdA_H( cmd, read, s, val )
    Motors = ['A','B','C','D','E','F','G','H'] ;

    retVal = [] ;
    for i = 1:length(Motors)
        if (read == 1)
            retVal = [retVal sendCmd([cmd ',' Motors(i)],s)'] ;
        else
            sendCmd(cmd & ',' & Motors(i) & ',' & val(i),s)
            retVal = -1
        end
    end

end

