loss = {}

function loss.load ()
    myFont = love.graphics.newFont(100)
end

function loss.update (dt)

end

function loss.draw ()
    love.graphics.setBackgroundColor (117/255, 17/255, 17/255)
    love.graphics.setColor (1, 0, 70)
    love.graphics.setFont(myFont)
    love.graphics.print("loss", 400, 300)
end