local self_ID = "ME-163B by SNO Simulations"

declare_plugin(self_ID,
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("ME-163B"),
developerName   =   "SNO Simulations",

version		 = "0.1.0",		 
state		 = "installed",
info		 = _("The Messerschmitt Me 163 Komet, designed by Alexander Lippisch, was a German rocket-powered fighter aircraft. It is the only rocket-powered fighter aircraft ever to have been operational and the first piloted aircraft of any type to exceed 1000 km/h (621 mph) in level flight. Its design was revolutionary and its performance unprecedented."),
encyclopedia_path = current_mod_path..'/Encyclopedia',

binaries   =
{
	'F16DemoFM',
},

Skins	= 
	{
		{
			name	= "ME-163B",
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		= _("ME-163B"),
			dir			= "Missions",
			CLSID		= "{CLSID5456456346CLSID}",	
		},
	},	
LogBook =
	{
		{
			name		= _("ME-163B"),
			type		= "ME-163B",
		},
	},	
InputProfiles =
	{
		["ME-163B"]     = current_mod_path .. '/Input',
	},
})
---------------------------------------------------------------------------------------
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Textures")
mount_vfs_model_path	(current_mod_path.."/Cockpit/Shape")
mount_vfs_sound_path(current_mod_path.."/Sounds")
--mount_vfs_sound_path    (current_mod_path.."/Sounds") --This is obselete now
mount_vfs_model_path    (current_mod_path.."/Shapes")

dofile(current_mod_path..'/Weapons/SNO_Weapons.lua') --Called first as weapons must be defined so that ME-163B can read
dofile(current_mod_path..'/ME-163B.lua')


make_flyable('ME-163B'	, current_mod_path..'/Cockpit/Scripts/', FM, current_mod_path..'Comm/comm.lua')

plugin_done()-- finish declaration , clear temporal data
