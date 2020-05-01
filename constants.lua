-- Window

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

-- Fonts

SMALL_FONT = love.graphics.newFont('font.ttf', 8)
MEDIUM_FONT = love.graphics.newFont('font.ttf', 16)
LARGE_FONT = love.graphics.newFont('font.ttf', 32)

--- Colors

WHITE = { 1, 1, 1, 1 }
LIGHT_BLUE = { 3/255, 219/255, 252/255, 1 }
RESET_COLOR = WHITE

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

HEADER_DIVIDER_POINTS = {
    H_PADDING, HEADER_HEIGHT,
    VIRTUAL_WIDTH - H_PADDING, HEADER_HEIGHT,
}

-- Game container

GAME_CONTAINER_TOP = HEADER_HEIGHT

-- Score

SCORE = {
    TEXT = 'Score: ',
    X = 0,
    Y = HEADER_TEXT_Y,
    LIMIT = HEADER_WIDTH,
    POSITION = 'right',
}

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

TYPE_FOOD = 'FOOD'
TYPE_WATER = 'WATER'

FOOD = {
    FOOD = {
        INIT_Y = GAME_CONTAINER_TOP,
        INIT_DY = 100,
        WIDTH = FOOD_SIDE,
        HEIGHT = FOOD_SIDE,
        LEVEL = 10,
        COLOR = WHITE,
    },
    WATER = {
        INIT_Y = GAME_CONTAINER_TOP,
        INIT_DY = 100,
        WIDTH = FOOD_SIDE,
        HEIGHT = FOOD_SIDE,
        LEVEL = -20,
        COLOR = LIGHT_BLUE,
    }
}

-- Food Spawner

FOOD_SPAWNER = {
    INIT_RATE = 2,
    RATE_DECREASE = 0.90,
    WATER_MIN_RATE = 4,
    WATER_MAX_RATE = 8,
}

-- Keys

KEYS = {
    RIGHT = 'd',
    LEFT = 'a',
    QUIT = 'escape',
}

-- Stomach level

BOX_PADDING = 2
BOX_WIDTH = 60
BOX_HEIGHT = 8

STOMACH = {
    CONTAINER_BOX = {
        X = H_PADDING,
        Y = HEADER_TEXT_Y,
        WIDTH = BOX_WIDTH,
        HEIGHT = BOX_HEIGHT,
    },
    LEVEL_BOX = {
        X = H_PADDING + BOX_PADDING/2,
        Y = HEADER_TEXT_Y + BOX_PADDING/2,
        WIDTH = BOX_WIDTH - BOX_PADDING,
        HEIGHT = BOX_HEIGHT - BOX_PADDING,
    },
    INIT_LEVEL = 0,
    MAX_LEVEL = 100,
    HUNGER_RATE = 3,
    HUNGER_LEVEL = -5,
}

-- States

STATE = {
    TITLE = 'title',
    PLAY = 'play',
    GAMEOVER = 'gameover',
}
