--[[
    Feed it

    -- Main Program --

    Author: Delfina García Villamor
]]

push = require 'push'
Class = require 'class'
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

    player = Player()
    foods = FoodSpawner()
    score = Score()
    stomach = Stomach()
    collisionsHandler = CollisionsHandler(player, foods)
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

    Header:draw()
    player:draw()
    foods:draw()
    score:draw()
    stomach:draw()

    push:apply('end')
end

function love.update(dt)
    foods:update(dt)
    player:update(dt)
    collisionsHandler:handleCollisions(dt, { score, stomach })
end
