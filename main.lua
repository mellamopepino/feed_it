--[[
    Feed it

    -- Main Program --

    Author: Delfina García Villamor
]]

push = require 'lib/push'
Class = require 'lib/class'

require 'src/StateMachine'
require 'src/states/PlayState'
require 'src/states/TitleState'
require 'src/states/GameoverState'

require 'src/constants'

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
      [STATE.GAMEOVER] = function() return GameoverState() end,
    }
    gStateMachine:change(STATE.TITLE)

    love.keyboard.keysPressed = {}

end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    love.keyboard.keysPressed[key] = true

    if key == KEYS.QUIT then
        love.event.quit()
    end
end

function love.keyboard.wasPressed(key)
  return love.keyboard.keysPressed[key]
end

function love.draw()
    push:apply('start')

    gStateMachine:draw()

    push:apply('end')
end

function love.update(dt)
    gStateMachine:update(dt)

    love.keyboard.keysPressed = {}
end
