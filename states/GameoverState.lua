require 'states/BaseState'

GameoverState = Class{__includes = BaseState}

function GameoverState:enter(params)
  self.score = params.score
  self.state = params.state
end

function GameoverState:draw()
  local TITLE = GAMEOVER.TEXT
  local SCORE = GAMEOVER.SCORE
  local START = TITLE_OPTION.START

  love.graphics.setFont(TITLE.FONT)
  love.graphics.printf(TITLE[self.state], TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)
  love.graphics.setFont(SCORE.FONT)
  love.graphics.printf(SCORE.BEFORE .. self.score, SCORE.X, SCORE.Y, SCORE.LIMIT, SCORE.POSITION)

  love.graphics.setFont(SMALL_FONT)
  love.graphics.printf('>', START.X, START.Y + 30, START.LIMIT-35, START.POSITION)
  love.graphics.printf(START.TEXT, START.X, START.Y + 30, START.LIMIT, START.POSITION)
end

function GameoverState:update()
  if love.keyboard.wasPressed('space') or love.keyboard.wasPressed('return') then
    gStateMachine:change(STATE.PLAY)
  end
end
