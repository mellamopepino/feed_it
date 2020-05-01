require 'states/BaseState'
require 'Header'
require 'Player'
require 'FoodSpawner'
require 'Score'
require 'Stomach'
require 'CollisionsHandler'

PlayState = Class{__includes = BaseState}

function PlayState:init()
    self.player = Player()
    self.foods = FoodSpawner()
    self.score = Score()
    self.stomach = Stomach()
    self.collisionsHandler = CollisionsHandler(self.player, self.foods)
end

function PlayState:update(dt)
    self.foods:update(dt)
    self.player:update(dt)
    self.collisionsHandler:handleCollisions(dt, { self.score, self.stomach })
end

function PlayState:draw()
    Header:draw()
    self.player:draw()
    self.foods:draw()
    self.score:draw()
    self.stomach:draw()
end

