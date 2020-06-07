Header = Class{}

-- It draws the header of the game (title and a divider)
function Header:draw()
    love.graphics.setColor(WHITE)
    love.graphics.printf(HEADER_TITLE.TEXT, HEADER_TITLE.X, HEADER_TITLE.Y, HEADER_TITLE.LIMIT, HEADER_TITLE.POSITION)
    love.graphics.setLineWidth(2)
    love.graphics.setColor(TRANSPARENT_WHITE)
    love.graphics.line(HEADER_DIVIDER_POINTS)
    love.graphics.setLineWidth(1)
end
