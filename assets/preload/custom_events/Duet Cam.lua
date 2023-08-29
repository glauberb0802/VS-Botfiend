function onEvent(name,value1,value2)

    if name == "Duet Cam" then

        if value1 == 'on' then
      	
		triggerEvent('Camera Follow Pos', getMidpointX("gf") + getProperty("gf.cameraPosition")[1], getMidpointY("gf") + getProperty("gf.cameraPosition")[2])
		
	elseif value1 == 'off' then
	
		if mustHitSection == true then
		triggerEvent('Camera Follow Pos', getMidpointX("boyfriend") - 100 + getProperty("boyfriend.cameraPosition")[1], getMidpointY("boyfriend") - 100 + getProperty("boyfriend.cameraPosition")[2])
		triggerEvent('Camera Follow Pos', '', '')
		elseif mustHitSection == false then
		triggerEvent('Camera Follow Pos', getMidpointX("dad") + 150 + getProperty("dad.cameraPosition")[1], getMidpointY("dad") - 100 + getProperty("dad.cameraPosition")[2])
        triggerEvent('Camera Follow Pos', '', '')		
	    end
     
        end

    end
end
