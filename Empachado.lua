Empachado = Class{}

function Empachado:init()
    self.level = EMPACHADO.INIT_LEVEL
    self.maxLevel = EMPACHADO.MAX_LEVEL
    self.containerBox = EMPACHADO.CONTAINER_BOX
    self.levelBox = EMPACHADO.LEVEL_BOX
end

function Empachado:draw()
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
