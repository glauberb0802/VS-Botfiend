--Credits to JasonTheOne as i used his xtracharacter script for a few parts
--This is a quick n dirty script sorry if it sucks lol if you want an extra character script go download one thats actually good lmao
local charspritesheet = 'characters/botfriend'
local pixel = false
local charScale = 1.0
local countdown = 0
local singDuration = 0.4
function onCreate()  
   --setting up the character

   makeAnimatedLuaSprite('MomChar', charspritesheet, getProperty('dad.x'), getProperty('dad.y'));
   setScrollFactor('MomChar', 1.0, 1.0);
   scaleObject('MomChar', charScale, charScale);
   addAnimationByPrefix('MomChar', 'Idle', 'danceleft', 24, false)
   addAnimationByPrefix('MomChar', '0', 'left', 24, false)
   addAnimationByPrefix('MomChar', '1', 'down', 24, false)
   addAnimationByPrefix('MomChar', '2', 'up', 24, false)
   addAnimationByPrefix('MomChar', '3', 'right', 24, false)
   addOffset('MomChar', 'Idle', 0, 0)
   addOffset('MomChar', '0', 47, -1)
   addOffset('MomChar', '1', -10, -42)
   addOffset('MomChar', '2', 27, -3)
   addOffset('MomChar', '3', -22, -12)
   
   if pixel == true then
   setProperty('MomChar.antialiasing', false);
   end
   
   setProperty('MomChar.x', getProperty('MomChar.x') + 163)
   setProperty('MomChar.y', getProperty('MomChar.y') + 280)
   
   addLuaSprite('MomChar', false);   
   setObjectOrder('MomChar', 1)
   setProperty('MomChar.alpha', 0);
end

function onCountdownTick(counter)
    if counter == 2 then
	playAnim('MomChar', 'Idle', false)
    elseif counter == 4 then
    countdown = countdown + 1
    end
end

function onUpdate(elapsed)
	-- Idle Anim shit
	if curBeat % 2 == 0 and countdown == 1 then 
	  if getProperty('MomChar' .. '.animation.curAnim.name') == 'Idle' then
	  playAnim('MomChar', 'Idle')
	  end
   end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'Trail Note' then
        setProperty('MomChar.alpha', 0.75);
	    playAnim('MomChar', direction, true)
		doTweenAlpha('Lol', 'MomChar', 0, 0.5, linear)
		runTimer('idletimer'.. 'MomChar' .. direction, singDuration)
	    elseif noteType == 'Trail Note Invisible' then
        setProperty('MomChar.alpha', 0.75);
	    playAnim('MomChar', direction, true)
	    doTweenAlpha('Lol', 'MomChar', 0, 0.5, linear)
		runTimer('idletimer'.. 'MomChar' .. direction, singDuration)
		end
    end

function onTimerCompleted(tag)
    if tag == "idletimer" .. 'MomChar' .."0" then
        if getProperty('MomChar' .. '.animation.curAnim.name') == "0" then
            playAnim('MomChar' , 'Idle')
        end
    end
    if tag == "idletimer" .. 'MomChar' .."1" then
        if getProperty('MomChar' .. '.animation.curAnim.name') == "1" then
            playAnim('MomChar' , 'Idle')
        end
    end
    if tag == "idletimer" .. 'MomChar' .."2" then
        if getProperty('MomChar' .. '.animation.curAnim.name') == "2" then
            playAnim('MomChar' , 'Idle')
        end
    end
    if tag == "idletimer" .. 'MomChar' .."3" then
        if getProperty('MomChar' .. '.animation.curAnim.name') == "3" then
            playAnim('MomChar' , 'Idle')
        end
    end
end