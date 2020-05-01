require 'states/BaseState'

GameoverState = Class{__includes = BaseState}

function GameoverState:enter(params)
  self.score = params.score
  self.state = params.state
end

function GameoverState:draw()
  local TITLE = GAMEOVER.TEXT
  local SCORE = GAMEOVER.SCORE

  love.graphics.setFont(TITLE.FONT)
  love.graphics.printf(TITLE[self.state], TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)
  love.graphics.setFont(SCORE.FONT)
  love.graphics.printf(SCORE.BEFORE .. self.score, SCORE.X, SCORE.Y, SCORE.LIMIT, SCORE.POSITION)
end
