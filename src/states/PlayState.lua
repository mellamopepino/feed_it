require 'src/states/BaseState'
require 'src/Header'
require 'src/Player'
require 'src/FoodSpawner'
require 'src/Score'
require 'src/Stomach'
require 'src/CollisionsHandler'

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

    if(self.stomach:isDead()) then
      gStateMachine:change(STATE.GAMEOVER, {
        score = self.score.score,
        state = self.stomach.state,
      })
    end
end

function PlayState:draw()
    Header:draw()
    self.player:draw()
    self.foods:draw()
    self.score:draw()
    self.stomach:draw()
end

