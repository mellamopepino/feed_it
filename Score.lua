Score = Class{}

function Score:init()
    self.score = 0
end

function Score:update(dt, collisions)
    self.score = self.score + collisions.count
end

function Score:getScore()
    return self.score
end