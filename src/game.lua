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
       if loecher == 1 and HammerX > 365 and HammerX < 440 and HammerY > 410 and HammerY < 520 then
          loecher = love.math.random ( 2,11)
          punkte = punkte + 1
       end

        if loecher == 2 and HammerX > 6 and HammerX < 81 and HammerY > 315 and HammerY < 425  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 3 and HammerX > 245 and HammerX < 320 and HammerY > 309 and HammerY < 419  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 4 and HammerX > 271 and HammerX < 346 and HammerY > 215 and HammerY < 325  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 5 and HammerX > 246 and HammerX < 321 and HammerY > 134 and HammerY < 244  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 6 and HammerX > 83 and HammerX < 158 and HammerY > 154 and HammerY < 264  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 7 and HammerX > 553 and HammerX < 628 and HammerY > 265 and HammerY < 375  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 8 and HammerX > 707 and HammerX < 782 and HammerY > 266 and HammerY < 376  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 9 and HammerX > 695 and HammerX < 770 and HammerY > 156 and HammerY < 266  then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 10 and HammerX > 469 and HammerX < 544 and HammerY > 87 and HammerY < 197 then
          loecher = love.math.random ( 1,11)
          punkte = punkte + 1
       end

        if loecher == 11 and HammerX > 503 and HammerX < 578 and HammerY > 183 and HammerY < 293 then
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
