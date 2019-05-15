-- Welcome to your new Castle project!
-- https://castle.games/get-started
-- Castle uses Love2D 11.1 for rendering and input: https://love2d.org/
-- See here for some useful Love2D documentation:
-- https://love2d-community.github.io/love-api/

local total_time_elapsed = 0
function love.load()
 font = love.graphics.newFont("8-BIT WONDER.ttf", 15)
 text = love.graphics.newText(font, "WELCOME TO YOUR ADVENTURE")
 text2 = love.graphics.newText(font, "PRESS E TO BEGIN")
 textholder = "Holding!"
end


function love.draw()
  love.graphics.draw(text, 0, 200)
  love.graphics.draw(text2,0,300)
if(love.keyboard.isDown("e")) then
 text:set("You wake up in bed to the sound of shuffling zombies")
 text2:set("Get ready for battle")
 if(total_time_elapsed > 2) then
  RunGame()
 end
 end
end

function love.textinput(text)
 
end

function love.update(dt)
  total_time_elapsed = total_time_elapsed + dt
end


function RunGame()
 text:set("A zombie bursts through the door of your room! What do you do?")
 text2:set("A: Run or B: Hide")
end