-- pills
local pills = {}  
for i = 1, 80, 1 do
	pills[i] = display.newImage("images/pille.png")
	pills[i].x = 800 * i + math.random(750)
	pills[i].y = 200
	pills[i].name = "power_up"
	physics.addBody( pills[i], { density = 0.0, friction = 0.0, bounce = 0, radius = 15} )
	game.blocks:insert(pills[i])
end
-- trash cans
local trash = {}  
for i = 1, 50, 1 do
	trash[i] = display.newImage("images/trash.png")
	trash[i].x = 1000 * i + math.random(500)
	trash[i].y = game.groundLevel - 150
	trash[i].name = "dynamic"
	physics.addBody( trash[i], "dynamic", { density = 1.0, friction = 1.2, bounce = 0.1} )
	game.blocks:insert(trash[i])
end

-- lanterns
local lanterns = {}  
for i = 1, 10, 1 do
	lanterns[i] = display.newImage("images/laterne.png")
	lanterns[i].x = 4000 * i + math.random(250)
	lanterns[i].y = 40
	lanterns[i].name = "dynamic"
	physics.addBody( lanterns[i], "dynamic", { density = 1.0, friction = 0.9, bounce = 0.1} )
	game.blocks:insert(lanterns[i])
end

-- boxes
local boxes = {}  
for i = 1, 10, 1 do
	boxes[i] = display.newImage("images/karton.png")
	boxes[i].x = 2000 * i + math.random(250)
	boxes[i].y = 40
	boxes[i].name = "dynamic"
	physics.addBody( boxes[i], "dynamic", { density = 0.1, friction = 0.1, bounce = 0.3} )
	game.blocks:insert(boxes[i])
end