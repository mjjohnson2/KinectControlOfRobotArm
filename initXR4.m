function [ s ] = initXR4()
    
    s = serial('COM1','BAUD',9600,'DataBits',7,'StopBits',2,'Parity','odd');            % Create serial object (PORT Dependent)
    fopen(s) ;                                  % Open the serial port for r/w

    if (s.BytesAvailable ~= 0)
        temp = fread(s,s.BytesAvailable) ; %Read out anything left in the buffer
    end
    sendCmd('TH',s) ; % Host Mode
    sendCmd('HH',s) ; % Hard Home
    waitXR4(s) ;
end

