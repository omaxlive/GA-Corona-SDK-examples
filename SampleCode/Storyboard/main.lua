---------------------------------------------------------------------------------
-- Game Analytics for Corona SDK: Storyboard example 
---------------------------------------------------------------------------------

local storyboard = require "storyboard"
local GA = require "plugin.gameanalytics"

---------------------------------------------------------------------------------
-- Setup storyboard
---------------------------------------------------------------------------------
storyboard.gotoScene( "scene1", "fade", 300 )

---------------------------------------------------------------------------------
-- Set Game Analytics properties and initialize it.
---------------------------------------------------------------------------------
-- Important notice: Initialization of Game Analytics should always happend after 
-- you setup storyboard and call storyboard.gotoScene
---------------------------------------------------------------------------------

GA.useStoryboard = true -- hook storyboard and fill in area parameter in GA events.
GA.submitStoryboardEvents = true -- submit scene changes and time spent on scenes.

GA.runInSimulator = true

GA.init ({
	game_key   = 'paste_your_game_key_here',
	secret_key = 'paste_your_secret_key_here',
	build_name = '1.0',
})
