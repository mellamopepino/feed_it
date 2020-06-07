require 'src/states/BaseState'
require 'src/Menu'

TitleState = Class{__includes = BaseState}

function TitleState:init()
    local options = {
        {
            text = 'start',
            onSelect =  function () gStateMachine:change(STATE.PLAY) end,
        },
        {
            text = 'instructions',
            onSelect =  function () gStateMachine:change(STATE.PLAY) end,
        }
    }

    self.menu = Menu(options)
end

function TitleState:draw()
    love.graphics.setColor(WHITE)
    love.graphics.setFont(MEDIUM_FONT)
    love.graphics.printf(TITLE.TEXT, TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)

    self.menu:draw()
end

function TitleState:update(dt)
    self.menu:update(dt)
end
