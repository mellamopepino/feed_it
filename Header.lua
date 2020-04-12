Header = Class{}

-- It draws the header of the game (title and a divider)
function Header:draw()
    love.graphics.printf(TITLE.TEXT, TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)
    love.graphics.line(HEADER_DIVIDER_POINTS)
end