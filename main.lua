--[[
    Feed it

    -- Main Program --

    Author: Delfina García Villamor
]]

push = require 'push'
class = require 'class'
require 'constants'

function love.load()
    love.window.setTitle(TITLE)

    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.graphics.setFont(SMALL_FONT)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = true,
        resizable = false,
        vsync = true
    })
end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    push:apply('start')

    love.graphics.printf(TITLE, 0, 20, VIRTUAL_WIDTH, 'center')

    push:apply('end')
end
