local _, ns = ...

-- [[ Default Aura Filter ]] --
ns.defaultAuras = {
	['general'] = { },
	['boss'] = { },
}

-- [[	Default Settings	]] --
ns.defaultConfig = {
	fontNormal = 'Interface\\AddOns\\oUF_Abu\\Media\\Font\\fontSmall.ttf',
	fontNormalOutline = "NONE",
	fontNormalSize = 1, -- relative size

	fontBig = 'Interface\\AddOns\\oUF_Abu\\Media\\Font\\fontThick.ttf',
	fontBigOutline = "NONE",
	fontBigSize = 1, -- relative size

	castbars = true,
	castbarSafezoneColor = {.8, 0.4, 0, 1},
	portraitTimer = true,
	combatText = false,
	colorPlayerDebuffsOnly = true,
	largePlayerAuras = true,

	healthcolormode = 'CLASS',
	healthcolor = { 0.0, 0.1, 0.0 },

	powercolormode = 'TYPE',
	powerUseAtlas = true, --todo
	-- powerPredictionBar = true, --todoo
	powercolor = { 0.0, 0.1, 0.0 },

	backdropColor = {0, 0, 0, 0.55},

	TextHealthColor = {1, 1, 1},
	TextHealthColorMode = "CUSTOM",
	TextPowerColor = {1, 1, 1},
	TextPowerColorMode = "CUSTOM",
	TextNameColor = {1, 1, 1},
	TextNameColorMode = "CUSTOM",

	showParty = true,
	showPartyInRaid = true,
	showBoss = true,

	borderType = 'abu',
	textureBorder = 'Interface\\AddOns\\oUF_Abu\\Media\\Border\\2borderNormal',
	textureBorderWhite = 'Interface\\AddOns\\oUF_Abu\\Media\\Border\\2borderWhite',
	textureBorderShadow = 'Interface\\AddOns\\oUF_Abu\\Media\\Border\\2borderShadow',

	statusbar = 'Interface\\AddOns\\oUF_AbuRaid\\Media\\HalH',
	frameColor = {0.5, 0.5, 0.4},
	playerStyle = 'normal',
	customPlayerTexture = 'Interface\\AddOns\\oUF_Abu\\Media\\Frames\\CUSTOMPLAYER-FRAME',
	frameStyle = 'normal',

	castbarticks = true,
	useAuraTimer = true,
	clickThrough = false,
	classPortraits = false,
	combatFade = true,

	classBar = {},

	-- class stuff
	DRUID = {
		showComboPoints = true,
	},
	HUNTER = {
	},
	MAGE = {
	},
	PALADIN = {
	},
	PRIEST = {
	},
	ROGUE = {
		showComboPoints = true,
	},
	SHAMAN = {
		showTotems = true,
	},
	WARLOCK = {
		showShards = true,
	},
	WARRIOR = {
	},

 	player = {
 		style = "fat",
		scale = 1.2,
		HealthTag = "NUMERIC",
		PowerTag = "PERCENT",
		cbshow = true, 
		cbwidth = 200,
		cbheight = 18,
		cbicon = 'NONE',
		position = 'CENTER/-205/-160',
		cbposition = 'BOTTOM/0/150',
		cbscale = 1.2,
	},

	pet = {
 		style = "fat",
		scale = 1.2,
		HealthTag = "MINIMAL",
		PowerTag = "DISABLE",
		cbshow = true, 
		cbwidth = 200,
		cbheight = 18,
		cbicon = 'NONE',
		position = "BOTTOM/-217/178",
		cbposition = 'BOTTOM/0/180',
		cbscale = 1.2,
	},

	target = {
 		style = "fat",
		scale = 1.2,
		HealthTag = "BOTH",
		PowerTag = "PERCENT",
		buffPos = "LEFT",
		debuffPos = "BOTTOM",
		cbshow = true, 
		cbwidth = 200,
		cbheight = 18,
		cbicon = 'NONE',
		position = 'CENTER/205/-160',
		cbposition = 'BOTTOM/0/350',
		cbscale = 1.2,
	},
	
	targettarget = {
		enable = true,
 		style = "fat",
		scale = 1.2,
		enableAura = false,
		HealthTag = "DISABLE",
   },
	
	party = {
 		style = "fat",
		scale = 1.1,
		HealthTag = "MINIMAL",
		PowerTag = "DISABLE",
		position = 'LEFT/80/290'
	},

	boss = {
		scale = 1,
		HealthTag = "PERCENT",
		PowerTag = "PERCENT",
		cbshow = true,
		cboffset = {0, 0},
		cbwidth = 150,
		cbheight = 18,
		cbicon = 'NONE',
		position = 'RIGHT/-188/255'
	},
}
-----------------------------------------------------------------------
ns.defaultProfiles = {
	auraprofile = 'Default',
	profile = 'Default',
}