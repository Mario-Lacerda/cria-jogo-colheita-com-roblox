local Modules = script.Parent.Modules

local ModuleContainer = {}

for _, Module: ModuleScript in Modules:GetChildren() do
	ModuleContainer[Module.Name] = require(Module)
	if ModuleContainer[Module.Name].Init then ModuleContainer[Module.Name]:Init() end
end