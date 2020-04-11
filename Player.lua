Player = Class{}

function Player:init()
    self.x = PLAYER.INIT_X
    self.y = PLAYER.INIT_Y
    self.dx = 0
    self.width = PLAYER.WIDTH
    self.height = PLAYER.HEIGHT
end

function Player:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

function Player:handle_move()
    if love.keyboard.isDown(KEYS.RIGHT) then
        self.dx = PLAYER.INIT_DX
    elseif love.keyboard.isDown(KEYS.LEFT) then
        self.dx = -PLAYER.INIT_DX
    else
        self.dx = 0
    end
end

function Player:update(dt)
    self:handle_move()
    self.x = self.x + self.dx * dt
end

function Player:collides(object)
    if self.x > object.x + object.width or object.x > self.x + self.width then
        return false
    end

    if self.y > object.y + object.height or object.y > self.y + self.height then
        return false
    end 

    return true
end
