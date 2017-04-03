function love.load()
	--love.window.getMode
    x, y = 400, 200
	vy = 100
	vx = 100
	
end
bgm = love.audio.newSource("bgm.mp3", "stream")

-- Increase the size of the rectangle every frame.
function love.update(dt)

	y  = y  + vy*dt
	x  = x  + vx*dt
	
	print(x, y)
	if y <= 120 then
		vy = -1.2*vy
		 
	end

	print(x, y)
	if y >= 380 then
		vy = -1.2*vy
		 
	end

	print(x, y)
	if x <= 65 then
		vx = -1.2*vx
		 
	end

	print(x, y)
	if x >= 730 then
		vx = -1.2*vx
		 
	end

	
end


 
-- Draw a coloured rectangle.
function love.draw()
    love.graphics.setColor(0, 0, 200)
    love.graphics.circle("fill", x, y, 20)
    love.graphics.line(50, 100, 750, 100);
	love.graphics.line(50, 400, 750, 400);
	love.graphics.line(50, 100, 50, 400);
	love.graphics.line(750, 100, 750, 400);
	
end

function love.keypressed(key)
   if key == 'a' then
      vx = -2*vx
      love.audio.play(bgm)
  elseif key == 'd' then
      vy = -2*vy
      love.audio.play(bgm)
   end
end

