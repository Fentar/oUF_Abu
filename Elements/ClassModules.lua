local _, ns = ...
ns.classModule = {}

function ns.classModule.additionalPowerBar(self, config, uconfig)
	self.AdditionalPower = ns.CreateOutsideBar(self, false, 0, 0, 1)
	self.AdditionalPower.colorPower = true

	self.AdditionalPower.Value = ns.CreateFontString(self.AdditionalPower, 13, 'CENTER')
	self.AdditionalPower.Value:SetPoint('CENTER', self.AdditionalPower, 0, 0.5)
	self.AdditionalPower.Value:Hide()
	self:Tag(self.AdditionalPower.Value, '[abu:additionalpower]')
end

function ns.classModule.MAGE(self, config, uconfig)
	if (config.MAGE.showArcaneStacks) then
		MageArcaneChargesFrame:SetParent(self)
		MageArcaneChargesFrame:ClearAllPoints()
		MageArcaneChargesFrame:SetPoint('TOP', self, 'BOTTOM', 30, -0.5)
		--ns.PaintFrames(select(2, MonkHarmonyBar:GetRegions()), 0.1)
		return MageArcaneChargesFrame
	end
end

function ns.classModule.PALADIN(self, config, uconfig)
	if (config.PALADIN.showHolyPower) then
		PaladinPowerBarFrame:SetParent(self)
		PaladinPowerBarFrame:SetScale(uconfig.scale * 0.81)
		PaladinPowerBarFrame:ClearAllPoints()
		PaladinPowerBarFrame:SetPoint('TOP', self, 'BOTTOM', 27, 4)
		PaladinPowerBarFrame:SetFrameStrata("LOW");
		ns.PaintFrames(PaladinPowerBarFrameBG, 0.1)
		return PaladinPowerBarFrame
	end
end

function ns.classModule.PRIEST(self, config, uconfig)
	if (config.PRIEST.showInsanity) then
		InsanityBarFrame:SetParent(self) 
		InsanityBarFrame:ClearAllPoints()
		InsanityBarFrame:SetPoint('BOTTOMRIGHT', self, 'TOPLEFT', 52, -50)
		return InsanityBarFrame
	end
end

function ns.classModule.ROGUE(self, config, uconfig)
	if (config.ROGUE.showComboPoints) then
		local ComboPoints = CreateFrame("Frame", self:GetName()..'ComboPointsBar', self)
		ComboPoints:SetFrameStrata(self:GetFrameStrata())
		ComboPoints:SetWidth(100)
		ComboPoints:SetHeight(21)
		ComboPoints:SetPoint('TOP', self, 'BOTTOM', 29, -4)

		local ComboPointTexture = "Interface\\Addons\\oUF_Abu\\Media\\Texture\\classoverlaycombopoints.blp"

		for i = 1, 5 do
			ComboPoints[i] = CreateFrame("Frame", nil, ComboPoints)
			ComboPoints[i]:SetWidth(20)
			ComboPoints[i]:SetHeight(21)
			ComboPoints[i].Background = ComboPoints[i]:CreateTexture(nil, "BACKGROUND")
			ComboPoints[i].Background:SetAllPoints(ComboPoints[i])
			ComboPoints[i].Background:SetTexture(ComboPointTexture)
			ComboPoints[i].Background:SetTexCoord(0.609375, 0.765625, 0.328125, 0.65625)
			ComboPoints[i].Texture = ComboPoints[i]:CreateTexture(nil, "ARTWORK")
			ComboPoints[i].Texture:SetAllPoints(ComboPoints[i])
			ComboPoints[i].Texture:SetTexture(ComboPointTexture)
			ComboPoints[i].Texture:SetTexCoord(0.4375, 0.59375, 0.328125, 0.65625)

			if i == 1 then
				ComboPoints[i]:SetPoint("LEFT", ComboPoints, "LEFT", 0, 0)
			else
				ComboPoints[i]:SetPoint("LEFT", ComboPoints[i - 1], "RIGHT", 1, 0)
			end
		end
		self.ComboPointsBar = ComboPoints
		return self.ComboPointsBar
	end
end

function ns.classModule.WARLOCK(self, config, uconfig)
	if (config.WARLOCK.showShards) then
		WarlockPowerFrame:SetParent(self)
		WarlockPowerFrame:ClearAllPoints()
		WarlockPowerFrame:SetPoint('TOP', self, 'BOTTOM', 29, -2)
		if (ns.config.playerStyle == 'normal') then 
			WarlockPowerFrame:SetFrameStrata("LOW");
		end
		local shard = WarlockPowerFrame.Shards[#WarlockPowerFrame.Shards]
		while shard do
			--ns.PaintFrames(select(5,shard:GetRegions()), .2)

			shard = shard.previousShard
		end
		ns.PaintFrames(WarlockPowerFrame:GetRegions(), 0)
		return WarlockPowerFrame
	end
end

function ns.classModule.addAuraBar(self, config, uconfig)
	local Aurabar = ns.CreateOutsideBar(self, true, 1, 0, 0)
	Aurabar:SetFrameLevel(1)

	Aurabar.Visibility = function(self, event, unit)
		return false
	end
	return Aurabar
end
