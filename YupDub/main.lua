function love.load()
	--love.window.getMode
    x, y = 400, 200
	vy = 100
	vx = 100
	a = math.random(75,720)
	b = math.random(130,370)
	i = 0
    t = love.timer.getTime() + 6
	bgm = love.audio.newSource("bgm.mp3", "stream")
end


function love.update(dt)

	y  = y  + vy*dt
	x  = x  + vx*dt
	
	print(x, y)
	if y <= 120 then
		vy = -vy
		 
	end

	print(x, y)
	if y >= 380 then
		vy = -vy
		 
	end

	print(x, y)
	if x <= 65 then
		vx = -vx
		 
	end

	print(x, y)
	if x >= 730 then
		vx = -vx
		 
	end

	 if love.timer.getTime() > t then
              print(t)
              t = love.timer.getTime() + 6
              i = 0
              a = math.random(75,720)
	          b = math.random(130,370)
	     
	      elseif math.sqrt((a-x)^2 + (b-y)^2) < 27 then
	      	  t = love.timer.getTime() + 6
	      	  love.audio.stop( )
	      	  love.audio.play(bgm)
              i = i + 1
              a = math.random(75,720)
	          b = math.random(130,370)
	 end
end

function love.draw()
    love.graphics.setColor(0, 0, 200)
    love.graphics.circle("fill", x, y, 20)
    love.graphics.line(50, 100, 750, 100);
	love.graphics.line(50, 400, 750, 400);
	love.graphics.line(50, 100, 50, 400);
	love.graphics.line(750, 100, 750, 400);
     
     love.graphics.setColor(255, 255, 0)
     love.graphics.print("Score: ", 0, 0, 0, 2, 2)
     love.graphics.print(i, 80, 0, 0, 2, 2)
     
      love.graphics.setColor(255, 0, 0)
	  love.graphics.circle("fill", a, b, 7)

	  end

function love.keypressed(key)
   if key == 'a' then
      vx = -vx
      
  elseif key == 'd' then
      vy = -vy
      
   end
end

