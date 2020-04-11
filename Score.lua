Score = Class{}

function Score:init()
    self.score = 0
end

function Score:update(foods, player)
    self.score = self.score + foods:collisions(player)
end

function Score:getScore()
    return self.score
end