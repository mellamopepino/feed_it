require 'states/BaseState'

GameoverState = Class{__includes = BaseState}

function GameoverState:enter(params)
  self.score = params.score
  self.state = params.state
end

function GameoverState:draw()
  love.graphics.setFont(LARGE_FONT)
  love.graphics.printf('Too much food!', 0, 64, VIRTUAL_WIDTH, 'center')
  love.graphics.setFont(MEDIUM_FONT)
  love.graphics.printf('Score: ' .. self.score, 0, 100, VIRTUAL_WIDTH, 'center')
end
