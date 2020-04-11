Header = Class{}

-- It draws the header of the game (title, actual score and a divider)
function Header:draw(score)
    love.graphics.printf(TITLE.TEXT, TITLE.X, TITLE.Y, TITLE.LIMIT, TITLE.POSITION)
    love.graphics.printf(SCORE.TEXT .. score, SCORE.X, SCORE.Y, SCORE.LIMIT, SCORE.POSITION)
    love.graphics.line(HEADER_DIVIDER_POINTS)
end