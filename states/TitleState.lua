require 'states/BaseState'

TitleState = Class{__includes = BaseState}

function TitleState:init() end

function TitleState:draw()
  love.graphics.setFont(MEDIUM_FONT)
  love.graphics.printf(TITLE.TEXT, TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)
  love.graphics.setFont(SMALL_FONT)
  local START = TITLE_OPTION.START
  love.graphics.printf('>', START.X, START.Y, START.LIMIT-35, START.POSITION)
  love.graphics.printf(START.TEXT, START.X, START.Y, START.LIMIT, START.POSITION)
end

function TitleState:update(dt)
  if love.keyboard.wasPressed('space') or love.keyboard.wasPressed('return') then
    gStateMachine:change(STATE.PLAY)
  end
end
