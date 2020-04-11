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
HEADER_WIDTH = VIRTUAL_WIDTH - H_PADDING
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

-- Player

PLAYER_SIDE = 8

PLAYER = {
    INIT_X = (VIRTUAL_WIDTH / 2) - (PLAYER_SIDE / 2),
    INIT_Y = VIRTUAL_HEIGHT - PLAYER_SIDE,
    INIT_DX = 200,
    WIDTH = PLAYER_SIDE,
    HEIGHT = PLAYER_SIDE,
}

-- Food

FOOD_SIDE = 4

FOOD = {
    INIT_X = love.math.random(H_PADDING, VIRTUAL_WIDTH - H_PADDING),
    INIT_Y = GAME_CONTAINER_TOP,
    INIT_DY = 100,
    WIDTH = FOOD_SIDE,
    HEIGHT = FOOD_SIDE,
}

-- Keys

KEYS = {
    RIGHT = 'd',
    LEFT = 'a',
    QUIT = 'escape',
}