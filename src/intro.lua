intro = {}

function intro.load ()
    myFont = love.graphics.newFont(100)
end

function intro.update (dt)

end
function intro.draw ()
    love.graphics.setBackgroundColor (17/255, 117/255, 47/255)
    love.graphics.setColor (0, 1, 77/255)
    love.graphics.setFont(myFont)
    love.graphics.print("Whack an", 150, 100)
    love.graphics.print("Ambro", 230, 200)
end
function love.keypressed (key)
    if (key) == "space" then

        zustand = 2
        boolean = true
    end
end