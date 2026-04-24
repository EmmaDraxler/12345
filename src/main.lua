require "intro"
require "game"
require "loss"
require "win"

function love.load ()
    intro.load ()
    game.load ()
    loss.load ()
    win.load ()
    zustand = 1

    boolean = false
end

function love.update (dt)
    if zustand == 2 then
    game.update (dt)
        random = 2
    end
end

function love.draw ()
    if boolean == true then
        love.graphics.setColor(255, 255, 255)
        love.graphics.circle("fill", 100, 100, 0);
    end

    if zustand == 1 then
        intro.draw ()
    end

    if zustand == 2 then
        background = love.graphics.newImage("1000_F_106492997_Bwdp68SJ7mfu8iia0fu05cXC2oZ3wDUx.jpg")
        love.graphics.draw(background)
        game.draw ()
    end


    if zustand == 3 then
        win.draw ()
    end

    if zustand == 4 then
        loss.draw ()
    end
end