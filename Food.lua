Food = Class{}

function Food:init()
    self.x = FOOD.INIT_X
    self.y = FOOD.INIT_Y
    self.dy = FOOD.INIT_DY
    self.width = FOOD.WIDTH
    self.height = FOOD.HEIGHT
end

function Food:draw()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

function Food:update(dt)
    self.y = self.y + self.dy * dt
end
