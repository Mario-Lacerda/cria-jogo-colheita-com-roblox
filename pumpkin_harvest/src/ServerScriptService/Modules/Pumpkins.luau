local module = {}

local ServerStorage = game:GetService("ServerStorage")

local DelayTime = {
	Min = 2, Max = 7
}

local TimeToGrow = {
	Min = 10, Max = 20
}

local MaxStages = 3
local MoneyOnCollect = 15

local MoneyContainer = {}

local function comma_value(amount)
	local formatted = amount
	while task.wait() do
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)","%1,%2")
		if (k==0) then
			break
		end
	end
	return formatted
end

local function SpawnStage(Area: BasePart, Stage: number): BasePart
	if Area:FindFirstChild("CurrentStage") then Area.CurrentStage:Destroy() end
	
	local CurrentStage = ServerStorage.Stages[Stage]:Clone()
	CurrentStage.Parent = Area
	CurrentStage.Name = "CurrentStage"
	CurrentStage.CFrame = Area.CFrame
	
	return CurrentStage
end

local function StartGrow(Area: BasePart)
	task.wait(math.random(DelayTime.Min, DelayTime.Max))
	
	SpawnStage(Area, 1)
	
	for i = 2, MaxStages do
		task.wait(math.random(TimeToGrow.Min, TimeToGrow.Max))
		
		SpawnStage(Area, i)
	end
	
	local ClickDetector = Instance.new("ClickDetector")
	ClickDetector.Parent = Area
	ClickDetector.MouseClick:Connect(function(Player: Player)
		if not MoneyContainer[Player.Name] then MoneyContainer[Player.Name] = 0 end
		MoneyContainer[Player.Name] += MoneyOnCollect
		
		Player.PlayerGui.MainGui.Container.Desc.Text = comma_value(tostring(MoneyContainer[Player.Name]))
		
		ClickDetector:Destroy()
		if Area:FindFirstChild("CurrentStage") then Area.CurrentStage:Destroy() end
		
		StartGrow(Area)
	end)
end

function module:Init()
	for _, Area: BasePart in workspace.PumpkinAreas:GetChildren() do
		task.spawn(StartGrow, Area)
	end
end

return module