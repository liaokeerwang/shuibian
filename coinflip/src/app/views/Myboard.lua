--
-- Author: li
-- Date: 2016-07-01 17:39:37
--

local Levels = import("..data.MyLevels")
local Coin   = import("..views.MyCoin")

-- local Board = class("Board", function()
--     return display.newNode()
-- end)

-- local NODE_PADDING   = 100
-- local NODE_ZORDER    = 0

-- local COIN_ZORDER    = 1000

-- function Board:ctor(levelData)
--     cc.GameObject.extend(self):addComponent("components.behavior.EventProtocol"):exportMethods()

--     self.batch = display.newNode()
--     self.batch:setPosition(display.cx, display.cy)
--     self:addChild(self.batch)

--     self.grid = clone(levelData.grid)
--     self.rows = levelData.rows
--     self.cols = levelData.cols
--     self.coins = {}
--     self.flipAnimationCount = 0

--     -- create board, place all coins
--     if self.cols >= 8 then
--         -- local NODE_PADDING   = 70
--         self.batch:setScale(640/self.cols/NODE_PADDING)
--         -- NODE_PADDING=NODE_PADDING*(6/self.cols)
-- 	    local offsetX = -math.floor(NODE_PADDING * self.cols / 2) - NODE_PADDING / 2
-- 	    local offsetY = -math.floor(NODE_PADDING * self.rows / 2) - NODE_PADDING / 2
--         -- Game_CELL_EIGHT_ADD_SCALE=8.0/self.cols
--         -- NODE_PADDING = 100*GAME_CELL_STAND_SCALE*Game_CELL_EIGHT_ADD_SCALE
--     	for row = 1, self.rows do
-- 	        local y = row * NODE_PADDING + offsetY
-- 	        for col = 1, self.cols do
-- 	            local x = col * NODE_PADDING + offsetX
-- 	            local nodeSprite = display.newSprite("#BoardNode.png", x, y)
-- 	            -- nodeSprite:setScale(0.7)
-- 	            self.batch:addChild(nodeSprite, NODE_ZORDER)

-- 	            local node = self.grid[row][col]
-- 	            if node ~= Levels.NODE_IS_EMPTY then
-- 	                local coin = Coin.new(node)
-- 	                coin:setPosition(x, y)
-- 	                -- coin:setScale(0.7)
-- 	                coin.row = row
-- 	                coin.col = col
-- 	                self.grid[row][col] = coin
-- 	                self.coins[#self.coins + 1] = coin
-- 	                self.batch:addChild(coin, COIN_ZORDER)
-- 	            end
-- 	        end
-- 	    end

--     else
--     	local offsetX = -math.floor(NODE_PADDING * self.cols / 2) - NODE_PADDING / 2
--     	local offsetY = -math.floor(NODE_PADDING * self.rows / 2) - NODE_PADDING / 2
--         -- Game_CELL_EIGHT_ADD_SCALE=1.0
--         -- NODE_PADDING = 100*GAME_CELL_STAND_SCALE
-- 	    for row = 1, self.rows do
-- 	        local y = row * NODE_PADDING + offsetY
-- 	        for col = 1, self.cols do
-- 	            local x = col * NODE_PADDING + offsetX
-- 	            local nodeSprite = display.newSprite("#BoardNode.png", x, y)
--                 -- nodeSprite:setScale(GAME_CELL_STAND_SCALE)
-- 	            self.batch:addChild(nodeSprite, NODE_ZORDER)

-- 	            local node = self.grid[row][col]
-- 	            if node ~= Levels.NODE_IS_EMPTY then
-- 	                local coin = Coin.new(node)
-- 	                coin:setPosition(x, y)
-- 	                coin.row = row
-- 	                coin.col = col
-- 	                self.grid[row][col] = coin
-- 	                self.coins[#self.coins + 1] = coin
-- 	                self.batch:addChild(coin, COIN_ZORDER)
-- 	            end
-- 	        end
-- 	    end
-- 	end

--     self:setNodeEventEnabled(true)
--     self:setTouchEnabled(true)
--     self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
--         return self:onTouch(event.name, event.x, event.y)
--     end)

--     self:checkAll()

-- end

-- function Board:checkLevelCompleted()
--     local count = 0
--     for _, coin in ipairs(self.coins) do
--         if coin.isWhite then count = count + 1 end
--     end
--     if count == #self.coins then
--         -- completed
--         self:setTouchEnabled(false)
--         self:dispatchEvent({name = "LEVEL_COMPLETED"})
--     end
-- end

-- function Board:getCoin(row, col)
--     if self.grid[row] then
--         return self.grid[row][col]
--     end
-- end

-- function Board:flipCoin(coin, includeNeighbour)
--     if not coin or coin == Levels.NODE_IS_EMPTY then return end

--     self.flipAnimationCount = self.flipAnimationCount + 1
--     coin:flip(function()
--         self.flipAnimationCount = self.flipAnimationCount - 1
--         self.batch:reorderChild(coin, COIN_ZORDER)
--         if self.flipAnimationCount == 0 then
--             self:checkLevelCompleted()
--         end
--     end)
--     if includeNeighbour then
--         audio.playSound(GAME_SFX.flipCoin)
--         self.batch:reorderChild(coin, COIN_ZORDER + 1)
--         self:performWithDelay(function()
--             self:flipCoin(self:getCoin(coin.row - 1, coin.col))
--             self:flipCoin(self:getCoin(coin.row + 1, coin.col))
--             self:flipCoin(self:getCoin(coin.row, coin.col - 1))
--             self:flipCoin(self:getCoin(coin.row, coin.col + 1))
--         end, 0.25)
--     end
-- end

-- function Board:onTouch(event, x, y)
--     if event ~= "began" or self.flipAnimationCount > 0 then return end

--     local padding = NODE_PADDING / 2
--     for _, coin in ipairs(self.coins) do
--         local cx, cy = coin:getPosition()
--         cx = cx + display.cx
--         cy = cy + display.cy
--         if x >= cx - padding
--             and x <= cx + padding
--             and y >= cy - padding
--             and y <= cy + padding then
--             -- self:flipCoin(coin, true)
--             break
--         end
--     end
-- end

-- function Board:checkAll()
--      local padding = 100 * 1 * 1.65
--     for _, coin in ipairs(self.coins) do
--         local cx, cy = coin:getPosition()
--         cx = cx + display.cx
--         cy = cy + display.cy
--         -- if x >= cx - padding and x <= cx + padding and y >= cy - padding and y <= cy + padding then
--             --print("x",cell.row,"y",cell.col,"type",cell.nodeType)
--             if cell then
--                 self:checkcell(coin)
--             end
--             -- break
--         -- end
--     end
--     self:changeSingedcoin()
-- end



-- function Board:checkcell(coin)
--     local listH = {}
--     listH [#listH + 1] = coin
--     local i=coin.col
--     --格子中左边对象是否相同的遍历
--     while i > 1 do
--         i = i -1
--         local coin_left = self:getCoin(coin.row,i)
--         if coin.nodeType == coin_left.nodeType then
--             listH [#listH + 1] = coin_left
--         else
--             break
--         end
--     end
--     --格子中右边对象是否相同的遍历
--     if coin.col ~= self.cols then
--         for j=coin.col+1 , self.cols do
--             local coin_right = self:getcoin(coin.row,j)
--             if coin.nodeType == coin_right.nodeType then
--                 listH [#listH + 1] = coin_right
--             else
--                 break
--             end
--         end
--     end
--     --目前的当前格子的左右待消除对象(连同自己)

--     --print(#listH)

--     if #listH < 3 then
--     else
--         -- print("find a 3 coup H cell")
--         for i,v in pairs(listH) do
--             v.isNeedClean = true
--         end

--     end
--     for i=2,#listH do
--         listH[i] = nil
--     end

--     --判断格子的上边的待消除对象

--     if coin.row ~= self.rows then
--         for j=coin.row+1 , self.rows do
--             local coin_up = self:getcoin(j,coin.col)
--             if coin.nodeType == coin_up.nodeType then
--                 listH [#listH + 1] = coin_up
--             else
--                 break
--             end
--         end
--     end

--     local i=coin.row

--     --格子中下面对象是否相同的遍历
--     while i > 1 do
--         i = i -1
--         local coin_down = self:getcoin(i,coin.col)
--         if coin.nodeType == coin_down.nodeType then
--             listH [#listH + 1] = coin_down
--         else
--             break
--         end
--     end

--     if #listH < 3 then
--         for i=2,#listH do
--             listH[i] = nil
--         end
--     else
--         for i,v in pairs(listH) do
--             v.isNeedClean = true
--         end
--     end

    
-- end
-- function Board:hasSameColor()
--         -- local a = {}
         
--         -- for i=1,row-2 do
--         --     for r=1,col-2 do
--         --     if self.grid[i][col].nodeType == self.grid[i+1][col].nodeType and self.grid[i][col].nodeType == self.grid[i+2][col].nodeType then
--         --         a[#a + 1] =newThing
--         --     end
--         --     if self.grid[row][r].nodeType == self.grid[row][r+1].nodeType and self.grid[row][r].nodeType == self.grid[row][r+2].nodeType then
--         --         a[#a + 1] =newThing
--         --     end
--         -- end
--     if x>row-1 then return false end
--     if y>col-1 then return false end
--     local horLen = 1
--     local verLen = 1
--     for i=x-1,1,-1 do
--        if self.grid[y][x].nodeType == self.grid[y][i].nodeType then 
--         horLen= horLen+1
--         else
--             break
--         end
--     end
--     for i=x+1,row do
--         if self.grid[y][x].nodeType == self.grid[y][i].nodeType then
--             horLen= horLen+1
--         else
--             break
--         end
--     end
--     if horLen>=3 then return true end

--      for i=y-1,1,-1 do
--        if self.grid[y][x].nodeType == self.grid[i][x].nodeType then 
--         verLen= verLen+1
--         else
--             break
--         end
--     end
--     for i=y+1,col do
--         if self.grid[y][x].nodeType == self.grid[i][x].nodeType then
--             verLen= verLen+1
--         else
--             break
--         end
--     end
--     if verLen>=3 then return true  end
--     return false
-- end

-- function Board:changeSingedcoin()
--     local sum = 0
--     for i,v in pairs(self.coins) do
--         if v.isNeedClean then
--             sum = sum +1
--             print("x",v.row,"y",v.col,"type",v.nodeType)
--             print("find it!!!!!!",sum )

--              local row = v.row
--             local col = v.col
--             local x = col * NODE_PADDING + self.offsetX
--             local y = (self.rows + 1)* NODE_PADDING + self.offsetY
--             for i,v in pairs(DropList) do
--                 if col == v.col then
--                     y = y + NODE_PADDING
--                 end
--             end

--             local cell = Cell.new()
--             DropList [#DropList + 1] = cell
--             cell.isNeedClean = false
--             cell:setPosition(x, y)
--             cell:setScale(0.75 * 1.0 * 1.65)
--             cell.row = self.rows
--             cell.col = col
--             self.grid[self.rows][col] = cell

--             self.cells[i] = cell
--             self.batch:addChild(cell, COIN_ZORDER)
--         end
--     end
-- end

-- function Board:onEnter()
--     self:setTouchEnabled(true)
-- end

-- function Board:onExit()
--     self:removeAllEventListeners()
-- end

-- return Board
local MyBoard = class("MyBoard", function()
    return display.newNode()
end)

local NODE_PADDING   = 100 * GAME_CELL_STAND_SCALE
local NODE_ZORDER    = 0

local COIN_ZORDER    = 1000

function MyBoard:ctor(levelData)
    math.randomseed(tostring(os.time()):reverse():sub(1, 6))

    cc.GameObject.extend(self):addComponent("components.behavior.EventProtocol"):exportMethods()

    self.batch = display.newNode()
    self.batch:setPosition(display.cx, display.cy)
    self:addChild(self.batch)

    self.grid = clone(levelData.grid)
    self.rows = levelData.rows
    self.cols = levelData.cols
    self.cells = {}
    self.flipAnimationCount = 0

    if self.rows <= 8 then
        GAME_CELL_EIGHT_ADD_SCALE = 1.0
        local offsetX = -math.floor(NODE_PADDING * self.cols / 2) - NODE_PADDING / 2
        local offsetY = -math.floor(NODE_PADDING * self.rows / 2) - NODE_PADDING / 2
        NODE_PADDING   = 100 * GAME_CELL_STAND_SCALE
        -- create board, place all cells
        for row = 1, self.rows do
            local y = row * NODE_PADDING + offsetY
            for col = 1, self.cols do
                local x = col * NODE_PADDING + offsetX
                local nodeSprite = display.newSprite("#BoardNode.png", x, y)
                nodeSprite:setScale(GAME_CELL_STAND_SCALE)
                self.batch:addChild(nodeSprite, NODE_ZORDER)

                local node = self.grid[row][col]
                if node ~= Levels.NODE_IS_EMPTY then
                    -- local cell = Cell.new(node)
                    local cell = Cell.new()
                    cell.isNeedClean = false
                    cell:setPosition(x, y)
                    cell:setScale(GAME_CELL_STAND_SCALE  * 1.65)
                    cell.row = row
                    cell.col = col
                    self.grid[row][col] = cell
                    self.cells[#self.cells + 1] = cell
                    self.batch:addChild(cell, COIN_ZORDER)
                end
            end
        end
    else
        local offsetX = -math.floor(NODE_PADDING * 8 / 2) - NODE_PADDING / 2
        local offsetY = -math.floor(NODE_PADDING * 8 / 2) - NODE_PADDING / 2
        GAME_CELL_EIGHT_ADD_SCALE = 8.0 / self.rows

        NODE_PADDING = 100 * GAME_CELL_STAND_SCALE * GAME_CELL_EIGHT_ADD_SCALE
        -- create board, place all cells
        for row = 1, self.rows do
            local y = row * NODE_PADDING + offsetY
            for col = 1, self.cols do
                local x = col * NODE_PADDING + offsetX
                local nodeSprite = display.newSprite("#BoardNode.png", x, y)
                nodeSprite:setScale(GAME_CELL_STAND_SCALE * GAME_CELL_EIGHT_ADD_SCALE)
                self.batch:addChild(nodeSprite, NODE_ZORDER)

                local node = self.grid[row][col]
                if node ~= Levels.NODE_IS_EMPTY then
                    -- local cell = Cell.new(node)
                    local cell = Cell.new()
                    cell.isNeedClean = false
                    cell:setPosition(x, y)
                    cell:setScale(GAME_CELL_STAND_SCALE * GAME_CELL_EIGHT_ADD_SCALE * 1.65)
                    cell.row = row
                    cell.col = col
                    self.grid[row][col] = cell
                    self.cells[#self.cells + 1] = cell
                    self.batch:addChild(cell, COIN_ZORDER)
                end
            end
        end
        GAME_CELL_EIGHT_ADD_SCALE = 1.0
        NODE_PADDING = 100 * GAME_CELL_STAND_SCALE
    end

    self:setNodeEventEnabled(true)
    self:setTouchEnabled(true)
    self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        return self:onTouch(event.name, event.x, event.y)
    end)
    self:checkAll()
end

function MyBoard:checkLevelCompleted()
    local count = 0
    for _, cell in ipairs(self.cells) do
        if cell.isWhite then count = count + 1 end
    end
    if count == #self.cells then
        -- completed
        self:setTouchEnabled(false)
        self:dispatchEvent({name = "LEVEL_COMPLETED"})
    end
end

function MyBoard:getCell(row, col)
    if self.grid[row] then
        return self.grid[row][col]
    end
end

function MyBoard:onTouch(event, x, y)
    return true
end

function MyBoard:checkAll()
    local padding = NODE_PADDING * GAME_CELL_EIGHT_ADD_SCALE * 1.65
    for _, cell in ipairs(self.cells) do
        local cx, cy = cell:getPosition()
        cx = cx + display.cx
        cy = cy + display.cy
        -- if x >= cx - padding and x <= cx + padding and y >= cy - padding and y <= cy + padding then
            --print("x",cell.row,"y",cell.col,"type",cell.nodeType)
            self:checkCell(cell)
            -- break
        -- end
    end
    self:changeSingedCell()
end



function MyBoard:checkCell(cell)
    local listH = {}
    listH [#listH + 1] = cell
    local i=cell.col
    --格子中左边对象是否相同的遍历
    while i > 1 do
        i = i -1
        local cell_left = self:getCell(cell.row,i)
        if cell.nodeType == cell_left.nodeType then
            listH [#listH + 1] = cell_left
        else
            break
        end
    end
    --格子中右边对象是否相同的遍历
    if cell.col ~= self.cols then
        for j=cell.col+1 , self.cols do
            local cell_right = self:getCell(cell.row,j)
            if cell.nodeType == cell_right.nodeType then
                listH [#listH + 1] = cell_right
            else
                break
            end
        end
    end
    --目前的当前格子的左右待消除对象(连同自己)

    --print(#listH)

    if #listH < 3 then
    else
        -- print("find a 3 coup H cell")
        for i,v in pairs(listH) do
            v.isNeedClean = true
        end

    end
    for i=2,#listH do
        listH[i] = nil
    end

    --判断格子的上边的待消除对象

    if cell.row ~= self.rows then
        for j=cell.row+1 , self.rows do
            local cell_up = self:getCell(j,cell.col)
            if cell.nodeType == cell_up.nodeType then
                listH [#listH + 1] = cell_up
            else
                break
            end
        end
    end

    local i=cell.row

    --格子中下面对象是否相同的遍历
    while i > 1 do
        i = i -1
        local cell_down = self:getCell(i,cell.col)
        if cell.nodeType == cell_down.nodeType then
            listH [#listH + 1] = cell_down
        else
            break
        end
    end

    if #listH < 3 then
        for i=2,#listH do
            listH[i] = nil
        end
    else
        for i,v in pairs(listH) do
            v.isNeedClean = true
        end
    end

    
end

function MyBoard:changeSingedCell()
    local sum = 0
    for i,v in pairs(self.cells) do
        if v.isNeedClean then
            sum = sum +1
            print("x",v.row,"y",v.col,"type",v.nodeType)
            print("find it!!!!!!",sum )
        end
    end
end

function MyBoard:onEnter()
    self:setTouchEnabled(true)
end

function MyBoard:onExit()
    self:removeAllEventListeners()
end

return MyBoard