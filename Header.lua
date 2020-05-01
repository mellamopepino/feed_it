Header = Class{}

-- It draws the header of the game (title and a divider)
function Header:draw()
    love.graphics.printf(HEADER_TITLE.TEXT, HEADER_TITLE.X, HEADER_TITLE.Y, HEADER_TITLE.LIMIT, HEADER_TITLE.POSITION)
    love.graphics.line(HEADER_DIVIDER_POINTS)
end
