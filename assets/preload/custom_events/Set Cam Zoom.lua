function onEvent(name,value1,value2)

    if name == "Set Cam Zoom" then

        if value2 == '' then
      	  setProperty("defaultCamZoom",value1)
	debugPrint(value2 )
	else
			setProperty('camGame.zoom', value1)
	end
     
    end

end
