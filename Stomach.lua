Stomach = Class{}

function Stomach:init()
    self.level = STOMACH.INIT_LEVEL
    self.maxLevel = STOMACH.MAX_LEVEL
    self.containerBox = STOMACH.CONTAINER_BOX
    self.levelBox = STOMACH.LEVEL_BOX
    self.hungerRate = STOMACH.HUNGER_RATE
    self.hungerTimer = STOMACH.HUNGER_RATE
    self.hungerLevel = STOMACH.HUNGER_LEVEL
    self.state = STOMACH.STATE.INIT
end

function Stomach:draw()
    love.graphics.rectangle(
        'line',
        self.containerBox.X,
        self.containerBox.Y,
        self.containerBox.WIDTH,
        self.containerBox.HEIGHT
    )
    love.graphics.rectangle(
        'fill',
        self.levelBox.X,
        self.levelBox.Y,
        self.levelBox.WIDTH * (self.level / self.maxLevel),
        self.levelBox.HEIGHT
    )
end

function Stomach:update(dt, collisions)
    self.level = self.level + collisions.total

    self.hungerTimer = self.hungerTimer - dt
    if self.hungerTimer <= 0 then
        self.level = self.level + self.hungerLevel
        self.hungerTimer = self.hungerRate
    end

    if(self.level < 0) then
      self.state = STOMACH.STATE.EMPTY
    elseif(self.level >= self.maxLevel) then 
      self.state = STOMACH.STATE.FULL
    end
end

function Stomach:isDead()
  return self.state ~= STOMACH.STATE.INIT
end
