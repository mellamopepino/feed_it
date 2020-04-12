CollisionsHandler = Class{}

function CollisionsHandler:init(object, listHandler)
    self.object = object
    self.listHandler = listHandler
    self.list = self.listHandler:getList()
end

function CollisionsHandler:collides(firstObject, secondObject)
    if (firstObject.x > secondObject.x + secondObject.width) then
        return false
    end

    if (secondObject.x > firstObject.x + firstObject.width) then
        return false
    end

    if (firstObject.y > secondObject.y + secondObject.height) then
        return false
    end

    if (secondObject.y > firstObject.y + firstObject.height) then
        return false
    end

    return true
end

function CollisionsHandler:getCollisions()
    local collisions = {
        total = 0,
        count = 0,
    }
    local newList = {}
    for i = 1, #self.list do
        if self:collides(self.object, self.list[i]) then
            collisions.count = collisions.count + 1
            collisions.total = collisions.total + self.list[i]:getTotal()
        else
            table.insert(newList, self.list[i])
        end
    end
    self.listHandler:updateList(newList)
    self.list = self.listHandler:getList()
    return collisions
end

function CollisionsHandler:handleCollisions(dt, updateList)
    local collisions = self:getCollisions()
    for i = 1, #updateList do
        updateList[i]:update(dt, collisions)
    end
end
