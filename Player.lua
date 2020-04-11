Player = Class{}

function Player:init()
    self.x = PLAYER.INIT_X
    self.y = PLAYER.INIT_Y
    self.dx = PLAYER.DX
    self.width = PLAYER.WIDTH
    self.height = PLAYER.HEIGHT
end

function Player:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
