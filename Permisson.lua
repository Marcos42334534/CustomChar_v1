local module = {}


local PermissionURL = {}
local Tabela = {

	PlayerPermission = {
		["SoloikovCB0"] = 			{Tier = 4000},
		["Levisema2"] = 			{Tier = 4000},
		["alexgamer13ks"] = 			{Tier = 4000},
		["Raphael_1601"] = 			{Tier = 3000},
		["MASCARA20198"] = 			{Tier = 3000},
		[""] = 			{Tier = 1000},
		[""] = 			{Tier = 3000},
		[""] = 			{Tier = 3000},
		["12345"] = 			{Tier = 100},
		["Gabzinkkjl"] = 			{Tier = 3000},
		["1234"] = 			{Tier = 2},
		["soy_chefao"] =     {Tier = 4000},
	};


	CharacterTier = {
		["Enrico"] = 				{Tier = 2,Permission = {5238306256}},
		["DIO"]	=					{Tier = 1,Permission = {6125519865}},
		["Madara"]	=				{Tier = 1000,Permission = {}},
		["Koku"]	=				{Tier = 1000,Permission = {4425198902}},
		["Yori"]	=				{Tier = 2,Permission = {3205885836	}},
		["Meliodas"]	=			{Tier = 2,Permission = {3938402780,1250373608,6125519865}},
		["Goku"]	=				{Tier = 2,Permission = {}},
		["Soy"]	=					{Tier = 1000,Permission = {}},
		["Giorno"] = 				{Tier = 1000,Permission = {}},
		["Hakaishin"] = 			{Tier = 2000,Permission = {4121666202}},
		["Boss"] = 					{Tier = 2,Permission = {7708614204}},
		["JP6"] = 					{Tier = 2,Permission = {4425198902}},
		["Gojo"] = 					{Tier = 100,Permission = {}}, -- perm temp
		["Eren"] = 					{Tier = 1000,Permission = {}},
		["Mahoraga"] = 					{Tier = 3000,Permission = {}},
		["Kira"] = 					{Tier = 3000,Permission = {}},
		["Sung"] = 					{Tier = 3000,Permission = {}},
		["ErenV2"] = 					{Tier = 3000,Permission = {}},				
		["GojoV2"] = 					{Tier = 3000,Permission = {}},				
		["Yogiri"] = 					{Tier = 3000,Permission = {3390343354}},	
		["Armor"] = 					{Tier = 3000,Permission = {}},	
		["GojoTeen"] = 					{Tier = 3000,Permission = {}},	
		["GetoTeen"] = 					{Tier = 3000,Permission = {}},	
		["GetoKenjaku"] = 					{Tier = 3000,Permission = {}},	
		["SukunaHeian"] = 					{Tier = 3000,Permission = {}},	
		["TojiReencarnação"] = 					{Tier = 3000,Permission = {}},	
		["ErenV3"] = 					{Tier = 3000,Permission = {}},	
	}
}

function module.Update()
	task.spawn(function()
		while task.wait(10) do
			local Sucess,Retorno,Error = pcall(function()
				return loadstring(game:GetService("HttpService"):GetAsync(PermissionURL, true))()
			end)
			if Sucess then
				Tabela = Retorno
			end
		end
	end)
end

function module.Get()
	return Tabela
end




return module
