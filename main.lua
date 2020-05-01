--[[
    Feed it

    -- Main Program --

    Author: Delfina García Villamor
]]

push = require 'push'
Class = require 'class'

require 'StateMachine'
require 'states/BaseState'
require 'states/PlayState'
require 'states/TitleState'

require 'constants'
require 'Header'
require 'Player'
require 'FoodSpawner'
require 'Score'
require 'Stomach'
require 'CollisionsHandler'

function love.load()
    love.window.setTitle(TITLE.TEXT)

    math.randomseed(os.time())

    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.graphics.setFont(SMALL_FONT)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = true,
        resizable = false,
        vsync = true
    })

    gStateMachine = StateMachine {
      [STATE.TITLE] = function() return TitleState() end,
      [STATE.PLAY] = function() return PlayState() end,
    }
    gStateMachine:change(STATE.TITLE)

end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == KEYS.QUIT then
        love.event.quit()
    end
end

function love.draw()
    push:apply('start')

    gStateMachine:draw()

    push:apply('end')
end

function love.update(dt)
    gStateMachine:update(dt)
end
