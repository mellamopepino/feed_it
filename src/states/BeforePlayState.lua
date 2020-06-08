require 'src/states/BaseState'
require 'src/states/PlayState'

BeforePlayState = Class{__includes = BaseState}

function BeforePlayState:init()
    self.playState = PlayState()
    self.keyA = love.graphics.newImage(IMAGES.KEY('A'))
    self.keyD = love.graphics.newImage(IMAGES.KEY('D'))
    self.selectKey = peachy.new(
        IMAGES.SELECT_KEY.JSON,
        love.graphics.newImage(IMAGES.SELECT_KEY.PNG),
        IMAGES.SELECT_KEY.DEFAULT_TAG
    )
end

function BeforePlayState:draw()
    self.playState:draw()
    love.graphics.setColor(WHITE)
    love.graphics.setFont(SMALL_FONT)
    love.graphics.printf(
        BEFORE_PLAY.TITLE.TEXT,
        BEFORE_PLAY.TITLE.X,
        BEFORE_PLAY.TITLE.Y,
        BEFORE_PLAY.TITLE.LIMIT,
        BEFORE_PLAY.TITLE.POSITION
    )
    self.selectKey:draw(
        math.ceil((BEFORE_PLAY.BEFORE_PLAYER.X(2)) - 4),
        math.ceil((BEFORE_PLAY.BEFORE_PLAYER.Y) - 3)
    )
    love.graphics.draw(
        self.keyA,
        BEFORE_PLAY.BEFORE_PLAYER.X(2),
        BEFORE_PLAY.BEFORE_PLAYER.Y
    )
    love.graphics.printf(
        '<-',
        0,
        BEFORE_PLAY.BEFORE_PLAYER.Y,
        BEFORE_PLAY.BEFORE_PLAYER.X(3),
        'right'
    )
    self.selectKey:draw(
        math.ceil((BEFORE_PLAY.AFTER_PLAYER.X(2)) -4),
        math.ceil((BEFORE_PLAY.AFTER_PLAYER.Y) - 3)
    )
    love.graphics.draw(
        self.keyD,
        BEFORE_PLAY.AFTER_PLAYER.X(2),
        BEFORE_PLAY.AFTER_PLAYER.Y
    )
    love.graphics.printf(
        '->',
        0,
        BEFORE_PLAY.AFTER_PLAYER.Y,
        BEFORE_PLAY.AFTER_PLAYER.X(5),
        'right'
    )
end

function BeforePlayState:update(dt)
    self.selectKey:update(dt)
    if love.keyboard.wasPressed('a') or love.keyboard.wasPressed('d') then
        gStateMachine:change(STATE.PLAY)
    end
end
