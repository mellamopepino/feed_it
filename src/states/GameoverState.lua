require 'src/states/BaseState'
require 'src/Menu'

GameoverState = Class{__includes = BaseState}

function GameoverState:init()
    local options = {
        {
            text = 'start',
            onSelect =  function () gStateMachine:change(STATE.BEFORE_PLAY) end,
        },
        {
            text = 'menu',
            onSelect =  function () gStateMachine:change(STATE.TITLE) end,
        },
    }

    self.menu = Menu(options)
    self.image = love.graphics.newImage(GAMEOVER.PUFU.IMAGE)
end

function GameoverState:enter(params)
    self.score = params.score
    self.state = params.state
end

function GameoverState:draw()
    local TITLE = GAMEOVER.TEXT
    local SCORE = GAMEOVER.SCORE
    local PUFU = GAMEOVER.PUFU

    love.graphics.setColor(WHITE)
    love.graphics.setFont(TITLE.FONT)
    love.graphics.printf(TITLE[self.state], TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)

    love.graphics.setColor(WHITE)
    love.graphics.setFont(SCORE.FONT)
    love.graphics.printf(SCORE.BEFORE .. self.score, SCORE.X, SCORE.Y, SCORE.LIMIT, SCORE.POSITION)

    self.menu:draw()

    love.graphics.setColor(WHITE)
    width, height = self.image:getDimensions()
    love.graphics.draw(self.image, PUFU.X - width , PUFU.Y - height)
end

function GameoverState:update(dt)
    self.menu:update(dt)
end
