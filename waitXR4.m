function waitXR4( s )
    retVal = sendCmd('SA',s) ;
    while ~((length(retVal) == 2) && (retVal(1) == 48))
        retVal = sendCmd('SA',s) ;
    end        

end

