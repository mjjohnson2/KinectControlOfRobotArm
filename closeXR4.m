function closeXR4( s )
    fclose(s);                                  % Close the serial port
    delete(s);                                  % Delete the serial object
end

