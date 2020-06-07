Score = Class{}

function Score:init()
    self.score = 0
end

function Score:draw()
    love.graphics.setColor(WHITE)
    love.graphics.printf(SCORE.TEXT .. self.score, SCORE.X, SCORE.Y, SCORE.LIMIT, SCORE.POSITION)
end

function Score:update(dt, collisions)
    self.score = self.score + collisions.count
end
