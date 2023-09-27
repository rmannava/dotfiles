require 'cairo'

-- Color theme
cBackground=0x2A3238
cNormal=0xBBBBBB

-- Alphas
aBackground=0.4
aForeground=0.8

-- color ranges
limits = {0.90, 0.70}
colors = {0xc76762, 0xf9c2a3, 0xbbbbbb}
swap_limits = {0.75, 0.50}
swap_colors = {0xc76762, 0xf9c2a3, 0xbbbbbb}
temp_limits = {0.90, 0.75, 0.60}
temp_colors = {0xb50b2d, 0xf55f32, 0xf5a742, 0x32a852}
fan_limits = {0.90, 0.70, 0.50}
fan_colors = {0xb50b2d, 0xf55f32, 0xf5a742, 0x32a852}

-- ring coords
offset_x = 0
offset_y = 350
cpu_x = offset_x + 960
cpu_y = offset_y + 150
mem_x = offset_x + 960
mem_y = offset_y + 284
eth_x = offset_x + 960
eth_y = offset_y + 660

-- max ring values
max_fan = 5300
max_downspeed = 300 * (1024 / 8)
max_upspeed = 300 * (1024 / 8)

-- Rings
settings_table = {
 -- "name" is the type of stat to display; you can choose from 'cpu', 'memperc', 'fs_used_perc', 'battery_used_perc'.
 -- "arg" is the argument to the stat type, e.g. if in Conky you would write ${cpu cpu0}, 'cpu0' would be the argument. If you would not use an argument in the Conky variable, use ''.
 -- "max" is the maximum value of the ring. If the Conky variable outputs a percentage, use 100.
 -- "bg_colour" is the colour of the base ring.
 -- "bg_alpha" is the alpha value of the base ring.
 -- "fg_colour" is the colour of the indicator part of the ring.
 -- "fg_alpha" is the alpha value of the indicator part of the ring.
 -- "x" and "y" are the x and y coordinates of the centre of the ring, relative to the top left corner of the Conky window.
 -- "radius" is the radius of the ring.
 -- "thickness" is the thickness of the ring, centred around the radius.
 -- "start_angle" is the starting angle of the ring, in degrees, clockwise from top. Value can be either positive or negative.
 -- "end_angle" is the ending angle of the ring, in degrees, clockwise from top. Value can be either positive or negative, but must be larger than start_angle.
 
 -- fan speed
 -- { -- cpu fan
 --  name='hwmon', arg='2 fan 1',
 --  max=max_fan,
 --  bg_colour=cBackground, bg_alpha=aBackground,
 --  fg_colour=cNormal, fg_alpha=aForeground,
 --  x=cpu_x, y=cpu_y,
 --  radius=85, thickness=5,
 --  start_angle=-140, end_angle=140,
 --  limits=fan_limits, colors=fan_colors
 -- },
 
 -- core 0: cpu0
 -- core 4: cpu2
 -- core 8: 
 -- core 9: 
 -- core 10: 
 -- core 11: 
 -- core 12: 
 -- core 13: 
 -- core 14: 
 -- core 15: 
 -- cpu usage
 { -- cpu total
  name='cpu', arg='cpu0',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=100, thickness=25,
  start_angle=-140, end_angle=140,
  limits=limits, colors=colors
 },
 { -- cpu 0
  name='cpu', arg='cpu1',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-140, end_angle=-127,
  limits=limits, colors=colors
 },
 { -- cpu 1
  name='cpu', arg='cpu2',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-125, end_angle=-113,
  limits=limits, colors=colors
 },
 { -- cpu 2
  name='cpu', arg='cpu3',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-111, end_angle=-99,
  limits=limits, colors=colors
 },
 { -- cpu 3
  name='cpu', arg='cpu4',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-97, end_angle=-85,
  limits=limits, colors=colors
 },
 { -- cpu 4
  name='cpu', arg='cpu5',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-83, end_angle=-57,
  limits=limits, colors=colors
 },
 { -- cpu 5
  name='cpu', arg='cpu6',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-55, end_angle=-29,
  limits=limits, colors=colors
 },
 { -- cpu 6
  name='cpu', arg='cpu7',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=-27, end_angle=-1,
  limits=limits, colors=colors
 },
 { -- cpu 7
  name='cpu', arg='cpu8',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=1, end_angle=27,
  limits=limits, colors=colors
 },
 { -- cpu 8
  name='cpu', arg='cpu9',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=29, end_angle=55,
  limits=limits, colors=colors
 },
 { -- cpu 9
  name='cpu', arg='cpu10',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=57, end_angle=83,
  limits=limits, colors=colors
 },
 { -- cpu 10
  name='cpu', arg='cpu11',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=85, end_angle=111,
  limits=limits, colors=colors
 },
 { -- cpu 11
  name='cpu', arg='cpu12',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=130, thickness=10,
  start_angle=113, end_angle=140,
  limits=limits, colors=colors
 },
 
 -- cpu temp
 { -- cpu total temp
  name='hwmon', arg='4 temp 1',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=115, thickness=5,
  start_angle=-140, end_angle=140,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 0 temp
  name='hwmon', arg='4 temp 2',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=-140, end_angle=-113,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 4 temp
  name='hwmon', arg='4 temp 3',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=-111, end_angle=-85,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 8 temp
  name='hwmon', arg='4 temp 4',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=-83, end_angle=-57,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 9 temp
  name='hwmon', arg='4 temp 5',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=-55, end_angle=-29,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 10 temp
  name='hwmon', arg='4 temp 6',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=-27, end_angle=-1,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 11 temp
  name='hwmon', arg='4 temp 7',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=1, end_angle=27,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 12 temp
  name='hwmon', arg='4 temp 8',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=29, end_angle=55,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 13 temp
  name='hwmon', arg='4 temp 9',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=57, end_angle=83,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 14 temp
  name='hwmon', arg='4 temp 10',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=85, end_angle=111,
  limits=temp_limits, colors=temp_colors
 },
 { -- core 15 temp
  name='hwmon', arg='4 temp 11',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=cpu_x, y=cpu_y,
  radius=137.5, thickness=5,
  start_angle=113, end_angle=140,
  limits=temp_limits, colors=temp_colors
 },

 -- memory usage
 { -- ram
  name='memperc', arg='',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=mem_x, y=mem_y,
  radius=75, thickness=10,
  start_angle=-107, end_angle=107,
  limits=limits, colors=colors
 },
 { -- swap
  name='swapperc', arg='',
  max=100,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=mem_x, y=mem_y,
  radius=60, thickness=10,
  start_angle=-107, end_angle=107,
  limits=swap_limits, colors=swap_colors
 },

 -- internet usage
 { -- wifi download
  name='downspeedf', arg='wlo1',
  max=max_downspeed,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=eth_x, y=eth_y,
  radius=350, thickness=10,
  start_angle=-33, end_angle=-1,
  limits=limits, colors=colors
 },
 { -- wifi upload
  name='upspeedf', arg='wlo1',
  max=max_upspeed,
  bg_colour=cBackground, bg_alpha=aBackground,
  fg_colour=cNormal, fg_alpha=aForeground,
  x=eth_x, y=eth_y,
  radius=350, thickness=10,
  start_angle=1, end_angle=33,
  limits=limits, colors=colors
 }
}

function rgb_to_r_g_b(colour,alpha)
 return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

function color_range(fgc, value, limits, colors)
    for i=1,rawlen(limits) do
        if value >= limits[i] then
            return colors[i]
        end
    end
    return colors[rawlen(colors)]
end

function draw_ring(cr,t,pt)
 local w,h=conky_window.width,conky_window.height
 local xc,yc,ring_r,ring_w,sa,ea=pt['x'],pt['y'],pt['radius'],pt['thickness'],pt['start_angle'],pt['end_angle']
 local bgc, bga, fgc, fga=pt['bg_colour'], pt['bg_alpha'], pt['fg_colour'], pt['fg_alpha']

 local angle_0=sa*(2*math.pi/360)-math.pi/2
 local angle_f=ea*(2*math.pi/360)-math.pi/2
 local t_arc=t*(angle_f-angle_0)

 -- Check for limit values inducing color changes
 fgc = color_range(fgc, t, pt['limits'], pt['colors'])

 -- Draw background ring
 cairo_arc(cr,xc,yc,ring_r,angle_0,angle_f)
 cairo_set_source_rgba(cr,rgb_to_r_g_b(bgc,bga))
 cairo_set_line_width(cr,ring_w)
 cairo_stroke(cr)

 -- Draw indicator ring
 cairo_arc(cr,xc,yc,ring_r,angle_0,angle_0+t_arc)
 cairo_set_source_rgba(cr,rgb_to_r_g_b(fgc,fga))
 cairo_stroke(cr)        
end

function conky_init_rings()
 local function setup_rings(cr,pt)
  local str=''
  local value=0

  str=string.format('${%s %s}',pt['name'],pt['arg'])
  str=conky_parse(str)
  if string.find(str, 'MiB') then
      unit=string.find(str, 'MiB')
      value=tonumber(string.sub(str, 1, unit-1))
  elseif string.find(str, 'KiB') then
      unit=string.find(str, 'KiB')
      value=tonumber(string.sub(str, 1, unit-1))
      value=value / 1024
  elseif string.find(str, 'B') then
      unit=string.find(str, 'B')
      value=tonumber(string.sub(str, 1, unit-1))
      value=value / (1024 * 1024)
  else
      value=tonumber(str)
  end
  
  -- Preventing overflow
  if value>pt['max'] then
   pct=1
  else
   pct=(value or 0)/pt['max']
  end

  draw_ring(cr,pct,pt)
 end

 local function write_centered(cr, text, x, y, size, weight)
     size = size or 10
     weight = weight or CAIRO_FONT_WEIGHT_BOLD
     cairo_select_font_face(cr, 'DejaVu Sans Mono', CAIRO_FONT_SLANT_NORMAL, weight)
     cairo_set_font_size(cr, size)
     buffer = 0
     for line in text:gmatch("[^\n]+") do
         text_x = x - (2/3 * size) * string.len(line) / 2
         cairo_move_to(cr, text_x, y + buffer)
         cairo_show_text(cr, line)
         cairo_stroke(cr)
         buffer = buffer + 20
     end
 end

 local function write_values(cr)
     -- text coords
     cpu_x = 960
     cpu_y = 470
     mem_x = 960
     mem_y = 620
     eth_x = 960
     eth_y = 710
     eth_width = 80
     port_x = 960
     port_y = 860

     cairo_set_source_rgba(cr,rgb_to_r_g_b(cNormal,aForeground))

     write_centered(cr, 'CPU', cpu_x, cpu_y, 25)
     write_centered(cr, conky_parse('${cpu cpu0}') .. '%', cpu_x, cpu_y + 20, 15)
     write_centered(cr, conky_parse('${hwmon 4 temp 1}') .. 'C', cpu_x, cpu_y + 40, 15)
     -- write_centered(cr, conky_parse('${hwmon 2 fan 1}') .. ' RPM', cpu_x, cpu_y + 60, 15)

     write_centered(cr, 'MEM', mem_x, mem_y, 25)
     write_centered(cr, conky_parse('${memperc}') .. '%', mem_x, mem_y + 20, 15)

     write_centered(cr, 'DOWN', eth_x - eth_width, eth_y, 20)
     write_centered(cr, string.format('%.1f', (8 / 1024) * conky_parse('${downspeedf wlo1}')) .. ' Mbps', eth_x - eth_width, eth_y + 20, 15)

     write_centered(cr, 'UP', eth_x + eth_width, eth_y, 20)
     write_centered(cr, string.format('%.1f', (8 / 1024) * conky_parse('${upspeedf wlo1}')) .. ' Mbps', eth_x + eth_width, eth_y + 20, 15)

     -- stock price
     -- write_centered(cr, 'PORTFOLIO', port_x, port_y, 25)
     -- write_centered(cr, conky_parse('${execi 5 $HOME/utils/stocks}'), port_x, port_y + 30, 15)
 end

 -- Check that Conky has been running for at least 5s
 if conky_window==nil then return end

 local cs=cairo_xlib_surface_create(conky_window.display,conky_window.drawable,conky_window.visual, conky_window.width,conky_window.height)
 local cr=cairo_create(cs)    
 --~ cairo_surface_destroy(cs) -- What does THIS do ?!

 local updates=conky_parse('${updates}')
 update_num=tonumber(updates)

 if update_num>5 then
  for i in pairs(settings_table) do
   setup_rings(cr,settings_table[i])
  end
  write_values(cr)
 end

	cairo_destroy(cr)
end

