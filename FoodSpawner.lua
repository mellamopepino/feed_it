require 'Food'

FoodSpawner = Class{}

function FoodSpawner:init()
    self.foods = {Food()}
    self.rate = FOOD_SPAWNER.INIT_RATE
    self.spawnTimer = self.rate
    self.rate_decrease = FOOD_SPAWNER.RATE_DECREASE
end

function FoodSpawner:draw()
    for i = 1, #self.foods do
        self.foods[i]:draw()
    end
end

function FoodSpawner:update(dt)
    self.spawnTimer = self.spawnTimer - dt
    if self.spawnTimer <= 0 then
        table.insert(self.foods, Food())
        self.spawnTimer = self.rate * self.rate_decrease
    end
    for i = 1, #self.foods do
        self.foods[i]:update(dt)
    end
end

function FoodSpawner:collisions(player)
    local totalCollisions = 0
    local newFoods = {}
    for i = 1, #self.foods do
        if player:collides(self.foods[i]) then
            totalCollisions = totalCollisions + 1
        else
            table.insert(newFoods, self.foods[i])
        end
    end
    self.foods = newFoods
    return totalCollisions
end