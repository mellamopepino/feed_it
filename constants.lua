-- Window

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

-- Fonts

SMALL_FONT = love.graphics.newFont('font.ttf', 8)
MEDIUM_FONT = love.graphics.newFont('font.ttf', 16)
LARGE_FONT = love.graphics.newFont('font.ttf', 32)

-- Header

H_PADDING = 30
HEADER_TEXT_Y = 15
HEADER_WIDTH = VIRTUAL_WIDTH - HEADER_H_PADDING
HEADER_HEIGHT = 30

TITLE = {
    TEXT = 'Feed it! U^I^U',
    X = H_PADDING,
    Y = HEADER_TEXT_Y,
    LIMIT = HEADER_WIDTH,
    POSITION = 'center',
}

SCORE = {
    TEXT = 'Score: ',
    X = 0,
    Y = HEADER_TEXT_Y,
    LIMIT = HEADER_WIDTH,
    POSITION = 'right',
}

HEADER_DIVIDER_POINTS = {
    H_PADDING, HEADER_HEIGHT,
    VIRTUAL_WIDTH - H_PADDING, HEADER_HEIGHT,
}

-- Game container

GAME_CONTAINER_TOP = HEADER_HEIGHT
