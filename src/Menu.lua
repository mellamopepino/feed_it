Menu = Class{}

function Menu:init(options)
    self.options = options or {}
    self.selected = 1
end

function Menu:draw()
    love.graphics.setFont(MENU.FONT)

    for i = 1, #self.options do
        if self.selected == i then
            love.graphics.setColor(WHITE)
        else
            love.graphics.setColor(TRANSPARENT_WHITE)
        end

        love.graphics.printf(
            self.options[i].text,
            MENU.X,
            MENU.Y(i),
            MENU.LIMIT,
            MENU.POSITION
        )
    end
end

function Menu:update(dt)
    if love.keyboard.wasPressed(MENU.UP_KEY) then
        self.selected = self.selected - 1
        if(self.selected <= 0) then
            self.selected = 1
        end
    end

    if love.keyboard.wasPressed(MENU.DOWN_KEY) then
        self.selected = self.selected + 1
        if(self.selected > #self.options) then
            self.selected = #self.options
        end
    end

    if love.keyboard.wasPressed('space') then
        self.options[self.selected]:onSelect()
    end

end
