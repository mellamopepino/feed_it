TitleState = Class{__includes = BaseState}

function TitleState:init() end

function TitleState:draw()
  love.graphics.setFont(MEDIUM_FONT)
  love.graphics.printf('Feed it', 0, 64, VIRTUAL_WIDTH, 'center')
end

