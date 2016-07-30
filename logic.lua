-- TODO --

-- ILS horizontal and vertical bug still need an implementation (which dataref to use??)
-- alititude acceleration data ref needed (beams are disabled for now)
-- Wind speed and direction still need a good dataref
-- Compass beams still have to be implemented

-----------------------------------------
-- Placement of image and text objects --
--  in Z order (back to front layers)  --
-----------------------------------------

slide_id = img_add("slide.png", -420, -490, 1400, 1400)
pitch_id = img_add("verticaldegrees.png", 205, 46, 150, 325)
running_txt_viewport_rect(pitch_id,140,38,280,280)
--img_viewport_rect(pitch_id, 412, 60, 180, 280)

function item_value_callback_left(i)
    return string.format("%d", 0 - (i * 10) )
end

running_text_left_id = running_txt_add_ver(24,28,5,70,85,item_value_callback_left,"-fx-font-size:18px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:right;")
running_img_left_id  = running_img_add_ver("linesleft.png",100,40,5,18,85)

running_txt_viewport_rect(running_text_left_id,25,26,100,320)
running_img_viewport_rect(running_img_left_id ,100,26,100,320)

function item_value_callback_right(i)
	return string.format("%d", i * 100 * -1 )
end

running_text_right_id = running_txt_add_ver(465,28,5,80,85,item_value_callback_right,"-fx-font-size:18px; -fx-font-family:ariel; -fx-fill:white;")
running_img_right_id  = running_img_add_ver("linesright.png",443,40,5,18,85)

running_txt_viewport_rect(running_text_right_id,455,26,100,320)
running_img_viewport_rect(running_img_right_id ,443,26,100,320)

roll_scale_id = img_add("roll_scale.png", 130, 67, 300, 300)
roll_pointer_id = img_add("pointer.png", 130, 67, 300, 300)
balance_id = img_add("balance.png",268,364,24,7)


ft_indicator_bug_id = img_add("heightbug.png",710,178,12,32)

img_viewport_rect(ft_indicator_bug_id, 706,26,100,320)

img_add_fullscreen("foreground.png")

ft_indicator_text_id = txt_add("???? FT", "-fx-font-size:22px; -fx-font-family:ariel; -fx-font-weight:bold; -fx-fill:purple; -fx-text-alignment:center", 704,2, 101, 30)


-- oat_text_id = txt_add("??\° C",   "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 78,326, 80, 20)


function item_value_callback_inner_left_minor(i)
    return string.format("%d", (0 - i) % 10 )
end

running_text_inner_left_minor_id = running_txt_add_ver(100,174,3,30,24, item_value_callback_inner_left_minor, "-fx-font-size:18px; -fx-font-family:ariel; -fx-fill:white;")

running_txt_viewport_rect(running_text_inner_left_minor_id,96,176,30,60)


function item_value_callback_inner_left_major(i)
    return string.format("%d", (0 - i) )
end

running_text_inner_left_major_id = running_txt_add_ver(55,168,3,42,30, item_value_callback_inner_left_major, "-fx-font-size:18px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:right")

running_txt_viewport_rect(running_text_inner_left_major_id,50,190,60,30)


function item_value_callback_inner_right_minor(i)
    return string.format("%02d", (4- (i%5) ) * 20 )
end

running_text_inner_right_minor_id = running_txt_add_ver(480,178,3,30,20, item_value_callback_inner_right_minor, "-fx-font-size:18px; -fx-font-family:ariel; -fx-fill:white;")

running_txt_viewport_rect(running_text_inner_right_minor_id,476,178,30,90)


function item_value_callback_inner_right_major(i)
    return string.format("%d", (0 - i) )
end

running_text_inner_right_major_id = running_txt_add_ver(435,198,1,44,30, item_value_callback_inner_right_major, "-fx-font-size:18px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:right")

running_txt_viewport_rect(running_text_inner_right_major_id,410,178,90,90)

vspeed_needle_id = img_add("vsneedle.png",520,205,44,8)


vspeed_text_top_id    = txt_add("", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 885,5  , 80, 20)
vspeed_text_bottom_id = txt_add("", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 885,362, 80, 20)

-- ILS bugs
ils_bug_hor_id = img_add("ILSbug.png", 270,390, 20, 20)
ils_bug_ver_id = img_add("ILSbug.png", 420,300, 20, 20)

-- Beams
beam_left_top_id    = img_add("percentagebeam.png", 253,127, 14, 31)
beam_left_bottom_id = img_add("percentagebeam.png", 253,231, 14, 31)
beam_right_top_id    = img_add("percentagebeam.png", 724,149, 14, 31)
beam_right_bottom_id = img_add("percentagebeam.png", 724,210, 14, 31)

img_viewport_rect(beam_left_top_id    , 253,127, 14, 30)
img_viewport_rect(beam_left_bottom_id , 253,232, 14, 30)
img_viewport_rect(beam_right_top_id   , 724,149, 14, 30)
img_viewport_rect(beam_right_bottom_id, 724,211, 14, 30)

compass_id = img_add("compass.png", 146,450,268,268)

ils_frame_id = img_add("compassframe.png", 135,421,291,309)

compass_bug_id = img_add("compassbug.png", 139,444,282,282)
bearing_pointer_one_id = img_add("bearing_pointer_one.png", 146,450,268,268)
cdi_id = img_add("cdi_needle.png", 146,450,268,268)
cdi_from_arrow_id = img_add("cdi_from_arrow.png", 146,450,268,268)

function item_value_callback_compass(i)

    t = i % 12

    if t == 0 then
        return "N"
    elseif t == 3 then
        return "W"
    elseif t == 6 then
        return "S"        
    elseif t == 9 then
        return "E"
    end
    
    value = 36 - (t*3)
    
    if value < 0 then
        value = value + 36
    end
    
    return value
end

compass_inner_txt_id = running_txt_add_cir(260,570,12,40,40,104,item_value_callback_compass, "-fx-font-size:20px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:center")

compass_txt_id = txt_add("???", "-fx-font-size:17px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:center", 260, 418, 40,40)

----------------------------------------------------------------------------
-- NAV

bearing1_id = txt_add("VOR", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:#74e72c; -fx-font-weight:bold; -fx-text-alignment:left", 60, 620, 60,20)
bearing1_freq_txt_id = txt_add("???.??", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:#74e72c; -fx-font-weight:bold; -fx-text-alignment:left", 40, 640, 60,20)
bearing1_dist_txt_id = txt_add("??.?", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:#74e72c; -fx-font-weight:bold; -fx-text-alignment:left", 40, 660, 80,20)

nav_txt_id = txt_add("???.??", "-fx-font-size:17px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 20, 520, 60,40)
--aux_txt_id = txt_add("NAV-1", "-fx-font-size:17px; -fx-font-family:ariel; -fx-fill:#3c99de; -fx-font-weight:bold; -fx-text-alignment:center", 34, 580, 60,40)

function new_bearing_one(frequency_MHz, frequency_kHz, dme)
	txt_set(bearing1_freq_txt_id,string.format("%03d.%.02d",frequency_MHz, frequency_kHz))
	txt_set(bearing1_dist_txt_id, string.format("%d.%01d",math.floor(dme), (dme % 1) * 100 ))
end

alt_bug_txt_id = txt_add("?????", "-fx-font-size:15px; -fx-font-family:ariel; -fx-fill:#e72ccd; -fx-font-weight:bold; -fx-text-alignment:center", 440, 345, 60,40)

vsi_txt_id = txt_add("?????", "-fx-font-size:15px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:right", 495, 345, 60,40)


baro_set_txt_id = txt_add("??.??", "-fx-font-size:17px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 446, 388, 80,40)

-------------------------------------------------------
-- functions which handle data received from X-plane --
-------------------------------------------------------
--function new_roll_pitch_fsx(roll, pitch)
--
--	new_roll_pitch(roll * -1, pitch * -1)
--
--end

function new_roll_pitch(roll, pitch)

    pitch = var_cap(pitch,-30,30)

    -- Invert rotation received from X-plane
    img_rotate(slide_id  , roll * -1)
    img_rotate(pitch_id  , roll * -1)
    img_rotate(roll_pointer_id, roll * -1)
    
    radial = math.rad(roll * -1)
    
    x = (math.sin(radial) * pitch * 4.6) + 420
    y = (math.cos(radial) * pitch * 4.6) - 490

    img_move(slide_id,-x,y,nil,nil)
    
    x = (math.sin(radial) * pitch * 4.6) - 205
    y = (math.cos(radial) * pitch * 4.6) + 46
    
    img_move(pitch_id,-x,y,nil,nil)

    x, y = geo_rotate_coordinates((roll * -1) - 90, 79)
    
    --img_move(roll_pointer_id,x + 268,y + 420,nil,nil)
    
end

------------------------------------------------------------------------------
-- ASI

function new_speed(speed)

    speed = math.abs(speed)
    
    running_txt_move_carot(running_text_left_id, (speed / 10) * -1)
    running_img_move_carot(running_img_left_id, (speed / 10) * -1)
    
    running_txt_move_carot(running_text_inner_left_minor_id, (speed / 1) * -1)
    
    if speed % 10 > 9 then
    	running_txt_move_carot(running_text_inner_left_major_id, ( speed - 9 - (math.floor(speed / 10) * 9) ) * -1 )
    else
    	running_txt_move_carot(running_text_inner_left_major_id, math.floor(speed / 10) * -1)
    end
end

function new_altitude(altitude)

    running_txt_move_carot(running_text_right_id, (altitude / 100) * -1)
    running_img_move_carot(running_img_right_id, (altitude / 100) * -1)
    
    running_txt_move_carot(running_text_inner_right_minor_id, (altitude / 20) * -1)
    
    if altitude % 100 > 80 then
    	running_txt_move_carot(running_text_inner_right_major_id, ( altitude - 80 - (math.floor(altitude / 100) * 80) ) * -0.05 )
    else
    	running_txt_move_carot(running_text_inner_right_major_id, math.floor(altitude / 100) * -1)
    end
end

function new_feet_bug(altitude, feet)
    img_move(ft_indicator_bug_id, nil, ( (altitude - feet) * 0.85) + 179, nil, nil)
end

-- VSI

function new_vsi(vspeed)
		
	txt_set(vsi_txt_id, string.format("%d",var_round(vspeed,0)))
    vspeed = var_round(vspeed,0)
	vspeedtext = vspeed
    vspeedtext = vspeedtext - (vspeedtext%100)

    if vspeed > 2000 then
        txt_set(vspeed_text_top_id, vspeedtext)
        txt_set(vspeed_text_bottom_id, "")
    elseif vspeed < -2000 then
        txt_set(vspeed_text_top_id,    "")
        txt_set(vspeed_text_bottom_id, vspeedtext)
    else
        txt_set(vspeed_text_top_id,    "")
        txt_set(vspeed_text_bottom_id, "")
    end
    
    vspeed = var_cap(vspeed/100,-20,20)

    if vspeed > 10 then
      rotation = 13.83 + ( (vspeed-10) * (6.16 / 10) )
    elseif vspeed < -10 then
      rotation = -13.83 + ( (vspeed+10) * (6.16 / 10) )
    else
      rotation = vspeed * (13.83 / 10)
    end

	radial = math.rad(rotation * -1.04)

	img_rotate(vspeed_needle_id, rotation * 2.2)

	x = 1320 - (800 * math.cos(radial))
	y = 205 + (380 * math.sin(radial))

	img_move(vspeed_needle_id,x,y,nil,nil)
end

-- Altimeter setting

function new_altimeter_setting(pressure)
    txt_set(baro_set_txt_id, string.format("%02d.%02d IN", math.floor(pressure), (pressure % 1) * 100 ) )
end

-- Temp

-- function new_temperature(temperature)
-- 	txt_set(oat_text_id, string.format("%d\° C", temperature))
-- end

function new_min_ft_bug(feet)
	txt_set(ft_indicator_text_id, var_round(feet,0) .. " FT")
	txt_set(alt_bug_txt_id, string.format("%04d",var_round(feet,0)))
end

function new_ils_hor_ft(dots)
	img_move(ils_bug_hor_id,270+dots,nil,nil,nil)
end

function new_ils_ver_ft(dots)
	img_move(ils_bug_ver_id,nil,200-dots,nil,nil)
end

function new_airspeed_acceleration(acceleration)

    acceleration = var_cap(acceleration, -30, 30)

	img_visible(beam_left_top_id   , (acceleration > 0) )
	img_visible(beam_left_bottom_id, (acceleration < 0) )

	img_move(beam_left_top_id   , nil, 126 + (31-acceleration),           nil, nil)
	img_move(beam_left_bottom_id, nil, 232 - (31-math.abs(acceleration)), nil, nil)
end

function new_altitude_acceleration(acceleration)

    -- TODO disabled for now untill we find the right dataref
	img_visible(beam_right_top_id   , false) --(acceleration > 0) )
	img_visible(beam_right_bottom_id, false) --(acceleration < 0) )

	img_move(beam_right_top_id   , nil, 148 + (31-acceleration),           nil, nil)
	img_move(beam_right_bottom_id, nil, 211 - (31-math.abs(acceleration)), nil, nil)
end

--function new_vsi_bug(vspeed)
--
--    txt_set(vsi_bug_txt_id,string.format("%04d", vspeed))
--
--    vspeed = var_cap(vspeed/100,-20,20)
--
--    if vspeed > 10 then
--      rotation = 13.83 + ( (vspeed-10) * (6.16 / 10) )
--    elseif vspeed < -10 then
--      rotation = -13.83 + ( (vspeed+10) * (6.16 / 10) )
--    else
--      rotation = vspeed * (13.83 / 10)
--    end
--
--	radial = math.rad(rotation * -1.185)
--
--	img_rotate(vspeed_bug_id, rotation * 2.1)
--
--	x = 1575 - (720 * math.cos(radial))
--	y = 178 + (380 * math.sin(radial))
--
--	img_move(vspeed_bug_id,x,y,nil,nil)
--
--end

-- AOA

aoa_box_txt = txt_add("AOA", "-fx-font-size:15px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:right", 10, 343, 40,20)
aoa_txt = txt_add("???", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:right", 10, 356, 40,20)

function new_aoa(aoa)
	txt_set(aoa_txt, string.format("%d.%01d",math.floor(aoa), (aoa % 1) * 100 ))
end

-- Slip

function new_slip_deg(slip)

    slip = var_cap(slip, -8.1, 8.1)

    img_move(balance_id, (slip * -4) + 268, nil, nil, nil)

end
------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- HSI
------------------------------------------------------------------------------
------------------------------------------------------------------------------


hdg_bug_txt_id = txt_add("???", "-fx-font-size:17px; -fx-font-family:ariel; -fx-fill:#e72ccd; -fx-font-weight:bold; -fx-text-alignment:center", 450, 700, 40,40)

function new_rotation(rotation, rotation_bug, bearing_one_relative, obs, to_from)
    running_txt_move_carot(compass_inner_txt_id, (rotation / 30) + 6)
    img_rotate(compass_id,rotation * -1)
    img_rotate(bearing_pointer_one_id,bearing_one_relative)
    img_rotate(cdi_id, obs - rotation)
    
    if to_from > 1 then
    	img_rotate(cdi_from_arrow_id, obs - rotation)
    elseif to_from > 0 then 
    	img_rotate(cdi_from_arrow_id, obs - rotation + 180)
    else
    	visible(cdi_from_arrow_id, false)
    end
    	
    txt_set(compass_txt_id, string.format("%03d",var_round(rotation,0)))
   
    -- Heading Bug
	 txt_set(hdg_bug_txt_id, string.format("%03d",rotation_bug))
    
    calc_rotation = 180 + rotation_bug - rotation
    
    img_rotate(compass_bug_id, calc_rotation + 90)
end






-- TAS and Ground Speed

tas_text_id = txt_add("??? KTS", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 150,420, 80, 20)
gs_text_id  = txt_add("??? KTS", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-font-weight:bold; -fx-text-alignment:center", 325,420, 80, 20)

function new_airspeed(speedair)
	txt_set(tas_text_id, string.format("TAS: %d KTS", var_round(speedair * 1.94384449, 0) ))
end

function new_groundspeed(speedground)
	txt_set(gs_text_id, string.format("GS: %d KTS", var_round(speedground * 1.94384449, 0) ))
end

-- Wind Direction and Speed

wind_speed_txt = txt_add("???", "-fx-font-size:16px; -fx-font-family:ariel; -fx-fill:white; -fx-text-alignment:center", 150, 444, 80,20)

wind_arrow_id = img_add("windarrow.png", 150, 450, 20, 10)

function new_winds(wind_direction, wind_speed, heading)
    txt_set(wind_speed_txt, string.format("%d", wind_speed))
    relative_wind_direction = wind_direction - heading
    img_rotate(wind_arrow_id,relative_wind_direction -90)
end



--------------------------------------
-- X plane subscriptions (datarefs) --
--------------------------------------
xpl_dataref_subscribe(
		"sim/cockpit/gyros/phi_ind_deg3", "FLOAT",
      "sim/cockpit/gyros/the_ind_deg3", "FLOAT",
   new_roll_pitch)
   
--fsx_variable_subscribe("PLANE BANK DEGREES", "Degrees", "PLANE PITCH DEGREES", "Degrees", new_roll_pitch_fsx)

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/altitude_ft_pilot", "FLOAT",
		"sim/cockpit/autopilot/altitude", "FLOAT", 
	new_feet_bug)
	
--fsx_variable_subscribe("INDICATED ALTITUDE", "Feet", "AUTOPILOT ALTITUDE LOCK VAR", "Feet", new_feet_bug)

xpl_dataref_subscribe(
		"sim/flightmodel2/misc/AoA_angle_degrees","FLOAT",
	new_aoa)

xpl_dataref_subscribe(
		"sim/cockpit/misc/barometer_setting", "FLOAT", 
	new_altimeter_setting)
	
--fsx_variable_subscribe("Kohlsman setting hg", "inHg", new_pressure)

xpl_dataref_subscribe(
		"sim/cockpit/autopilot/altitude", "FLOAT", 
	new_min_ft_bug)
	
--fsx_variable_subscribe("AUTOPILOT ALTITUDE LOCK VAR", "Feet", new_min_ft_bug)

xpl_dataref_subscribe(
		"sim/cockpit/radios/nav1_hdef_dot", "FLOAT", 
	new_ils_hor_ft) -- Goede dataref vinden!

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/vvi_fpm_pilot", "FLOAT", -- [ft/min]
	new_vsi)
	
--fsx_variable_subscribe("VERTICAL SPEED", "Feet per minute", new_vsi)

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot", "FLOAT",
		"sim/cockpit/misc/radio_altimeter_minimum", "FLOAT",
		"sim/flightmodel/misc/h_ind", "FLOAT", 
		"sim/cockpit2/gauges/indicators/airspeed_kts_pilot", "FLOAT",
		"sim/aircraft/view/acf_Vne", "FLOAT",
		"sim/aircraft/view/acf_Vno", "FLOAT", 
		"sim/cockpit/autopilot/altitude", "FLOAT", 
	new_altitude)
					  
--fsx_variable_subscribe("INDICATED ALTITUDE", "Feet", new_altitude)

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/airspeed_kts_pilot", "FLOAT", 
	new_speed)
	
--fsx_variable_subscribe("AIRSPEED INDICATED", "Knots", new_speed)

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/airspeed_acceleration_kts_sec_pilot", "FLOAT", 
	new_airspeed_acceleration)

--xpl_dataref_subscribe("sim/weather/temperature_ambient_c", "FLOAT", new_temperature)
--fsx_variable_subscribe("AMBIENT TEMPERATURE", "Celsius", new_temperature)

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/slip_deg", "FLOAT", 
	new_slip_deg)

------------------------------------------------------------------------------------------
-- HSI

xpl_dataref_subscribe(
		"sim/cockpit2/radios/actuators/nav1_frequency_Mhz", "INT", -- [MHz]
		"sim/cockpit2/radios/actuators/nav1_frequency_khz", "INT", -- [kHz]
		"sim/cockpit/radios/nav1_dme_dist_m", "FLOAT",
	new_bearing_one)

xpl_dataref_subscribe(
		"sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot", "FLOAT",  -- [deg]
		"sim/cockpit/autopilot/heading_mag", "FLOAT", -- [deg]
		"sim/cockpit2/radios/indicators/nav1_relative_bearing_deg","FLOAT", -- [deg]
		"sim/cockpit2/radios/actuators/hsi_obs_deg_mag_pilot", "FLOAT", --- [deg]
		"sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot", "INT", -- 0, 1:to, 2:from 
	new_rotation)

--fsx_variable_subscribe("PLANE HEADING DEGREES GYRO", "Degrees", new_rotation)
--fsx_variable_subscribe("PLANE HEADING DEGREES GYRO", "Degrees", "AUTOPILOT HEADING LOCK DIR", "Degrees", new_rotation_bug)
			  
xpl_dataref_subscribe(
		"sim/weather/wind_direction_degt", "FLOAT", -- [deg true]
		"sim/weather/wind_speed_kt", "FLOAT", -- [kts]
		"sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot", "FLOAT", -- [deg]	
	new_winds)

--fsx_variable_subscribe("AMBIENT WIND DIRECTION", "Degrees", new_wind_direction)
--fsx_variable_subscribe("AMBIENT WIND VELOCITY", "Knots", new_wind_settings)		

xpl_dataref_subscribe(
		"sim/flightmodel/position/true_airspeed", "FLOAT", -- [m/s]
	new_airspeed)

--fsx_variable_subscribe("AIRSPEED TRUE", "Knots", new_airspeed)

xpl_dataref_subscribe(
		"sim/flightmodel/position/groundspeed", "FLOAT", -- [m/s]
	new_groundspeed)

--fsx_variable_subscribe("GPS GROUND SPEED", "Knots", new_groundspeed)	  


---------------
-- TEST CODE --
---------------

_=[[
test_altitude = 0
test_speed = -4000

function timer_callback()

	test_altitude = test_altitude + 0.05
	test_speed = test_speed + 8

	new_altitude(test_altitude)
	new_speed(test_speed/100)
	new_vsi(test_speed)
    new_vsi_bug(test_speed)
end

--timer_start(0,20,timer_callback)
new_speed(0)
new_altitude(0)
new_min_ft_bug(0)
new_pressure(0)
new_temperature(12)
new_airspeed_acceleration(10)
new_altitude_acceleration(10)
new_indicated_pitch(0)
new_indicated_roll(0)
]]