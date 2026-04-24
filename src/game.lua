game = {}

function game.load ()
    punkte = 0
    zeit = 0
    loecher = 0
    hammerX = 0
    hammerY = 0
    ambroX = 0
    ambroY = 100
    ambro = love.graphics.newImage("ambro5.png")
    random = 0
    loecher = love.math.random( 1, 11)

end

function game.update (dt)
    zeit = zeit + dt
    hammerX = love.mouse.getX()
    hammerY = love.mouse.getY()

    if random == 2 then

        random = 3
    end

    if zeit < 60 and punkte == 10 then
    zustand = 3
    end

    if zeit > 60 and punkte < 10 then
    zustand = 4
    end
    
    if love.mouse.isDown(1) == true then
       if loecher == 1 and hammerX > 365 and hammerX < 440 and hammerY > 410 and hammerY < 520 then
          loecher = love.math.random ( 2,11)
          punkte = punkte + 1
       end

        if loecher == 2 and hammerX > 6 and hammerX < 81 and hammerY > 315 and hammerY < 425  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 3 and hammerX > 245 and hammerX < 320 and hammerY > 309 and hammerY < 419  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 4 and hammerX > 271 and hammerX < 346 and hammerY > 215 and hammerY < 325  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 5 and hammerX > 246 and hammerX < 321 and hammerY > 134 and hammerY < 244  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 6 and hammerX > 83 and hammerX < 158 and hammerY > 154 and hammerY < 264  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 7 and hammerX > 553 and hammerX < 628 and hammerY > 265 and hammerY < 375  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 8 and hammerX > 707 and hammerX < 782 and hammerY > 266 and hammerY < 376  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 9 and hammerX > 695 and hammerX < 770 and hammerY > 156 and hammerY < 266  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 10 and hammerX > 469 and hammerX < 544 and hammerY > 87 and hammerY < 197 then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 11 and hammerX > 503 and hammerX < 578 and hammerY > 183 and hammerY < 293 then
          loecher = love.math.random ( 1,10)
          punkte = punkte + 1
       end
    end
end

function game.draw ()
    --love.graphics.print("Zeit: " .. math.floor(zeit *100)/100, 375, 0)
    --love.graphics.print((hammerX *100)/100, 0, 0)
    --love.graphics.print((hammerY *100)/100, 375, 0)
    love.graphics.draw(ambro , ambroX, ambroY)
    hammer (hammerX, hammerY)
    if loecher == 1 then
        ambroX = 365
        ambroY = 410
    end

    


        if loecher == 2 then
        ambroX = 6
        ambroY = 315
    end

    if loecher == 3 then
        ambroX = 245
        ambroY = 309
    end

    if loecher == 4 then
        ambroX = 271
        ambroY = 215
    end

    if loecher == 5 then
        ambroX = 246
        ambroY = 134
    end

    if loecher == 6 then
        ambroX = 83
        ambroY = 154
    end

    if loecher == 7 then
        ambroX = 553
        ambroY = 265
    end

    if loecher == 8 then
        ambroX = 707
        ambroY = 266
    end

    if loecher == 9 then
        ambroX = 695
        ambroY = 156
    end

    if loecher == 10 then
        ambroX = 469
        ambroY = 87
    end

    if loecher == 11 then
        ambroX = 503
        ambroY = 183
    end

end

function hammer (X,Y)
    love.graphics.setColor (115/255, 155/255, 155/255)
    love.graphics.rectangle ("fill", X-5,Y +5 , 10, 60)
    love.graphics.setColor (184/255, 0, 0)
    love.graphics.rectangle ("fill", X -20, Y -10,40,20)
end
