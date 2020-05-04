require 'src/Food'

FoodSpawner = Class{}

function FoodSpawner:getWaterRate()
    return love.math.random(FOOD_SPAWNER.WATER_MIN_RATE, FOOD_SPAWNER.WATER_MAX_RATE)
end

function FoodSpawner:init()
    self.foods = {Food(TYPE_FOOD)}
    self.rate = FOOD_SPAWNER.INIT_RATE
    self.spawnTimer = self.rate
    self.waterSpawnTimer = self:getWaterRate()
    self.rate_decrease = FOOD_SPAWNER.RATE_DECREASE
end

function FoodSpawner:draw()
    for i = 1, #self.foods do
        self.foods[i]:draw()
    end
end

function FoodSpawner:update(dt)
    self.waterSpawnTimer = self.waterSpawnTimer - dt
    if self.waterSpawnTimer <= 0 then
        table.insert(self.foods, Food(TYPE_WATER))
        self.waterSpawnTimer = self:getWaterRate()
    end

    self.spawnTimer = self.spawnTimer - dt
    if self.spawnTimer <= 0 then
        table.insert(self.foods, Food(TYPE_FOOD))
        self.spawnTimer = self.rate
    end

    for i = 1, #self.foods do
        self.foods[i]:update(dt)
    end
end

function FoodSpawner:getList()
    return self.foods
end

function FoodSpawner:updateList(newList)
    self.foods = newList
end
