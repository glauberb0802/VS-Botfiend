function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Trail Note' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			setPropertyFromGroup('unspawnNotes', i, 'copyAlpha', false);
			setPropertyFromGroup('unspawnNotes', i, 'alpha', 0.5);
	--debugPrint('Script started!')
        end
    end  
end