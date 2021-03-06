pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
-- where does the ball begin?
ball_x = 50
x_speed = 2
ball_y = 100
y_speed = 2
ball_size = 3
col = 0

-- where does the pad begin?
pad_x = 52
pad_y = 120
--paddle speed
pad_speed = 0
--paddle size
pad_w = 24
pad_h = 3
pad_c = 7

-- brick size
brick_w=10
brick_h=4

-- create the bricks.
-- the {} indicates a table. 
function buildbricks()
 local i
 brick_x={}
 -- table for x values of bricks.
 brick_y={}
 -- table for y values of bricks.
 brick_v={}
 -- table for visibility of bricks.
 for i=1,60 do
 -- for every value between 1 and 66 do something.
  add(brick_x,4+((i-1)%10)*(brick_w+2))
 -- add bricks.
  add(brick_y,20+flr((i-1)/10)*(brick_h+2))
  -- add bricks 20 pixels apart.
  add(brick_v,true)
  -- create a variable for visibility of bricks.
 end
end

-- we start the game here.
function _init()
-- first, we clear the screen
cls()
-- then we initiate the building of bricks.
buildbricks()
-- function ends.
end

function _update()
	buttpress = false
	--always resets to false each frame
	if btn(0) then
	buttpress = true
	--left(can do += instead)
	pad_speed=- 5
	--pad_x = pad_x-5
	end
	if btn(1) then
	buttpress = true
	--right(can do += instead)
	pad_speed=5
	--pad_x = pad_x+5
	end
	--if at the frame update 
	--a button isn't getting
	--pressed, slow down
	if not (buttpress) then
	pad_speed = pad_speed/1.7 
	end
	pad_x+=pad_speed
	
	--this is for ball speed
ball_y = ball_y+y_speed
ball_x = ball_x+x_speed

	--these are statements about ball movement.
	--can also make these 2 if into 1 with "or"
	if ball_x > 127 
	then x_speed = -2
	sfx(0) 
	end

	if ball_x < 1 
	then x_speed = 2 
	sfx(0)
	end

	if ball_y > 127 
	then y_speed = -2 
	sfx(0)
	end

	if ball_y < 1 
	then y_speed = 2
	sfx(0)
	end

pad_c = 7
y = 'not a hit...'

if ball_hit(pad_x,pad_y,pad_w,pad_h)
then pad_c = 8
y = 'its a hit!!!!!!!!!!'
y_speed = -y_speed
end

for i=1,#brick_x do
  -- check if ball hit brick
  if brick_v[i] and ball_hit(brick_x[i],brick_y[i],brick_w,brick_h) then
  -- if the above statements are true then.
  brick_v[i] = false
  -- make the visibility of the brick false.
  y = 'its a hit!!!!!!!!!!'
  y_speed = -y_speed
  -- reverse the y speed.
  end
end

end

function _draw()
	--background - ball - paddle
	cls()
 -- print('buttpress =', 1, 3, 12)
	-- print(buttpress, 50, 3, 12)
 -- print('pad_x = ', 1, 10, 14)
 -- print(pad_x, 35,10,14)
 -- print('ball_x = ',1, 17,14)
 -- print(ball_x, 35,17,14)
 -- print('ball_y = ', 1,24 ,14)
 -- print(ball_y, 35,24,14)
 -- print('x_speed = ',1,31 ,14)
 -- print(x_speed, 40,31,14)
 -- print('y_speed = ',1,38 ,14)
 -- print(y_speed, 40,38,14)
 -- print('x = ',1,45 ,14)
 -- print(x, 15,45,14)
 -- print('y = ',1,52 ,14)
 -- print(y, 15,52,14)
	circfill(ball_x,ball_y,ball_size,3)
	rectfill(pad_x, pad_y,pad_x+pad_w,pad_y+pad_h,pad_c)

-- this is drawing the bricks
 for i=1,#brick_x do
  if brick_v[i] then
   rectfill(brick_x[i],brick_y[i],brick_x[i]+brick_w,brick_y[i]+brick_h,14)
  end
 end

end

function ball_hit(box_x,box_y,box_w,box_h)

if ball_y - ball_size > box_y + box_h
then
x = 'y-r > box_y + box_h'
return false
end

if ball_y + ball_size < box_y
then
x = 'y+r < box_y'
return false
end

if ball_x - ball_size > box_x + box_w
then
x = 'x-r > box_x+box_w'
return false
end

if ball_x + ball_size < box_x
then
x = 'x+r < box_x'
return false
end

return true
end
