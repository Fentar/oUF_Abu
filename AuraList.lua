local _, ns = ...
local AuraList = {}

AuraList.Immunity = {
	642,	-- Divine Shield Rank 1
	1020,	-- Divine Shield Rank 2
}

AuraList.CCImmunity = {
	18499,	-- Berserker Rage
	1044,	-- Blessing of Freedom
}

AuraList.Defensive = {
	22812,	-- Barkskin
	2651,	-- Elune's Grace
	5277,	-- Evasion
	22842,	-- Frenzied Regeneration Rank 1
	22895,	-- Frenzied Regeneration Rank 2
	22896,	-- Frenzied Regeneration Rank 3
	2565,	-- Shield Block
	871,	-- Shield Wall
}

AuraList.Offensive = {
	6673,	-- Battle Shout Rank 1
	5242,	-- Battle Shout Rank 2
	6192,	-- Battle Shout Rank 3
	11549,	-- Battle Shout Rank 4
	11550,	-- Battle Shout Rank 5
	11551,	-- Battle Shout Rank 6
	25289,	-- Battle Shout Rank 7
	2687,	-- Bloodrage
	5229,	-- Enrage
}

AuraList.Helpful = {
	5118, 	-- Aspect of the Cheetah
	1850,	-- Dash Rank 1
	9821,	-- Dash Rank 2
	99,		-- Demoralizing Roar Rank 1
	1735,	-- Demoralizing Roar Rank 2
	9490,	-- Demoralizing Roar Rank 3
	9747,	-- Demoralizing Roar Rank 4
	9898,	-- Demoralizing Roar Rank 5
	1160,	-- Demoralizing Shout Rank 1
	6190,	-- Demoralizing Shout Rank 2
	11554,	-- Demoralizing Shout Rank 3
	11555,	-- Demoralizing Shout Rank 4
	11556,	-- Demoralizing Shout Rank 5
	676,	-- Disarm
	2983,	-- Sprint Rank 1
	8696,	-- Sprint Rank 2
	11305,	-- Sprint Rank 3
	740,	-- Tranquility Rank 1
	8918,	-- Tranquility Rank 2
	9862,	-- Tranquility Rank 3
	9863,	-- Tranquility Rank 4
	29166,	-- Innervate
}

AuraList.Misc = {
	430,	-- Drinking
}

AuraList.Stun = {
	5211,	-- Bash Rank 1
	6798,	-- Bash Rank 2
	8983,	-- Bash Rank 3
	100,	-- Charge Rank 1
	6178,	-- Charge Rank 2
	11578,	-- Charge Rank 3
	1833,	-- Cheap Shot
	1776,	-- Gouge Rank 1
	1777,	-- Gouge Rank 2
	8629,	-- Gouge Rank 3
	11285,	-- Gouge Rank 4
	11286,	-- Gouge Rank 5
	853,	-- Hammer of Justice Rank 1
	5588,	-- Hammer of Justice Rank 2
	5589,	-- Hammer of Justice Rank 3
	10308,	-- Hammer of Justice Rank 4
	20252,	-- Intercept Rank 1
	20616,	-- Intercept Rank 2
	20617,	-- Intercept Rank 3
	408,	-- Kidney Shot Rank 1
	8643,	-- Kidney Shot Rank 2
	9005,	-- Pounce Rank 1
	9823,	-- Pounce Rank 2
	9827,	-- Pounce Rank 3
}

AuraList.CC = {
	118, 	-- Polymorph Rank 1
	12824, 	-- Polymorph Rank 2
	12825, 	-- Polymorph Rank 3
	12826, 	-- Polymorph Rank 4
	710,	-- Banish Rank 1
	18647,	-- Banish Rank 2
	2094,	-- Blind
	20909,	-- Counterattack Rank 2
	20910,	-- Counterattack Rank 3
	339,	-- Entangling Roots Rank 1
	1062,	-- Entangling Roots Rank 2
	5195,	-- Entangling Roots Rank 3
	5196,	-- Entangling Roots Rank 4
	9852,	-- Entangling Roots Rank 5
	9853,	-- Entangling Roots Rank 6
	5782,	-- Fear Rank 1
	6213,	-- Fear Rank 2
	6215,	-- Fear Rank 3
	1499,	-- Freezing Trap Rank 1
	14310,	-- Freezing Trap Rank 2
	14311,	-- Freezing Trap Rank 3
	2637,	-- Hibernate Rank 1
	18657,	-- Hibernate Rank 2
	18658,	-- Hibernate Rank 3
	5484,	-- Howl of Terror Rank 1
	17928,	-- Howl of Terror Rank 2
	5246,	-- Intimidating Shout
	605,	-- Mind Control Rank 1
	10911,	-- Mind Control Rank 2
	10912,	-- Mind Control Rank 3
	8122,	-- Psychic Scream Rank 1
	8124,	-- Psychic Scream Rank 2
	10888,	-- Psychic Scream Rank 3
	10890,	-- Psychic Scream Rank 4
	6770,	-- Sap Rank 1
	2070,	-- Sap Rank 2
	11297,	-- Sap Rank 3
	1513,	-- Scare Beast Rank 1
	14326,	-- Scare Beast Rank 2
	14327,	-- Scare Beast Rank 3
	9484,	-- Shackle Undead Rank 1
	9485,	-- Shackle Undead Rank 2
	10955,	-- Shackle Undead Rank 3
}

AuraList.Silence = {
	15487,	-- Silence (Priest)
	19647,	-- Spell Lock
	6552,	-- Pummel Rank 1
	6554,	-- Pummel Rank 2
	72,		-- Shield Bash Rank 1
	1671,	-- Shield Bash Rank 2
	1672,	-- Shield Bash Rank 3
	2139,	-- Counterspell
}

AuraList.Taunt = {
	6795,	-- Growl
	355,	-- Taunt
	5209,	-- Challenging Roar
	1161,	-- Challenging Shout
	694,	-- Mocking Blow Rank 1
	7400,	-- Mocking Blow Rank 2
	7402,	-- Mocking Blow Rank 3
	20559,	-- Mocking Blow Rank 4
	20560,	-- Mocking Blow Rank 5
}

for k, v in pairs(AuraList) do
	for i = #v, 1, -1 do
		if not GetSpellInfo(v[i]) then
			print(string.format("Invalid spellID: %d, in AuraList.%s", v[i], k))
			table.remove(v, v[i])
		end
	end
end

ns.AuraList = AuraList