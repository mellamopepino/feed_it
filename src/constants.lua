-- Window

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 497
VIRTUAL_HEIGHT = 280

-- Fonts

SMALL_FONT_SIZE = 8 * math.ceil((VIRTUAL_WIDTH / VIRTUAL_HEIGHT))
MEDIUM_FONT_SIZE = 16 * math.ceil((VIRTUAL_WIDTH / VIRTUAL_HEIGHT))
LARGE_FONT_SIZE = 24 * math.ceil((VIRTUAL_WIDTH / VIRTUAL_HEIGHT))

SMALL_FONT = love.graphics.newFont('fonts/font.ttf', SMALL_FONT_SIZE)
MEDIUM_FONT = love.graphics.newFont('fonts/font.ttf', MEDIUM_FONT_SIZE)
LARGE_FONT = love.graphics.newFont('fonts/font.ttf', LARGE_FONT_SIZE)

--- Colors

WHITE = { 1, 1, 1, 1 }
TRANSPARENT_WHITE = { 1, 1, 1, 0.8 }
LIGHT_BLUE = { 3/255, 219/255, 252/255, 1 }
RESET_COLOR = WHITE

-- Title Screen

TITLE = {
    TEXT = 'Feed it! U^I^U',
    X = 0,
    Y = (VIRTUAL_HEIGHT / 4),
    LIMIT = VIRTUAL_WIDTH,
    POSITION = 'center',
}

-- Header

H_PADDING = 30
HEADER_TEXT_Y = 15
HEADER_WIDTH = VIRTUAL_WIDTH - H_PADDING
HEADER_HEIGHT = (HEADER_TEXT_Y * 2) + SMALL_FONT_SIZE

HEADER_TITLE = {
    TEXT = TITLE.TEXT,
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

PLAYER_SIDE = SMALL_FONT_SIZE

PLAYER = {
    INIT_X = (VIRTUAL_WIDTH / 2) - (PLAYER_SIDE / 2),
    INIT_Y = VIRTUAL_HEIGHT - PLAYER_SIDE,
    INIT_DX = VIRTUAL_WIDTH * (3/4),
    WIDTH = PLAYER_SIDE,
    HEIGHT = PLAYER_SIDE,
}

-- Food

FOOD_SIDE = SMALL_FONT_SIZE / 2

TYPE_FOOD = 'FOOD'
TYPE_WATER = 'WATER'

FOOD = {
    FOOD = {
        INIT_Y = GAME_CONTAINER_TOP,
        INIT_DY = VIRTUAL_HEIGHT / 2,
        WIDTH = FOOD_SIDE,
        HEIGHT = FOOD_SIDE,
        LEVEL = 10,
        COLOR = WHITE,
    },
    WATER = {
        INIT_Y = GAME_CONTAINER_TOP,
        INIT_DY = VIRTUAL_HEIGHT / 2,
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

BOX_PADDING = SMALL_FONT_SIZE / 8
BOX_WIDTH = SMALL_FONT_SIZE * (15/2)
BOX_HEIGHT = SMALL_FONT_SIZE

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
    STATE = {
        INIT = 'INIT',
        EMPTY = 'EMPTY',
        FULL = 'FULL',
    }
}

-- Gomeover

GAMEOVER = {
    TEXT = {
        FONT = LARGE_FONT,
        FULL = 'Too much food!',
        EMPTY = 'Too few food!',
        INIT = 'Whatever',
        X = 0,
        Y = VIRTUAL_HEIGHT / 8,
        LIMIT = VIRTUAL_WIDTH,
        POSITION = 'center',
    },
    SCORE = {
        FONT = MEDIUM_FONT,
        BEFORE = 'Score: ',
        X = 0,
        Y = VIRTUAL_HEIGHT / 3,
        LIMIT = VIRTUAL_WIDTH,
        POSITION = 'center',
    },
    PUFU = {
        IMAGE = 'images/pufu/sorprise-pufu.png',
        X = VIRTUAL_WIDTH - SMALL_FONT_SIZE,
        Y = VIRTUAL_HEIGHT - SMALL_FONT_SIZE,
    },
}

-- States

STATE = {
    TITLE = 'title',
    PLAY = 'play',
    GAMEOVER = 'gameover',
}

-- Menu

MENU = {
    FONT = SMALL_FONT,
    X = 0,
    Y = function (i)
            return VIRTUAL_HEIGHT / 2 + (i-1)*SMALL_FONT_SIZE
        end,
    LIMIT = VIRTUAL_WIDTH,
    POSITION = 'center',
    DOWN_KEY = 'down',
    UP_KEY = 'up',
}

