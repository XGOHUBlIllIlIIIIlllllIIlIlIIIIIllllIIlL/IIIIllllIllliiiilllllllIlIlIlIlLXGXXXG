--lua语言编写/xgo全源码
local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042063815"  sound.Volume = 0.5  sound.Pitch = 1  sound.Parent = game.Workspace  sound:Play()
local xxxgoui = loadstring(game:HttpGet("https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/xxxxgo/blob/main/xgohubUI?raw=true"))()
local Notify = xxxgoui:Notify({Title="ҲƓƠӇƲƁ- goto_O R's 2.1581版\nฅ欢迎宝宝回家ฅ ҲƓƠӇƲƁ",["Description"] = "",["Color"] = Color3.fromRGB(255, 0, 255),Content = "",["Time"] = 5,["Delay"] = 10})
local xgui = xxxgoui:Start({["Name"]="【メ】【G】【Ö】【ℍ】【ⓤ】【ß】",["Description"] = "- goto_O R's 2.1581版",["Info Color"] = Color3.fromRGB(1, 1, 1),["Logo Info"] = "rbxassetid://120611289434746",["Logo Player"] = "rbxassetid://128885038925647", ["Name Info"] = "ҲƓƠӇƲƁ 欢迎宝宝回家",["Name Player"] = "ҲƓƠ",["Info Description"] = "作者:xxxxgo 群聊:259461151",["Tab Width"] = 135,["Color"] = Color3.fromRGB(255, 0, 255),["CloseCallBack"] = function()end})
local MainTab = xgui:MakeTab("x-ฅ信息ฅ")local MusicTab = xgui:MakeTab("x-ฅ音乐天堂ฅ")local AdministratorTab = xgui:MakeTab("x-ฅ管理员ฅ")local PicturequalityTab = xgui:MakeTab("x-ฅ图像画质ฅ")local UniversalTab = xgui:MakeTab("x-ฅ通用/玩家/传送ฅ")local PropsTab = xgui:MakeTab("x-ฅ道具FEฅ")local BlackholeTab = xgui:MakeTab("x-ฅ黑洞ฅ")local TalkTab = xgui:MakeTab("x-ฅ聊天中枢ฅ")local SelfishTab = xgui:MakeTab("x-ฅ自瞄透视ฅ")local LeisureTab = xgui:MakeTab("x-游戏类型-ฅ休闲模拟器ฅ")local SimulationbusinessTab = xgui:MakeTab("x-游戏-ฅ模拟经营ฅ")local ActionadventureTab = xgui:MakeTab("x-游戏类型-ฅ动作冒险ฅ")local ShotTab = xgui:MakeTab("x-游戏类型-ฅ竞技ฅ")local HorrorTab = xgui:MakeTab("x-游戏类型-ฅ恐怖ฅ")local AudioTab = xgui:MakeTab("x-游戏类型-ฅ音游ฅ")local AsymmetriccompetitiveTab = xgui:MakeTab("x-游戏类型-ฅ非对称竞技ฅ")local TowerDefenseTab = xgui:MakeTab("x-游戏类型-ฅ塔防ฅ")local DrivingTab = xgui:MakeTab("x-游戏类型-ฅ载具驾驶ฅ")local ParkourTab = xgui:MakeTab("x-游戏类型-ฅ跑酷obbyฅ")local RNGTab = xgui:MakeTab("x-游戏类型-ฅ创意玩法ฅ[RNG]")local XTab = xgui:MakeTab("x-[游戏]")local ScriptTab = xgui:MakeTab("x-ฅ其他脚本ฅ")
-- 定义传送函数
function teleportToGame(placeId)
    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")
    local player = Players.LocalPlayer
    TeleportService:Teleport(placeId, player)
end
xgo = UniversalTab:Section({Title = "x-ฅ玩家传送ฅ",Content = "ฅ玩家传送ฅ"})
--lua语言编写/xgo全源码
local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042063815"  sound.Volume = 0.5  sound.Pitch = 1  sound.Parent = game.Workspace  sound:Play()
local xxxgoui = loadstring(game:HttpGet("https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/xxxxgo/blob/main/xgohubUI?raw=true"))()
local Notify = xxxgoui:Notify({Title="ҲƓƠӇƲƁ- goto_O R's 2.1581版\nฅ欢迎宝宝回家ฅ ҲƓƠӇƲƁ",["Description"] = "",["Color"] = Color3.fromRGB(255, 0, 255),Content = "",["Time"] = 5,["Delay"] = 10})
local xgui = xxxgoui:Start({["Name"]="【メ】【G】【Ö】【ℍ】【ⓤ】【ß】",["Description"] = "- goto_O R's 2.1581版",["Info Color"] = Color3.fromRGB(1, 1, 1),["Logo Info"] = "rbxassetid://120611289434746",["Logo Player"] = "rbxassetid://128885038925647", ["Name Info"] = "ҲƓƠӇƲƁ 欢迎宝宝回家",["Name Player"] = "ҲƓƠ",["Info Description"] = "作者:xxxxgo 群聊:259461151",["Tab Width"] = 135,["Color"] = Color3.fromRGB(255, 0, 255),["CloseCallBack"] = function()end})
local MainTab = xgui:MakeTab("x-ฅ信息ฅ")local MusicTab = xgui:MakeTab("x-ฅ音乐天堂ฅ")local AdministratorTab = xgui:MakeTab("x-ฅ管理员ฅ")local PicturequalityTab = xgui:MakeTab("x-ฅ图像画质ฅ")local UniversalTab = xgui:MakeTab("x-ฅ通用/玩家/传送ฅ")local PropsTab = xgui:MakeTab("x-ฅ道具FEฅ")local BlackholeTab = xgui:MakeTab("x-ฅ黑洞ฅ")local TalkTab = xgui:MakeTab("x-ฅ聊天中枢ฅ")local SelfishTab = xgui:MakeTab("x-ฅ自瞄透视ฅ")local LeisureTab = xgui:MakeTab("x-游戏类型-ฅ休闲模拟器ฅ")local SimulationbusinessTab = xgui:MakeTab("x-游戏-ฅ模拟经营ฅ")local ActionadventureTab = xgui:MakeTab("x-游戏类型-ฅ动作冒险ฅ")local ShotTab = xgui:MakeTab("x-游戏类型-ฅ竞技ฅ")local HorrorTab = xgui:MakeTab("x-游戏类型-ฅ恐怖ฅ")local AudioTab = xgui:MakeTab("x-游戏类型-ฅ音游ฅ")local AsymmetriccompetitiveTab = xgui:MakeTab("x-游戏类型-ฅ非对称竞技ฅ")local TowerDefenseTab = xgui:MakeTab("x-游戏类型-ฅ塔防ฅ")local DrivingTab = xgui:MakeTab("x-游戏类型-ฅ载具驾驶ฅ")local ParkourTab = xgui:MakeTab("x-游戏类型-ฅ跑酷obbyฅ")local RNGTab = xgui:MakeTab("x-游戏类型-ฅ创意玩法ฅ[RNG]")local XTab = xgui:MakeTab("x-[游戏]")local ScriptTab = xgui:MakeTab("x-ฅ其他脚本ฅ")
-- 定义传送函数
function teleportToGame(placeId)
    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")
    local player = Players.LocalPlayer
    TeleportService:Teleport(placeId, player)
end
xgo = UniversalTab:Section({Title = "x-ฅ玩家传送ฅ",Content = "ฅ玩家传送ฅ"})
local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 81) then
			v19 = v0(v3(v30, 1, 1));
			return "";
		else
			local v91 = 0;
			local v92;
			while true do
				if (v91 == 0) then
					v92 = v2(v0(v30, 16));
					if v19 then
						local v120 = v5(v92, v19);
						v19 = nil;
						return v120;
					else
						return v92;
					end
					break;
				end
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v93 = (v31 / (2 ^ (v32 - (2 - 1)))) % (((882 - (282 + 595)) - (1640 - (1523 + 114))) ^ (((v33 - (1 - 0)) - (v32 - (2 - 1))) + (620 - (555 + 64))));
			return v93 - (v93 % (932 - (857 + 74)));
		else
			local v94 = (570 - (367 + 201)) ^ (v32 - (928 - (214 + 713)));
			return (((v31 % (v94 + v94)) >= v94) and (1 + 0 + 0)) or (0 + 0);
		end
	end
	local function v21()
		local v34 = v1(v16, v18, v18);
		v18 = v18 + 1;
		return v34;
	end
	local function v22()
		local v35 = 0;
		local v36;
		local v37;
		while true do
			if (v35 == (1 - 0)) then
				return (v37 * (251 + 5)) + v36;
			end
			if (v35 == ((2540 - 1475) - (68 + 997))) then
				v36, v37 = v1(v16, v18, v18 + (1272 - ((417 - 191) + 1044)));
				v18 = v18 + 2;
				v35 = (7 - 3) - 3;
			end
		end
	end
	local function v23()
		local v38 = 0;
		local v39;
		local v40;
		local v41;
		local v42;
		while true do
			if (v38 == (351 - (87 + 263))) then
				return (v42 * (16777396 - (67 + 113))) + (v41 * (48056 + (31708 - 14228))) + (v40 * ((458 + 170) - 372)) + v39;
			end
			if (v38 == (0 + 0)) then
				v39, v40, v41, v42 = v1(v16, v18, v18 + (11 - 8));
				v18 = v18 + (956 - ((1799 - (915 + 82)) + 150));
				v38 = (5 - 3) - 1;
			end
		end
	end
	local function v24()
		local v43 = 0;
		local v44;
		local v45;
		local v46;
		local v47;
		local v48;
		local v49;
		while true do
			if (v43 == (2 + 1)) then
				if (v48 == (0 - 0)) then
					if (v47 == (1187 - (1069 + 118))) then
						return v49 * ((0 + 0) - (0 - 0));
					else
						v48 = 1;
						v46 = 0 - 0;
					end
				elseif (v48 == ((1264 - 908) + 1691)) then
					return ((v47 == (0 - 0)) and (v49 * (1 / ((859 - (814 + 45)) + (0 - 0))))) or (v49 * NaN);
				end
				return v8(v49, v48 - (1814 - (20 + 348 + 423))) * (v46 + (v47 / (((3 + 3) - 4) ^ (70 - (10 + 8)))));
			end
			if (v43 == (7 - 5)) then
				v48 = v20(v45, 21, 473 - (416 + 26));
				v49 = ((v20(v45, 102 - 70) == (1 + (885 - (261 + 624)))) and -(1 - (0 - 0))) or (439 - (145 + 293));
				v43 = (1513 - (1020 + 60)) - (44 + 386);
			end
			if (v43 == ((2910 - (630 + 793)) - (998 + 488))) then
				v46 = 1 + 0;
				v47 = (v20(v45, 1, 17 + 3) * ((774 - (201 + 571)) ^ (1170 - ((392 - 276) + 1022)))) + v44;
				v43 = 2;
			end
			if (v43 == (0 - 0)) then
				v44 = v23();
				v45 = v23();
				v43 = 4 - (2 + 1);
			end
		end
	end
	local function v25(v50)
		local v51;
		if not v50 then
			local v95 = 0 - 0;
			while true do
				if (v95 == (1747 - (760 + (2715 - 1728)))) then
					v50 = v23();
					if (v50 == ((7503 - 5590) - (1789 + 124))) then
						return "";
					end
					break;
				end
			end
		end
		v51 = v3(v16, v18, (v18 + v50) - (767 - (7 + 738 + 21)));
		v18 = v18 + v50;
		local v52 = {};
		for v68 = 1 + 0, #v51 do
			v52[v68] = v2(v1(v3(v51, v68, v68)));
		end
		return v6(v52);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v53 = (function()
			return function(v96, v97, v98, v99, v100, v101, v102, v103, v104)
				local v105 = (function()
					return 0 - 0;
				end)();
				local v96 = (function()
					return;
				end)();
				local v97 = (function()
					return;
				end)();
				while true do
					if (v105 ~= (572 - (426 + 146))) then
					else
						local v118 = (function()
							return 0 - 0;
						end)();
						while true do
							if (v118 ~= (1 + 0)) then
							else
								v105 = (function()
									return 286 - (134 + 151);
								end)();
								break;
							end
							if (v118 == (811 - (569 + 242))) then
								v96 = (function()
									return 0;
								end)();
								v97 = (function()
									return nil;
								end)();
								v118 = (function()
									return 1;
								end)();
							end
						end
					end
					if (v105 == 1) then
						local v119 = (function()
							return 1665 - (970 + 695);
						end)();
						while true do
							if (v119 == 0) then
								while true do
									if (v96 == (0 - 0)) then
										v97 = (function()
											return v98();
										end)();
										if (v99(v97, #" ", #"!") ~= (1990 - (582 + 1408))) then
										else
											local v126 = (function()
												return 0;
											end)();
											local v127 = (function()
												return;
											end)();
											local v128 = (function()
												return;
											end)();
											local v129 = (function()
												return;
											end)();
											local v130 = (function()
												return;
											end)();
											while true do
												if (v126 == 1) then
													local v226 = (function()
														return 0 + 0;
													end)();
													while true do
														if (1 ~= v226) then
														else
															v126 = (function()
																return 6 - 4;
															end)();
															break;
														end
														if (v226 == (0 - 0)) then
															v129 = (function()
																return nil;
															end)();
															v130 = (function()
																return nil;
															end)();
															v226 = (function()
																return 1;
															end)();
														end
													end
												end
												if (v126 == 2) then
													while true do
														if (v127 == #"nil") then
															if (v99(v129, #"xnx", #"nil") ~= #"]") then
															else
																v130[#"asd1"] = (function()
																	return v100[v130[#"0836"]];
																end)();
															end
															v101[v102] = (function()
																return v130;
															end)();
															break;
														end
														if (#"{" ~= v127) then
														else
															local v362 = (function()
																return 0;
															end)();
															local v363 = (function()
																return;
															end)();
															while true do
																if ((0 - 0) ~= v362) then
																else
																	v363 = (function()
																		return 1824 - (1195 + 629);
																	end)();
																	while true do
																		if (v363 == (1 - 0)) then
																			v127 = (function()
																				return 243 - (187 + 54);
																			end)();
																			break;
																		end
																		if (v363 ~= (780 - (162 + 618))) then
																		else
																			v130 = (function()
																				return {v103(),v103(),nil,nil};
																			end)();
																			if (v128 == (0 + 0)) then
																				local v451 = (function()
																					return 0;
																				end)();
																				while true do
																					if (v451 == (0 + 0)) then
																						v130[#"xnx"] = (function()
																							return v103();
																						end)();
																						v130[#".dev"] = (function()
																							return v103();
																						end)();
																						break;
																					end
																				end
																			elseif (v128 == #" ") then
																				v130[#"nil"] = (function()
																					return v104();
																				end)();
																			elseif (v128 == 2) then
																				v130[#"91("] = (function()
																					return v104() - ((1088 - (461 + 625)) ^ (33 - 17));
																				end)();
																			elseif (v128 ~= #"asd") then
																			else
																				local v461 = (function()
																					return 0;
																				end)();
																				local v462 = (function()
																					return;
																				end)();
																				while true do
																					if (v461 ~= 0) then
																					else
																						v462 = (function()
																							return 0 + 0;
																						end)();
																						while true do
																							if (v462 == (0 - 0)) then
																								v130[#"19("] = (function()
																									return v104() - ((1 + 1) ^ (1187 - (418 + 753)));
																								end)();
																								v130[#".dev"] = (function()
																									return v103();
																								end)();
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																			v363 = (function()
																				return 1;
																			end)();
																		end
																	end
																	break;
																end
															end
														end
														if (v127 ~= (1636 - (1373 + 263))) then
														else
															local v364 = (function()
																return 1000 - (451 + 549);
															end)();
															while true do
																if (v364 == (0 + 0)) then
																	v128 = (function()
																		return v99(v97, 1 + 1, #"asd");
																	end)();
																	v129 = (function()
																		return v99(v97, #"0836", 9 - 3);
																	end)();
																	v364 = (function()
																		return 1770 - (1749 + 20);
																	end)();
																end
																if (v364 ~= (1 - 0)) then
																else
																	v127 = (function()
																		return #"/";
																	end)();
																	break;
																end
															end
														end
														if (v127 == 2) then
															local v365 = (function()
																return 0;
															end)();
															local v366 = (function()
																return;
															end)();
															while true do
																if (v365 == 0) then
																	v366 = (function()
																		return 0 + 0;
																	end)();
																	while true do
																		if (v366 ~= (1322 - (1249 + 73))) then
																		else
																			if (v99(v129, #"}", #"|") ~= #":") then
																			else
																				v130[1386 - (746 + 638)] = (function()
																					return v100[v130[2]];
																				end)();
																			end
																			if (v99(v129, 2, 1 + 1) == #" ") then
																				v130[#"xnx"] = (function()
																					return v100[v130[#"91("]];
																				end)();
																			end
																			v366 = (function()
																				return 1;
																			end)();
																		end
																		if (v366 == (1146 - (466 + 679))) then
																			v127 = (function()
																				return #"91(";
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														end
													end
													break;
												end
												if (v126 ~= (0 - 0)) then
												else
													v127 = (function()
														return 341 - (218 + 123);
													end)();
													v128 = (function()
														return nil;
													end)();
													v126 = (function()
														return 1;
													end)();
												end
											end
										end
										break;
									end
								end
								return v96, v97, v98, v99, v100, v101, v102, v103, v104;
							end
						end
					end
				end
			end;
		end)();
		local v54 = (function()
			return function(v106, v107, v108)
				local v109 = (function()
					return 1581 - (1535 + 46);
				end)();
				local v110 = (function()
					return;
				end)();
				while true do
					if (v109 == (0 + 0)) then
						v110 = (function()
							return 0 + 0;
						end)();
						while true do
							if (v110 == (0 + 0)) then
								local v123 = (function()
									return 0;
								end)();
								local v124 = (function()
									return;
								end)();
								while true do
									if (v123 ~= 0) then
									else
										v124 = (function()
											return 0 - 0;
										end)();
										while true do
											if (v124 == (0 - 0)) then
												v106[v107 - #"{"] = (function()
													return v108();
												end)();
												return v106, v107, v108;
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
				end
			end;
		end)();
		local v55 = (function()
			return {};
		end)();
		local v56 = (function()
			return {};
		end)();
		local v57 = (function()
			return {};
		end)();
		local v58 = (function()
			return {v55,v56,nil,v57};
		end)();
		local v59 = (function()
			return v23();
		end)();
		local v60 = (function()
			return {};
		end)();
		for v70 = #"\\", v59 do
			local v71 = (function()
				return 0;
			end)();
			local v72 = (function()
				return;
			end)();
			local v73 = (function()
				return;
			end)();
			local v74 = (function()
				return;
			end)();
			while true do
				if (v71 ~= (584 - (57 + 527))) then
				else
					v72 = (function()
						return 1427 - (41 + 1386);
					end)();
					v73 = (function()
						return nil;
					end)();
					v71 = (function()
						return 1;
					end)();
				end
				if (v71 ~= 1) then
				else
					v74 = (function()
						return nil;
					end)();
					while true do
						if ((561 - (306 + 254)) ~= v72) then
						else
							if (v73 == #"\\") then
								v74 = (function()
									return v21() ~= (0 + 0);
								end)();
							elseif (v73 == (3 - 1)) then
								v74 = (function()
									return v24();
								end)();
							elseif (v73 == #"asd") then
								v74 = (function()
									return v25();
								end)();
							end
							v60[v70] = (function()
								return v74;
							end)();
							break;
						end
						if (v72 == (1467 - (899 + 568))) then
							local v122 = (function()
								return 0 - 0;
							end)();
							while true do
								if (v122 == (2 - 1)) then
									v72 = (function()
										return 1 + 0;
									end)();
									break;
								end
								if (v122 == 0) then
									local v125 = (function()
										return 0;
									end)();
									while true do
										if (v125 ~= (2 - 1)) then
										else
											v122 = (function()
												return 604 - (268 + 335);
											end)();
											break;
										end
										if (v125 == (0 - 0)) then
											v73 = (function()
												return v21();
											end)();
											v74 = (function()
												return nil;
											end)();
											v125 = (function()
												return 1 + 0;
											end)();
										end
									end
								end
							end
						end
					end
					break;
				end
			end
		end
		v58[#"91("] = (function()
			return v21();
		end)();
		for v75 = #"}", v23() do
			FlatIdent_39B0, Descriptor, v21, v20, v60, v55, v75, v22, v23 = (function()
				return v53(FlatIdent_39B0, Descriptor, v21, v20, v60, v55, v75, v22, v23);
			end)();
		end
		for v76 = #".", v23() do
			v56, v76, v28 = (function()
				return v54(v56, v76, v28);
			end)();
		end
		return v58;
	end
	local function v29(v62, v63, v64)
		local v65 = v62[1 + 0];
		local v66 = v62[3 - 1];
		local v67 = v62[68 - (30 + 35)];
		return function(...)
			local v77 = v65;
			local v78 = v66;
			local v79 = v67;
			local v80 = v27;
			local v81 = 1 + 0;
			local v82 = -(1 + 0);
			local v83 = {};
			local v84 = {...};
			local v85 = v12("#", ...) - (2 - 1);
			local v86 = {};
			local v87 = {};
			for v111 = 0 + 0, v85 do
				if (v111 >= v79) then
					v83[v111 - v79] = v84[v111 + (3 - 2)];
				else
					v87[v111] = v84[v111 + (1213 - (323 + 889))];
				end
			end
			local v88 = (v85 - v79) + (2 - 1);
			local v89;
			local v90;
			while true do
				v89 = v77[v81];
				v90 = v89[581 - (361 + 219)];
				if (v90 <= (37 + 7)) then
					if (v90 <= (341 - (53 + 267))) then
						if (v90 <= (3 + 7)) then
							if (v90 <= (417 - (15 + 398))) then
								if ((1808 == 1808) and (v90 <= (983 - (18 + 964)))) then
									if ((v90 == 0) or (1224 <= 739)) then
										v87[v89[7 - 5]] = v87[v89[2 + 1]] % v89[3 + 1 + 0];
									else
										local v133 = v89[2 + 0];
										v87[v133](v87[v133 + (851 - (20 + 830))]);
									end
								elseif (v90 <= (2 + 0)) then
									local v134 = v89[128 - (116 + 10)];
									local v135 = v89[1 + 3];
									local v136 = v134 + (740 - (542 + (371 - (135 + 40))));
									local v137 = {v87[v134](v87[v134 + 1 + 0], v87[v136])};
									for v201 = 1 - 0, v135 do
										v87[v136 + v201] = v137[v201];
									end
									local v138 = v137[1050 - (572 + (1155 - 678))];
									if v138 then
										local v227 = 0 + 0 + (0 - 0);
										while true do
											if ((0 + 0) == v227) then
												v87[v136] = v138;
												v81 = v89[2 + 1];
												break;
											end
										end
									else
										v81 = v81 + (2 - (1 - 0));
									end
								elseif (v90 > (4 - 1)) then
									local v228 = 0 - 0;
									local v229;
									local v230;
									local v231;
									local v232;
									while true do
										if ((1551 - (1126 + 425)) == v228) then
											v229 = v89[407 - (118 + 287)];
											v230, v231 = v80(v87[v229](v87[v229 + 1 + 0]));
											v228 = 3 - 2;
										end
										if (v228 == 1) then
											v82 = (v231 + v229) - (1122 - (118 + 1003));
											v232 = (176 - (50 + 126)) - 0;
											v228 = (1055 - 676) - (142 + 235);
										end
										if (v228 == ((2 + 7) - 7)) then
											for v387 = v229, v82 do
												local v388 = 0;
												while true do
													if ((2902 == 2902) and (v388 == ((1413 - (1233 + 180)) + 0))) then
														v232 = v232 + ((1947 - (522 + 447)) - (553 + 424));
														v87[v387] = v230[v232];
														break;
													end
												end
											end
											break;
										end
									end
								else
									local v233 = 0 - 0;
									local v234;
									while true do
										if (v233 == 0) then
											v234 = v89[2 + 0];
											do
												return v87[v234](v13(v87, v234 + 1 + (1421 - (107 + 1314)), v89[2 + 1]));
											end
											break;
										end
									end
								end
							elseif (v90 <= (7 + 0)) then
								if ((427 < 3468) and (v90 <= (3 + 2))) then
									do
										return;
									end
								elseif ((4190 >= 2804) and (v90 == (2 + 1 + 3))) then
									v87[v89[2 + (0 - 0)]] = v89[6 - 3] + v87[v89[11 - 7]];
								else
									local v236 = v89[4 - 2];
									local v237 = v87[v236 + 1 + 1];
									local v238 = v87[v236] + v237;
									v87[v236] = v238;
									if ((2086 == 2086) and (v237 > (0 - 0))) then
										if (v238 <= v87[v236 + (754 - (239 + 514))]) then
											local v389 = 0 + 0;
											while true do
												if (v389 == ((278 + 375) - (232 + 421))) then
													v81 = v89[1332 - (797 + 532)];
													v87[v236 + 3 + 0] = v238;
													break;
												end
											end
										end
									elseif ((4148 > 2733) and (v238 >= v87[v236 + 1 + 0])) then
										v81 = v89[6 - 3];
										v87[v236 + (608 - (316 + 289))] = v238;
									end
								end
							elseif (v90 <= (1210 - (373 + 829))) then
								local v139 = v89[733 - (476 + (506 - 251))];
								v87[v139](v13(v87, v139 + (1131 - (369 + 761)), v89[(3 - 2) + 2]));
							elseif (v90 == 9) then
								if (v87[v89[2 + 0]] ~= v89[4]) then
									v81 = v81 + (1 - 0);
								else
									v81 = v89[5 - 2];
								end
							else
								local v240 = 238 - (64 + (2084 - (716 + 1194)));
								local v241;
								local v242;
								local v243;
								while true do
									if (v240 == (426 - (360 + 65))) then
										v243 = 0;
										for v392 = v241, v89[1 + 3] do
											v243 = v243 + (1 - 0);
											v87[v392] = v242[v243];
										end
										break;
									end
									if (v240 == (336 - (144 + 192))) then
										v241 = v89[218 - (42 + 174)];
										v242 = {v87[v241](v13(v87, v241 + 1 + 0, v82))};
										v240 = 1 + 0;
									end
								end
							end
						elseif (v90 <= (1519 - (363 + 20 + 1121))) then
							if (v90 <= (1592 - (1183 + 397))) then
								if ((3054 >= 1605) and (v90 == (33 - 22))) then
									if not v87[v89[2 + 0 + 0]] then
										v81 = v81 + (1 - 0);
									else
										v81 = v89[3 + 0];
									end
								else
									local v140 = v89[1977 - ((2416 - (74 + 429)) + 62)];
									v87[v140] = v87[v140](v87[v140 + 1 + (0 - 0)]);
								end
							elseif (v90 <= (34 - 21)) then
								local v142 = 0 - 0;
								local v143;
								while true do
									if ((1044 < 1519) and (v142 == (1933 - (565 + 1368)))) then
										v143 = v89[7 - 5];
										v87[v143](v87[v143 + (1662 - (1477 + 184))]);
										break;
									end
								end
							elseif ((1707 <= 4200) and (v90 > (7 + 7))) then
								v87[v89[2 - 0]] = v87[v89[3 + 0]];
							else
								v87[v89[858 - (564 + 292)]]();
							end
						elseif ((580 == 580) and (v90 <= 18)) then
							if (v90 <= 16) then
								v87[v89[2 - 0]] = v64[v89[3]];
							elseif (v90 == 17) then
								v87[v89[1246 - (485 + 759)]] = v87[v89[3]] + v89[11 - (4 + 3)];
							elseif (v89[(700 - 394) - (244 + 60)] < v87[v89[4 + 0]]) then
								v81 = v81 + (477 - (30 + 11 + 435));
							else
								v81 = v89[1004 - (938 + 63)];
							end
						elseif ((601 <= 999) and (v90 <= (15 + (12 - 8)))) then
							for v204 = v89[1127 - ((2314 - 1378) + 189)], v89[1 + 2] do
								v87[v204] = nil;
							end
						elseif (v90 > (7 + 13)) then
							if (v87[v89[2]] == v89[1617 - (1565 + 48)]) then
								v81 = v81 + 1 + 0;
							else
								v81 = v89[1141 - (782 + 356)];
							end
						else
							v87[v89[269 - ((609 - (279 + 154)) + 91)]][v89[(785 - (454 + 324)) - (4 + 0)]] = v87[v89[5 - 1]];
						end
					elseif ((3970 == 3970) and (v90 <= (1124 - (975 + 117)))) then
						if (v90 <= (1901 - (157 + 1718))) then
							if (v90 <= (19 + (21 - (12 + 5)))) then
								if (v90 == (16 + 6)) then
									v87[v89[3 - (1 + 0)]] = v87[v89[10 - 7]][v89[1484 - (641 + 839)]];
								else
									v87[v89[6 - 4]] = v63[v89[1021 - (697 + 321)]];
								end
							elseif (v90 <= (65 - 41)) then
								v81 = v89[5 - 2];
							elseif (v90 > (57 - 32)) then
								v87[v89[1 + 1]] = v87[v89[5 - 2]] % v87[v89[10 - 6]];
							else
								local v251 = v89[1229 - ((820 - 498) + 905)];
								v87[v251] = v87[v251](v13(v87, v251 + (612 - (602 + 9)), v89[1192 - (449 + 740)]));
							end
						elseif ((v90 <= (901 - (826 + 17 + 29))) or (98 == 208)) then
							if (v90 <= (974 - (245 + 702))) then
								v87[v89[6 - 4]] = v87[v89[742 - (396 + 343)]] % v87[v89[1 + 3]];
							elseif ((2006 <= 3914) and (v90 > (10 + 18))) then
								if (v87[v89[(2484 - (277 + 816)) - (135 + 1254)]] ~= v89[1902 - (260 + 1638)]) then
									v81 = v81 + (441 - (382 + 58));
								else
									v81 = v89[2 + 1];
								end
							else
								local v253 = (0 - 0) - (1183 - (1058 + 125));
								local v254;
								local v255;
								while true do
									if (v253 == (1528 - (73 + 316 + 1138))) then
										v87[v254 + 1 + (975 - (815 + 160))] = v255;
										v87[v254] = v255[v89[8 - 4]];
										break;
									end
									if (v253 == (0 - 0)) then
										v254 = v89[(5178 - 3971) - (902 + 303)];
										v255 = v87[v89[5 - 2]];
										v253 = 2 - 1;
									end
								end
							end
						elseif (v90 <= (3 + 27)) then
							local v152 = v89[1692 - (1121 + 569)];
							local v153 = {v87[v152](v13(v87, v152 + (684 - (483 + 200)), v82))};
							local v154 = 1545 - (320 + 1225);
							for v206 = v152, v89[4] do
								v154 = v154 + (1464 - (1404 + 59));
								v87[v206] = v153[v154];
							end
						elseif ((v90 == (84 - 53)) or (3101 <= 2971)) then
							local v256 = 0 - 0;
							local v257;
							local v258;
							local v259;
							while true do
								if (v256 == (766 - (468 + 297))) then
									v259 = {};
									v258 = v10({}, {__index=function(v395, v396)
										local v397 = 562 - (334 + 228);
										local v398;
										while true do
											if (v397 == (0 - 0)) then
												v398 = v259[v396];
												return v398[2 - 1][v398[2 - 0]];
											end
										end
									end,__newindex=function(v399, v400, v401)
										local v402 = 0 + 0;
										local v403;
										while true do
											if ((v402 == (0 + 0)) or (2073 <= 671)) then
												v403 = v259[v400];
												v403[237 - (141 + 95)][v403[2 + 0]] = v401;
												break;
											end
										end
									end});
									v256 = 1 + 1;
								end
								if ((3305 > 95) and (v256 == (0 - 0))) then
									v257 = v78[v89[1 + 2]];
									v258 = nil;
									v256 = 2 - (1899 - (41 + 1857));
								end
								if (v256 == (1 + 1)) then
									for v404 = 1 + 0, v89[10 - 6] do
										v81 = v81 + 1 + 0;
										local v405 = v77[v81];
										if ((2727 == 2727) and (v405[1 + 0] == ((1914 - (1222 + 671)) - 6))) then
											v259[v404 - (1 + 0)] = {v87,v405[166 - (92 + 71)]};
										else
											v259[v404 - (1 + (1182 - (229 + 953)))] = {v63,v405[3 + 0]};
										end
										v86[#v86 + (1 - 0)] = v259;
									end
									v87[v89[4 - 2]] = v29(v257, v258, v64);
									break;
								end
							end
						else
							local v260 = v89[(2541 - (1111 + 663)) - (574 + 191)];
							v87[v260](v13(v87, v260 + 1 + 0, v82));
						end
					elseif (v90 <= (94 - 56)) then
						if (v90 <= (18 + 17)) then
							if (v90 <= (882 - (254 + 595))) then
								v87[v89[719 - (373 + 344)]][v87[v89[129 - (55 + 71)]]] = v89[4];
							elseif ((v90 > ((1623 - (874 + 705)) - 10)) or (2970 >= 4072)) then
								v87[v89[1 + 0 + 1 + 0]] = v87[v89[1793 - ((1190 - 617) + 35 + 1182)]];
							else
								v87[v89[5 - 3]][v87[v89[1 + 2]]] = v87[v89[5 - 1]];
							end
						elseif (v90 <= (975 - (714 + 225))) then
							if (v89[5 - 3] == v87[v89[5 - 1]]) then
								v81 = v81 + 1 + 0;
							else
								v81 = v89[3 - 0];
							end
						elseif ((3881 > 814) and (v90 == (843 - (118 + 688)))) then
							local v266 = 48 - (25 + 23);
							local v267;
							while true do
								if (v266 == (0 + 0)) then
									v267 = v89[1888 - (927 + 959)];
									do
										return v13(v87, v267, v82);
									end
									break;
								end
							end
						else
							v63[v89[1 + (681 - (642 + 37))]] = v87[v89[6 - 4]];
						end
					elseif (v90 <= (773 - (16 + 164 + 552))) then
						if ((v90 <= ((12 + 62) - (87 - 52))) or (4932 < 4868)) then
							v87[v89[1 + 1]][v87[v89[100 - (11 + 86)]]] = v89[9 - 5];
						elseif (v90 == (325 - (175 + (564 - (233 + 221))))) then
							v87[v89[4 - 2]][v89[14 - 11]] = v87[v89[1800 - (503 + 1293)]];
						else
							v87[v89[5 - 3]] = {};
						end
					elseif (v90 <= (31 + (25 - 14))) then
						local v159 = v78[v89[3]];
						local v160;
						local v161 = {};
						v160 = v10({}, {__index=function(v209, v210)
							local v211 = v161[v210];
							return v211[1][v211[1063 - (810 + 251)]];
						end,__newindex=function(v212, v213, v214)
							local v215 = 0 + 0;
							local v216;
							while true do
								if ((21 - (20 + 1)) == v215) then
									v216 = v161[v213];
									v216[1 + 0][v216[2 + 0]] = v214;
									break;
								end
							end
						end});
						for v217 = 534 - (43 + 490), v89[(2278 - (718 + 823)) - (711 + 22)] do
							v81 = v81 + (3 - 2);
							local v218 = v77[v81];
							if ((3667 <= 4802) and (v218[686 - (314 + 234 + 137)] == (874 - (240 + (1424 - (266 + 539)))))) then
								v161[v217 - (1 + 0)] = {v87,v218[1747 - (1344 + 400)]};
							else
								v161[v217 - (1380 - (1055 + 324))] = {v63,v218[2 + 1]};
							end
							v86[#v86 + (4 - 3)] = v161;
						end
						v87[v89[7 - 5]] = v29(v159, v160, v64);
					elseif (v90 == (138 - 95)) then
						v87[v89[1741 - (404 + 1335)]] = v89[409 - (183 + 223)] ~= (0 - 0);
					else
						local v274 = v89[2];
						v87[v274](v13(v87, v274 + 1 + 0, v82));
					end
				elseif (v90 <= (24 + (1267 - (636 + 589)))) then
					if (v90 <= (392 - (10 + 327))) then
						if (v90 <= (188 - 139)) then
							if (v90 <= (33 + (30 - 17))) then
								if ((1260 >= 858) and (v90 == (383 - (118 + 220)))) then
									do
										return;
									end
								else
									local v163 = 0 + 0;
									local v164;
									local v165;
									local v166;
									while true do
										if (((925 - 476) - (108 + 341)) == v163) then
											v164 = v89[690 - (289 + 75 + 324)];
											v165 = v87[v164];
											v163 = 1 + 0 + 0;
										end
										if (v163 == (2 - 1)) then
											v166 = v87[v164 + (8 - 6)];
											if ((v166 > (1493 - (711 + 782))) or (3911 == 4700)) then
												if (v165 > v87[v164 + (1 - 0)]) then
													v81 = v89[472 - (270 + 199)];
												else
													v87[v164 + 1 + 2] = v165;
												end
											elseif ((3000 < 4194) and (v165 < v87[v164 + (1820 - (580 + 1239))])) then
												v81 = v89[8 - (1020 - (657 + 358))];
											else
												v87[v164 + 3 + (0 - 0)] = v165;
											end
											break;
										end
									end
								end
							elseif (v90 <= (182 - 135)) then
								v87[v89[1 + 1]] = v87[v89[3]][v89[2 + 2]];
							elseif ((651 < 4442) and (v90 > (38 + (22 - 12)))) then
								if ((v89[4 - 2] == v87[v89[(1190 - (1151 + 36)) + 1]]) or (195 >= 1804)) then
									v81 = v81 + (812 - (721 + 90));
								else
									v81 = v89[1 + 2];
								end
							else
								v87[v89[1169 - (645 + 522)]] = v89[473 - (224 + 238 + 8)] ~= (1790 - (266 + 744 + (2329 - 1549)));
							end
						elseif ((v90 <= (52 + 0)) or (1382 > 2216)) then
							if ((v90 <= (238 - 188)) or (2861 == 2459)) then
								local v169 = 0 - 0;
								local v170;
								while true do
									if ((1903 < 4021) and (v169 == ((3668 - (1552 + 280)) - (1045 + 791)))) then
										v170 = v89[4 - 2];
										do
											return v13(v87, v170, v82);
										end
										break;
									end
								end
							elseif ((v90 == (2 + 49)) or (2270 >= 4130)) then
								if ((2593 <= 3958) and v87[v89[2 - 0]]) then
									v81 = v81 + ((1340 - (64 + 770)) - (351 + 154));
								else
									v81 = v89[3];
								end
							elseif (v87[v89[1576 - (1281 + 293)]] ~= v87[v89[(9 + 3) - 8]]) then
								v81 = v81 + (267 - (28 + 238));
							else
								v81 = v89[6 - 3];
							end
						elseif ((1176 == 1176) and (v90 <= (4 + 49))) then
							v87[v89[1561 - (1381 + 178)]] = v87[v89[3 + (0 - 0)]] % v89[4 + 0];
						elseif ((v90 == (24 + 30)) or (3062 == 1818)) then
							local v276 = 0 - 0;
							local v277;
							while true do
								if ((v276 == ((154 + 710) - (196 + 668))) or (3717 < 3149)) then
									v277 = v89[6 - 4];
									do
										return v87[v277](v13(v87, v277 + 1 + 0, v89[5 - 2]));
									end
									break;
								end
							end
						else
							local v278 = (1713 - (157 + 1086)) - (381 + 89);
							local v279;
							local v280;
							local v281;
							local v282;
							while true do
								if (v278 == (93 - (4 + 89))) then
									v279 = v89[2 + (0 - 0)];
									v280, v281 = v80(v87[v279](v87[v279 + 1 + 0]));
									v278 = 1 + (0 - 0);
								end
								if (v278 == (2 - (0 - 0))) then
									for v407 = v279, v82 do
										local v408 = 1156 - (1074 + 82);
										while true do
											if (((0 - 0) - 0) == v408) then
												v282 = v282 + 1;
												v87[v407] = v280[v282];
												break;
											end
										end
									end
									break;
								end
								if (v278 == (1785 - (214 + 1570))) then
									v82 = (v281 + v279) - (1454 - (28 + (2244 - (599 + 220))));
									v282 = 1993 - (941 + 1052);
									v278 = 1457 - (990 + 465);
								end
							end
						end
					elseif (v90 <= (25 + 35)) then
						if ((3195 < 3730) and (v90 <= (25 + 32))) then
							if (v90 == (55 + 1)) then
								local v172 = v89[7 - 5];
								v87[v172](v13(v87, v172 + (298 - ((89 - 44) + 252)), v89[1729 - ((3599 - (1813 + 118)) + 58)]));
							else
								v87[v89[628 - (512 + 114)]] = #v87[v89[2 + 0 + 1]];
							end
						elseif (v90 <= 58) then
							v87[v89[2]][v87[v89[7 - 4]]] = v87[v89[8 - 4]];
						elseif (v90 > (205 - 146)) then
							v87[v89[1 + 1]] = {};
						else
							v87[v89[2 + 0]] = v87[v89[1 + 2]] + v89[4 + 0];
						end
					elseif (v90 <= (2026 - (556 + 1407))) then
						if (v90 <= (1267 - (741 + 465))) then
							v87[v89[467 - (170 + (1512 - (841 + 376)))]] = v89[3];
						elseif (v90 > (33 + 29)) then
							local v285 = v89[2 + 0];
							local v286, v287 = v80(v87[v285](v13(v87, v285 + ((3 - 0) - 2), v89[1997 - (109 + 1885)])));
							v82 = (v287 + v285) - (1470 - (1269 + 200));
							local v288 = 0 - 0;
							for v332 = v285, v82 do
								v288 = v288 + (816 - (23 + 75 + (1957 - 1240)));
								v87[v332] = v286[v288];
							end
						else
							local v289 = 826 - (802 + 24);
							local v290;
							while true do
								if (v289 == (0 - (859 - (464 + 395)))) then
									v290 = v89[2 - 0];
									v87[v290] = v87[v290](v13(v87, v290 + 1 + 0, v89[3 + 0]));
									break;
								end
							end
						end
					elseif (v90 <= (168 - 104)) then
						v87[v89[5 - 3]]();
					elseif (v90 == (11 + 54)) then
						local v291 = v89[1 + (2 - 1)];
						v87[v291] = v87[v291](v87[v291 + 1]);
					else
						local v293 = v89[5 - 3];
						v87[v293] = v87[v293](v13(v87, v293 + (3 - 2), v82));
					end
				elseif ((2797 <= 3980) and (v90 <= (9 + 33 + 35))) then
					if (v90 <= (26 + 45)) then
						if (v90 <= (28 + 40)) then
							if (v90 == 67) then
								local v178 = v89[(839 - (467 + 370)) + 0];
								local v179, v180 = v80(v87[v178](v13(v87, v178 + 1 + 0, v82)));
								v82 = (v180 + v178) - (1 + 0);
								local v181 = 1433 - (797 + 636);
								for v220 = v178, v82 do
									v181 = v181 + (4 - 3);
									v87[v220] = v179[v181];
								end
							else
								local v182 = 311 - (309 + 2);
								local v183;
								while true do
									if ((1944 <= 2368) and (v182 == (1619 - (1427 + 192)))) then
										v183 = v89[(1 - 0) + 1];
										v87[v183] = v87[v183](v13(v87, v183 + (2 - 1), v82));
										break;
									end
								end
							end
						elseif ((1709 < 4248) and (v90 <= 69)) then
							if not v87[v89[2 + 0 + 0]] then
								v81 = v81 + 1 + 0;
							else
								v81 = v89[329 - (192 + 134)];
							end
						elseif (v90 == (1346 - (316 + 960))) then
							v87[v89[2 + (0 - 0)]] = v89[3 + 0];
						elseif v87[v89[2 + 0 + 0]] then
							v81 = v81 + (2 - 1);
						else
							v81 = v89[11 - 8];
						end
					elseif (v90 <= (625 - (83 + 468))) then
						if ((v90 <= (1878 - (1202 + 604))) or (3970 == 3202)) then
							local v184 = 0 - 0;
							local v185;
							local v186;
							local v187;
							local v188;
							while true do
								if (v184 == (1 - 0)) then
									v82 = (v187 + v185) - (1 + 0);
									v188 = 0 - 0;
									v184 = (760 - 433) - (45 + 280);
								end
								if (v184 == (17 - (6 + 9))) then
									for v354 = v185, v82 do
										v188 = v188 + 1 + 0;
										v87[v354] = v186[v188];
									end
									break;
								end
								if ((v184 == (0 + 0)) or (3918 >= 4397)) then
									v185 = v89[1 + 1];
									v186, v187 = v80(v87[v185](v13(v87, v185 + 1 + 0, v82)));
									v184 = 1 + 0;
								end
							end
						elseif ((v90 > (134 - 61)) or (780 == 3185)) then
							local v298 = v89[2 + 0];
							local v299 = v87[v298];
							local v300 = v87[v298 + (1913 - (340 + 1571))];
							if (v300 > ((520 - (150 + 370)) + 0)) then
								if ((v299 > v87[v298 + (1773 - (1733 + 39))]) or (3202 >= 4075)) then
									v81 = v89[8 - 5];
								else
									v87[v298 + (1037 - (125 + 909))] = v299;
								end
							elseif (v299 < v87[v298 + (1949 - (1096 + 852))]) then
								v81 = v89[2 + 1];
							else
								v87[v298 + (3 - 0)] = v299;
							end
						else
							v87[v89[(1284 - (74 + 1208)) + 0]] = v89[515 - (409 + 103)] + v87[v89[1 + 3]];
						end
					elseif ((64 == 64) and (v90 <= (311 - (46 + 190)))) then
						v63[v89[(240 - 142) - (51 + 44)]] = v87[v89[1 + 1]];
					elseif ((2202 >= 694) and (v90 == (1393 - (1114 + 203)))) then
						local v302 = v89[728 - (228 + 498)];
						local v303 = v87[v302 + (389 - ((1759 - 1388) + 16))];
						local v304 = v87[v302] + v303;
						v87[v302] = v304;
						if (v303 > (1750 - (1326 + 424))) then
							if (v304 <= v87[v302 + 1]) then
								local v413 = 0;
								while true do
									if ((3706 <= 3900) and (v413 == (0 + 0))) then
										v81 = v89[2 + 1];
										v87[v302 + (666 - (174 + 489))] = v304;
										break;
									end
								end
							end
						elseif ((2890 > 2617) and (v304 >= v87[v302 + (2 - 1)])) then
							v81 = v89[1908 - (830 + 1075)];
							v87[v302 + (527 - (303 + 221))] = v304;
						end
					elseif ((v89[1271 - (231 + 1038)] < v87[v89[4 + 0]]) or (3355 > 4385)) then
						v81 = v81 + (1163 - (171 + 991));
					else
						v81 = v89[12 - 9];
					end
				elseif (v90 <= (41 + 42)) then
					if (v90 <= (214 - 134)) then
						if (v90 <= (194 - (83 + 33))) then
							local v191 = (390 - (14 + 376)) + 0;
							local v192;
							local v193;
							local v194;
							local v195;
							while true do
								if (v191 == (6 - 4)) then
									for v358 = v192, v82 do
										v195 = v195 + (2 - (1 - 0));
										v87[v358] = v193[v195];
									end
									break;
								end
								if ((v191 == (0 - 0)) or (3067 <= 2195)) then
									v192 = v89[6 - 4];
									v193, v194 = v80(v87[v192](v13(v87, v192 + (1249 - (111 + 1137)), v89[161 - (91 + 67)])));
									v191 = 2 - 1;
								end
								if (v191 == (1 + 0)) then
									v82 = (v194 + v192) - (524 - (423 + 100));
									v195 = 0 + 0 + 0;
									v191 = 5 - 3;
								end
							end
						elseif ((3025 >= 2813) and (v90 > (42 + 37))) then
							v81 = v89[774 - (326 + 445)];
						else
							local v307 = (0 + 0) - 0;
							local v308;
							local v309;
							while true do
								if (v307 == (0 - 0)) then
									v308 = v89[4 - 2];
									v309 = {};
									v307 = (680 + 32) - (530 + 181);
								end
								if (v307 == (882 - (614 + (782 - 515)))) then
									for v416 = 1 + 0, #v86 do
										local v417 = 32 - (19 + 13);
										local v418;
										while true do
											if (v417 == (0 + 0)) then
												v418 = v86[v416];
												for v446 = 571 - (47 + 524), #v418 do
													local v447 = v418[v446];
													local v448 = v447[1 + 0];
													local v449 = v447[2 - (0 + 0)];
													if ((v448 == v87) and (v449 >= v308)) then
														local v450 = 0 - 0;
														while true do
															if (v450 == (0 - (78 - (23 + 55)))) then
																v309[v449] = v448[v449];
																v447[(4092 - 2365) - (778 + 387 + 561)] = v309;
																break;
															end
														end
													end
												end
												break;
											end
										end
									end
									break;
								end
							end
						end
					elseif (v90 <= (3 + 0 + 78)) then
						if ((2412 >= 356) and (v87[v89[5 - 3]] == v89[2 + 2])) then
							v81 = v81 + (1 - 0);
						else
							v81 = v89[6 - 3];
						end
					elseif (v90 == (1894 - (1293 + (803 - 284)))) then
						for v339 = v89[3 - 1], v89[7 - 4] do
							v87[v339] = nil;
						end
					else
						v87[v89[3 - 1]] = #v87[v89[5 - 2]];
					end
				elseif (v90 <= (28 + 58)) then
					if (v90 <= (270 - 186)) then
						local v196 = v89[3 - 1];
						local v197 = v89[17 - 13];
						local v198 = v196 + (4 - 2);
						local v199 = {v87[v196](v87[v196 + 1], v87[v198])};
						for v223 = 1 + 0, v197 do
							v87[v198 + v223] = v199[v223];
						end
						local v200 = v199[1 + 0];
						if v200 then
							local v312 = 0 - 0;
							while true do
								if (v312 == (0 + 0)) then
									v87[v198] = v200;
									v81 = v89[(902 - (652 + 249)) + 2];
									break;
								end
							end
						else
							v81 = v81 + 1 + 0;
						end
					elseif (v90 > ((3160 - 1979) - (709 + 387))) then
						local v313 = v89[3 - 1];
						local v314 = v87[v89[1861 - (673 + 1185)]];
						v87[v313 + ((1870 - (708 + 1160)) - 1)] = v314;
						v87[v313] = v314[v89[12 - (21 - 13)]];
					else
						v87[v89[2 - 0]] = v64[v89[3 + 0]];
					end
				elseif (v90 <= (66 + 21)) then
					if (v87[v89[2 - 0]] ~= v87[v89[1 + (5 - 2)]]) then
						v81 = v81 + (1 - 0);
					else
						v81 = v89[5 - 2];
					end
				elseif (v90 == (1968 - (446 + 1434))) then
					local v321 = v89[1285 - (1040 + 243)];
					local v322 = {};
					for v341 = (29 - (10 + 17)) - 1, #v86 do
						local v342 = 1847 - (126 + 433 + 1288);
						local v343;
						while true do
							if (v342 == 0) then
								v343 = v86[v341];
								for v425 = (3663 - (1400 + 332)) - (609 + 1322), #v343 do
									local v426 = v343[v425];
									local v427 = v426[1946 - (1036 + 909)];
									local v428 = v426[(874 - 418) - (13 + 441)];
									if ((2070 > 1171) and (v427 == v87) and (v428 >= v321)) then
										v322[v428] = v427[v428];
										v426[3 - 2] = v322;
									end
								end
								break;
							end
						end
					end
				else
					v87[v89[5 - 3]] = v63[v89[14 - 11]];
				end
				v81 = v81 + (204 - (11 + 192));
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!7B3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E73657274025Q0080544003083Q008D5D3F372D30AD5703063Q0051CE3C535B4F026Q00544003113Q0031EB495C7641CF47537704F5086B7619F303053Q00136187283F025Q00C0534003073Q0099DC264DA8D53403043Q002CDDB940025Q0080534003073Q0064C3AC4514735803063Q001D2BB3D82C7B025Q0040534003053Q0011BA8D58EA03073Q00185CCFE12C8319025Q00C0524003053Q00EF8205F9BC03073Q00AFBBEB7195D9BC025Q0040504003083Q007D4359FC618F880503083Q006B39362B9D15E6E7025Q00804F4003043Q006ECDFD4203073Q00E03AA885363A92026Q004F4003063Q0060075CD46F6203063Q00203840139C3A025Q00804E4003053Q00D1476406E003043Q006A852E10026Q004E4003103Q008DF7CFC614C1A677B8FBC2C32EC7BD7003083Q001EDE92A1A25AAED2025Q00804C4003103Q00CED0C03CE8CAC439D4CAC229D6C4DF2903043Q005D86A5AD025Q0080464003083Q00896DAB8127A477B703053Q0053CD18D9E0025Q0080454003043Q0073C92DC803053Q006427AC55BC026Q00454003063Q00948E3E6C83C903073Q00AFCCC97124D68B025Q0080444003053Q00B80C4B4AE103073Q0080EC653F268421026Q00444003103Q00E71A09D7987392DD190ED0B7688FDB1103073Q00E6B47F67B3D61C026Q002Q4003083Q000191AD4D10812Q1E03083Q007045E4DF2C64E871026Q003E4003043Q0099D808E403063Q0096CDBD709018026Q003D4003063Q0022CA9798999F03073Q00C77A8DD8D0CCDD026Q003C4003053Q00B525D91EE203053Q0087E14CAD72026Q003B4003103Q002235BC3C60383D1836BB3B4F23201E3E03073Q00497150D2582E57026Q00374003083Q00E00E8EFBC8C20C8903053Q00AAA36FE297026Q00354003053Q00CA25BE340B03083Q00C69E4CCA586EE2A6026Q00324003083Q00DE0ADEEA33DAFE0003063Q00BB9D6BB28651026Q00304003073Q00CE4ACAAC22E35103053Q00478D25A4D8026Q002C4003053Q00DACE06545B03073Q00A48EA772383E65026Q00204003083Q00065F49503A245D4E03053Q0058453E253C026Q001C4003133Q00CDA9F8F9446833EBBDE9B8792647C8AAFEED4503073Q00678EC59D983648026Q00144003113Q00B0B8184125C09C164E2485A659762598A003053Q0040E0D47922026Q00084003073Q00531BB7CCF9C64003073Q00341074D9B89CA8026Q00F03F03053Q001F0E02B51103073Q00114B6776D9747E028Q00026Q0010402Q033Q0078676F03093Q0054657874496E70757403233Q00E8BE93E585A5E5908DE7A7B0E4BCA0E980815BE58FAFE4BBA5E4B88DE58699E585A85D034Q0003123Q00E8BE93E585A5E78EA9E5AEB6E5908DE7A7B0010003093Q00536570657261746F72033F3Q00E782B9E587BBE4BDA0E98089E68BA9E78EA9E5AEB6E68896E88085E782B9E587BBE4B880E4B88BE78EA9E5AEB6E5908DE7A7B0E8BF9BE8A18CE4BCA0E9808103053Q00737061776E027Q004003063Q0042752Q746F6E03153Q00E4BCA0E98081E588B0E98089E4B8ADE78EA9E5AEB603083Q0044726F70646F776E030C3Q00E98089E68BA9E78EA9E5AEB62Q0035013Q003C7Q001210000100013Q00202F000100010002001210000200013Q00202F000200020003001210000300013Q00202F000300030004001210000400053Q0006450004000B000100010004503Q000B0001001210000400063Q00202F000500040007001210000600083Q00202F000600060009001210000700083Q00202F00070007000A00061F00083Q000100062Q000F3Q00074Q000F3Q00014Q000F3Q00054Q000F3Q00024Q000F3Q00034Q000F3Q00064Q0023000900083Q00123D000A000C3Q00123D000B000D4Q00190009000B00020010283Q000B00092Q0023000900083Q00123D000A000F3Q00123D000B00104Q00190009000B00020010283Q000E00092Q0023000900083Q00123D000A00123Q00123D000B00134Q00190009000B00020010283Q001100092Q0023000900083Q00123D000A00153Q00123D000B00164Q00190009000B00020010283Q001400092Q0023000900083Q00123D000A00183Q00123D000B00194Q00190009000B00020010283Q001700092Q0023000900083Q00123D000A001B3Q00123D000B001C4Q00190009000B00020010283Q001A00092Q0023000900083Q00123D000A001E3Q00123D000B001F4Q00190009000B00020010283Q001D00092Q0023000900083Q00123D000A00213Q00123D000B00224Q00190009000B00020010283Q002000092Q0023000900083Q00123D000A00243Q00123D000B00254Q00190009000B00020010283Q002300092Q0023000900083Q00123D000A00273Q00123D000B00284Q00190009000B00020010283Q002600092Q0023000900083Q00123D000A002A3Q00123D000B002B4Q00190009000B00020010283Q002900092Q0023000900083Q00123D000A002D3Q00123D000B002E4Q00190009000B00020010283Q002C00092Q0023000900083Q00123D000A00303Q00123D000B00314Q00190009000B00020010283Q002F00092Q0023000900083Q00123D000A00333Q00123D000B00344Q00190009000B00020010283Q003200092Q0023000900083Q00123D000A00363Q00123D000B00374Q00190009000B00020010283Q003500092Q0023000900083Q00123D000A00393Q00123D000B003A4Q00190009000B00020010283Q003800092Q0023000900083Q00123D000A003C3Q00123D000B003D4Q00190009000B00020010283Q003B00092Q0023000900083Q00123D000A003F3Q00123D000B00404Q00190009000B00020010283Q003E00092Q0023000900083Q00123D000A00423Q00123D000B00434Q00190009000B00020010283Q004100092Q0023000900083Q00123D000A00453Q00123D000B00464Q00190009000B00020010283Q004400092Q0023000900083Q00123D000A00483Q00123D000B00494Q00190009000B00020010283Q004700092Q0023000900083Q00123D000A004B3Q00123D000B004C4Q00190009000B00020010283Q004A00092Q0023000900083Q00123D000A004E3Q00123D000B004F4Q00190009000B00020010283Q004D00092Q0023000900083Q00123D000A00513Q00123D000B00524Q00190009000B00020010283Q005000092Q0023000900083Q00123D000A00543Q00123D000B00554Q00190009000B00020010283Q005300092Q0023000900083Q00123D000A00573Q00123D000B00584Q00190009000B00020010283Q005600092Q0023000900083Q00123D000A005A3Q00123D000B005B4Q00190009000B00020010283Q005900092Q0023000900083Q00123D000A005D3Q00123D000B005E4Q00190009000B00020010283Q005C00092Q0023000900083Q00123D000A00603Q00123D000B00614Q00190009000B00020010283Q005F00092Q0023000900083Q00123D000A00633Q00123D000B00644Q00190009000B00020010283Q006200092Q0023000900083Q00123D000A00663Q00123D000B00674Q00190009000B00020010283Q006500092Q0023000900083Q00123D000A00693Q00123D000B006A4Q00190009000B00020010283Q0068000900123D0009006B4Q0013000A000E3Q002651000900D9000100650004503Q00D9000100123D000F006B3Q000E24006800C10001000F0004503Q00C100012Q0013000E000E3Q00123D0009006C3Q0004503Q00D90001002651000F00BC0001006B0004503Q00BC00010012100010006D3Q00201C00100010006E2Q003C00123Q000500202F00133Q006800202100120013006F00202F00133Q006500202100120013007000202F00133Q006200202100120013007100202F00133Q005F00202100120013007200202F00133Q005C00061F00140001000100012Q000F3Q000D4Q003A0012001300142Q00080010001200010012100010006D3Q00201C00100010007300123D001200744Q000800100012000100123D000F00683Q0004503Q00BC0001002651000900E60001006C0004503Q00E6000100061F000E0002000100022Q000F8Q000F3Q000D4Q0023000F000E4Q000E000F00010001001210000F00753Q00061F00100003000100022Q000F3Q000E4Q000F3Q000C4Q0001000F000200010004503Q00332Q0100265100092Q002Q0100760004504Q002Q0100123D000F006B3Q002651000F00F9000100680004503Q00F900010012100010006D3Q00201C0010001000772Q003C00123Q000200202F00133Q005000202100120013007800202F00133Q004D00061F00140004000100032Q000F3Q000B4Q000F3Q000D4Q000F8Q003A0012001300142Q000800100012000100123D000900653Q0004504Q002Q01002651000F00E90001006B0004503Q00E900012Q0013000D000D3Q00061F000D0005000100012Q000F7Q00123D000F00683Q0004503Q00E90001002651000900122Q0100680004503Q00122Q0100123D000F006B3Q000E24006B00092Q01000F0004503Q00092Q012Q0013000C000C3Q00061F000C0006000100012Q000F3Q000A3Q00123D000F00683Q000E24006800032Q01000F0004503Q00032Q01001210001000753Q00061F00110007000100012Q000F3Q000C4Q000100100002000100123D000900763Q0004503Q00122Q010004503Q00032Q01002651000900B90001006B0004503Q00B9000100123D000F006B3Q002651000F002D2Q0100680004503Q002D2Q010012100010006D3Q00201C0010001000792Q003C00123Q000600202F00133Q001A00202100120013007A00202F00133Q001700202100120013007200202F00133Q00142Q003C00146Q003A00120013001400202F00133Q001100202100120013007B00202F00133Q000E00202100120013007A00202F00133Q000B00061F00140008000100012Q000F3Q000B4Q003A0012001300142Q00190010001200022Q0023000A00103Q00123D000900683Q0004503Q00B90001002651000F00152Q01006B0004503Q00152Q012Q0013000A000B3Q00123D000F00683Q0004503Q00152Q010004503Q00B900012Q005800096Q00053Q00013Q00093Q00023Q00026Q00F03F026Q00704002264Q003C00025Q00123D000300014Q003900045Q00123D000500013Q00042E0003002100012Q001700076Q0023000800024Q0017000900014Q0017000A00024Q0017000B00034Q0017000C00044Q0023000D6Q0023000E00063Q00203B000F000600012Q004E000C000F4Q0044000B3Q00022Q0017000C00034Q0017000D00044Q0023000E00014Q0039000F00014Q001A000F0006000F001049000F0001000F2Q0039001000014Q001A00100006001000104900100001001000203B0010001000012Q004E000D00104Q0043000C6Q0044000A3Q0002002035000A000A00022Q00370009000A4Q002C00073Q000100044C0003000500012Q0017000300054Q0023000400024Q0036000300044Q003200036Q00053Q00019Q002Q0001044Q001700016Q002300026Q00010001000200012Q00053Q00017Q000B3Q0003063Q0069706169727303043Q0067616D6503073Q00506C6179657273030A3Q00476574506C61796572732Q033Q0078676F03063Q0042752Q746F6E026Q002C4003043Q004E616D65026Q003040034Q00026Q003240001C3Q0012103Q00013Q001210000100023Q00202F00010001000300201C0001000100042Q0037000100024Q001E5Q00020004503Q00190001001210000500053Q00201C0005000500062Q003C00073Q00032Q001700085Q00202F00080008000700202F0009000400082Q003A0007000800092Q001700085Q00202F00080008000900202100070008000A2Q001700085Q00202F00080008000B00061F00093Q000100022Q00593Q00014Q000F3Q00044Q003A0007000800092Q00080005000700012Q005800035Q0006023Q0007000100020004503Q000700012Q00053Q00013Q00013Q00013Q0003043Q004E616D6500054Q00178Q0017000100013Q00202F0001000100012Q00013Q000200012Q00053Q00017Q00033Q00028Q00026Q00F03F03043Q0077616974001F3Q00123D3Q00014Q0013000100013Q0026513Q0002000100010004503Q0002000100123D000100013Q00265100010015000100010004503Q0015000100123D000200013Q0026510002000C000100020004503Q000C000100123D000100023Q0004503Q0015000100265100020008000100010004503Q00080001001210000300033Q00123D000400024Q00010003000200012Q001700036Q000E00030001000100123D000200023Q0004503Q0008000100265100010005000100020004503Q000500012Q0017000200014Q000E0002000100010004505Q00010004503Q000500010004505Q00010004503Q000200010004505Q00012Q00053Q00017Q000B3Q00034Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F7265026Q003B40026Q003C40026Q003D40026Q003E40031E3Q00E6B2A1E69C89E78EA9E5AEB6E68896E88085E5B7B2E7BB8FE7A6BBE5BC80026Q002Q40026Q001440001D4Q00177Q0006333Q000A00013Q0004503Q000A00012Q00177Q0026093Q000A000100010004503Q000A00012Q00173Q00014Q001700016Q00013Q000200010004503Q001C00010012103Q00023Q00202F5Q000300201C5Q00042Q0017000200023Q00202F0002000200052Q003C00033Q00032Q0017000400023Q00202F0004000400062Q0017000500023Q00202F0005000500072Q003A0003000400052Q0017000400023Q00202F0004000400080020210003000400092Q0017000400023Q00202F00040004000A00202100030004000B2Q00083Q000300012Q00053Q00017Q001B3Q00028Q00026Q00F03F03043Q0067616D6503073Q00506C6179657273030E3Q0046696E6446697273744368696C6403093Q00436861726163746572030B3Q005072696D61727950617274030A3Q005374617274657247756903073Q00536574436F7265026Q004440025Q00804440026Q004540025Q00804540032D3Q00E79BAEE6A087E78EA9E5AEB6E4B88DE5AD98E59CA8E68896E8A792E889B2E69CAAE58AA0E82QBDE5AE8CE68890025Q00804640026Q001440027Q004003103Q0048756D616E6F6964522Q6F745061727403063Q00434672616D65030B3Q004C6F63616C506C61796572025Q00804C40026Q004E40025Q00804E40026Q004F40025Q00804F4003213Q00E69CACE59CB0E78EA9E5AEB6E8A792E889B2E69CAAE58AA0E82QBDE5AE8CE68890025Q00405040018D3Q00123D000100014Q0013000200043Q00265100010007000100010004503Q0007000100123D000200014Q0013000300033Q00123D000100023Q00265100010002000100020004503Q000200012Q0013000400043Q00265100020045000100010004503Q0045000100123D000500013Q00265100050040000100010004503Q00400001001210000600033Q00202F00060006000400201C0006000600052Q002300086Q00190006000800022Q0023000300063Q0006330003001E00013Q0004503Q001E000100202F0006000300060006330006001E00013Q0004503Q001E000100202F00060003000600202F0006000600070006450006003F000100010004503Q003F000100123D000600014Q0013000700073Q00265100060020000100010004503Q0020000100123D000700013Q00265100070023000100010004503Q0023000100123D000800013Q00265100080026000100010004503Q00260001001210000900033Q00202F00090009000800201C0009000900092Q0017000B5Q00202F000B000B000A2Q003C000C3Q00032Q0017000D5Q00202F000D000D000B2Q0017000E5Q00202F000E000E000C2Q003A000C000D000E2Q0017000D5Q00202F000D000D000D002021000C000D000E2Q0017000D5Q00202F000D000D000F002021000C000D00102Q00080009000C00012Q00053Q00013Q0004503Q002600010004503Q002300010004503Q003F00010004503Q0020000100123D000500023Q0026510005000D000100020004503Q000D000100123D000200023Q0004503Q004500010004503Q000D00010026510002004E000100110004503Q004E000100202F00050004000600202F00050005001200202F00060003000600202F00060006000700202F0006000600130010280005001300060004503Q008C00010026510002000A000100020004503Q000A000100123D000500013Q00265100050055000100020004503Q0055000100123D000200113Q0004503Q000A000100265100050051000100010004503Q00510001001210000600033Q00202F00060006000400202F0004000600140006330004006600013Q0004503Q0066000100202F0006000400060006330006006600013Q0004503Q0066000100202F00060004000600201C0006000600052Q001700085Q00202F0008000800152Q001900060008000200064500060087000100010004503Q0087000100123D000600014Q0013000700073Q00265100060068000100010004503Q0068000100123D000700013Q0026510007006B000100010004503Q006B000100123D000800013Q0026510008006E000100010004503Q006E0001001210000900033Q00202F00090009000800201C0009000900092Q0017000B5Q00202F000B000B00162Q003C000C3Q00032Q0017000D5Q00202F000D000D00172Q0017000E5Q00202F000E000E00182Q003A000C000D000E2Q0017000D5Q00202F000D000D0019002021000C000D001A2Q0017000D5Q00202F000D000D001B002021000C000D00102Q00080009000C00012Q00053Q00013Q0004503Q006E00010004503Q006B00010004503Q008700010004503Q0068000100123D000500023Q0004503Q005100010004503Q000A00010004503Q008C00010004503Q000200012Q00053Q00017Q000C3Q00028Q00026Q00F03F03073Q0052656672657368030A3Q0053657444656661756C7403053Q00706169727303043Q0067616D6503073Q00506C6179657273030A3Q00476574506C6179657273030B3Q004C6F63616C506C6179657203053Q007461626C6503063Q00696E7365727403043Q004E616D65002B3Q00123D3Q00014Q0013000100013Q0026513Q0011000100020004503Q001100012Q001700025Q00201C0002000200032Q0023000400014Q002B000500014Q00080002000500012Q0039000200013Q000E120001002A000100020004503Q002A00012Q001700025Q00201C00020002000400202F0004000100022Q00080002000400010004503Q002A00010026513Q0002000100010004503Q000200012Q003C00026Q0023000100023Q001210000200053Q001210000300063Q00202F00030003000700201C0003000300082Q0037000300044Q001E00023Q00040004503Q00260001001210000700063Q00202F00070007000700202F00070007000900063400060026000100070004503Q002600010012100007000A3Q00202F00070007000B2Q0023000800013Q00202F00090006000C2Q00080007000900010006020002001C000100020004503Q001C000100123D3Q00023Q0004503Q000200012Q00053Q00017Q00023Q0003043Q0077616974026Q00E03F00093Q0012103Q00013Q00123D000100024Q000C3Q000200020006333Q000800013Q0004503Q000800012Q00178Q000E3Q000100010004505Q00012Q00053Q00019Q002Q0001024Q00268Q00053Q00017Q00", v9(), ...);