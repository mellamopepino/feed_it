Food = Class{}

function Food:init(type)
    self.x = love.math.random(H_PADDING, VIRTUAL_WIDTH - H_PADDING)
    self.y = FOOD[type].INIT_Y
    self.dy = FOOD[type].INIT_DY
    self.width = FOOD[type].WIDTH
    self.height = FOOD[type].HEIGHT
    self.level = FOOD[type].LEVEL
    self.color = FOOD[type].COLOR
end

function Food:draw()
    love.graphics.setColor(self.color)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
    love.graphics.setColor(RESET_COLOR)
end

function Food:update(dt)
    self.y = self.y + self.dy * dt
end

function Food:getTotal()
    return self.level
end
