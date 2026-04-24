win = {}

function win.load ()
    myFont = love.graphics.newFont(100)
end

function win.update ()

end

function win.draw ()
    love.graphics.setBackgroundColor (21/255, 119/255, 28/255)
    love.graphics.setColor (0, 1, 17/255)
    love.graphics.setFont(myFont)
    love.graphics.print("Win", 250, 20)
end