local a = Instance.new("UIStroke");
local a = Instance.new("UICorner");
local a = game.Players.LocalPlayer;
local b = game:GetService("UserInputService");
local c = game:GetService("TweenService");
local function d(a, d)
	local FlatIdent_2584C = 0;
	local e;
	local f;
	local g;
	local h;
	local i;
	while true do
		if (FlatIdent_2584C == 3) then
			a.InputBegan:Connect(function(a)
				if ((a.UserInputType == Enum.UserInputType.MouseButton1) or (a.UserInputType == Enum.UserInputType.Touch)) then
					local FlatIdent_44839 = 0;
					while true do
						if (FlatIdent_44839 == 1) then
							h = d.Position;
							a.Changed:Connect(function()
								if (a.UserInputState == Enum.UserInputState.End) then
									e = false;
								end
							end);
							break;
						end
						if (FlatIdent_44839 == 0) then
							e = true;
							g = a.Position;
							FlatIdent_44839 = 1;
						end
					end
				end
			end);
			a.InputChanged:Connect(function(a)
				if ((a.UserInputType == Enum.UserInputType.MouseMovement) or (a.UserInputType == Enum.UserInputType.Touch)) then
					f = a;
				end
			end);
			FlatIdent_2584C = 4;
		end
		if (FlatIdent_2584C == 4) then
			b.InputChanged:Connect(function(a)
				if ((a == f) and e) then
					i(a);
				end
			end);
			break;
		end
		if (FlatIdent_2584C == 2) then
			i = nil;
			function i(a)
				local FlatIdent_8D83D = 0;
				local a;
				while true do
					if (FlatIdent_8D83D == 1) then
						a = c:Create(d, TweenInfo.new(0.15), {Position=a});
						a:Play();
						break;
					end
					if (FlatIdent_8D83D == 0) then
						a = a.Position - g;
						a = UDim2.new(h.X.Scale, h.X.Offset + a.X, h.Y.Scale, h.Y.Offset + a.Y);
						FlatIdent_8D83D = 1;
					end
				end
			end
			FlatIdent_2584C = 3;
		end
		if (FlatIdent_2584C == 1) then
			g = nil;
			h = nil;
			FlatIdent_2584C = 2;
		end
		if (FlatIdent_2584C == 0) then
			e = nil;
			f = nil;
			FlatIdent_2584C = 1;
		end
	end
end
local e = true;
a.Idled:connect(function()
	while wait(3) do
		if e then
			local FlatIdent_39B0 = 0;
			while true do
				if (FlatIdent_39B0 == 0) then
					game.VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
					wait(1);
					FlatIdent_39B0 = 1;
				end
				if (FlatIdent_39B0 == 1) then
					game.VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
					break;
				end
			end
		end
	end
end);
local a = Instance.new("ScreenGui");
local e = Instance.new("ImageButton");
_G.Primary = Color3.fromRGB(41, 53, 61);
_G.Dark = Color3.fromRGB(41, 53, 61);
a.Parent = game.CoreGui;
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
e.Parent = a;
e.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0);
e.Size = UDim2.new(0, 50, 0, 50);
e.BackgroundColor3 = _G.Primary;
e.ImageColor3 = Color3.fromRGB(255, 255, 255);
e.ImageTransparency = 0.1;
e.Draggable = true;
e.Active = true;
e.Selectable = true;
e.BackgroundTransparency = 0.1;
e.Image = "rbxassetid://96996396016819";
e.Visible = false;
local a = Instance.new("UICorner");
a.Name = "MCNR";
a.Parent = e;
a.CornerRadius = UDim.new(0, 5);
e.MouseButton1Down:connect(function()
	local FlatIdent_61585 = 0;
	while true do
		if (FlatIdent_61585 == 2) then
			game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game);
			e.Visible = false;
			break;
		end
		if (1 == FlatIdent_61585) then
			e:TweenSize(UDim2.new(0, 50, 0, 50), "Out", "Quad", 0.2, true);
			game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game);
			FlatIdent_61585 = 2;
		end
		if (0 == FlatIdent_61585) then
			e:TweenSize(UDim2.new(0, 40, 0, 40), "Out", "Quad", 0.2, true);
			wait(0.1);
			FlatIdent_61585 = 1;
		end
	end
end);
do
	if game:GetService("CoreGui"):FindFirstChild("PiHubUI") then
		local FlatIdent_E652 = 0;
		while true do
			if (0 == FlatIdent_E652) then
				game:GetService("CoreGui").PiHubUI:Destroy();
				game:GetService("CoreGui").ScreenGui:Destroy();
				break;
			end
		end
	end
end
repeat
	wait(1);
until game:IsLoaded() 
local a = {};
a.Window = function(self, f, f, f)
	local FlatIdent_27957 = 0;
	local g;
	local h;
	local i;
	local f;
	local j;
	local e;
	local k;
	local l;
	local m;
	local d;
	while true do
		if (FlatIdent_27957 == 12) then
			k.Name = "PageList";
			k.Parent = l;
			m = Instance.new("UIPageLayout");
			m.Parent = k;
			m.SortOrder = Enum.SortOrder.LayoutOrder;
			m.EasingDirection = Enum.EasingDirection.InOut;
			m.EasingStyle = Enum.EasingStyle.Quad;
			m.FillDirection = Enum.FillDirection.Vertical;
			m.Padding = UDim.new(0, 10);
			FlatIdent_27957 = 13;
		end
		if (FlatIdent_27957 == 0) then
			g = {};
			g = false;
			h = false;
			i = "";
			f = f or Enum.KeyCode.RightControl;
			f = string.gsub(tostring(f), "Enum.KeyCode.", "");
			f = Instance.new("ScreenGui");
			f.Name = "XGOHUBUI";
			f.Parent = game.CoreGui;
			FlatIdent_27957 = 1;
		end
		if (FlatIdent_27957 == 11) then
			l.CornerRadius = UDim.new(0, 3);
			l = Instance.new("Frame");
			l.Name = "MainPage";
			l.Parent = k;
			l.ClipsDescendants = true;
			l.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			l.BackgroundTransparency = 1;
			l.Size = UDim2.new(0, 380, 0, 307);
			k = Instance.new("Folder");
			FlatIdent_27957 = 12;
		end
		if (FlatIdent_27957 == 8) then
			j.Active = true;
			j.BackgroundColor3 = Color3.fromRGB(0, 10, 250);
			j.Position = UDim2.new(0, 0, 0, 0);
			j.BackgroundTransparency = 1;
			j.Size = UDim2.new(0, 138, 0, 307);
			j.ScrollBarThickness = 0;
			k = Instance.new("UICorner");
			k.Parent = e;
			k.CornerRadius = UDim.new(0, 5);
			FlatIdent_27957 = 9;
		end
		if (FlatIdent_27957 == 13) then
			m.TweenTime = 0.4;
			m.GamepadInputEnabled = false;
			m.ScrollWheelInputEnabled = false;
			m.TouchInputEnabled = false;
			d(f, i);
			b.InputBegan:Connect(function(a)
				if (a.KeyCode == Enum.KeyCode.RightControl) then
					if (g == false) then
						local FlatIdent_2D88C = 0;
						while true do
							if (FlatIdent_2D88C == 0) then
								g = true;
								i:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true);
								break;
							end
						end
					else
						local FlatIdent_D79D = 0;
						while true do
							if (0 == FlatIdent_D79D) then
								g = false;
								i:TweenSize(UDim2.new(0, 556, 0, 350), "Out", "Quad", 0.5, true);
								break;
							end
						end
					end
				end
			end);
			d = {};
			d.Tab = function(self, d, f)
				local g = Instance.new("UIStroke");
				local g = Instance.new("UICorner");
				local n = Instance.new("TextButton");
				local o = Instance.new("TextLabel");
				local o = Instance.new("UICorner");
				local p = Instance.new("TextLabel");
				n.Parent = j;
				n.Name = d .. "Server";
				n.Text = "";
				n.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
				n.BackgroundTransparency = 1;
				n.Size = UDim2.new(0, 136, 0, 30);
				n.Font = Enum.Font.GothamSemibold;
				n.TextColor3 = Color3.fromRGB(255, 255, 255);
				n.TextSize = 12;
				n.TextTransparency = 0.9;
				p.Parent = n;
				p.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
				p.BackgroundTransparency = 1;
				p.Position = UDim2.new(0, 30, 0, 2);
				p.Size = UDim2.new(0, 100, 0, 25);
				p.Font = Enum.Font.GothamSemibold;
				p.Text = "| " .. d;
				p.TextColor3 = Color3.fromRGB(255, 255, 255);
				p.TextSize = 13;
				p.TextXAlignment = Enum.TextXAlignment.Left;
				local p = Instance.new("ImageLabel");
				p.Name = "LogoIDK";
				p.Parent = n;
				p.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				p.BackgroundTransparency = 1;
				p.Position = UDim2.new(0, 6, 0, 4.5);
				p.Size = UDim2.new(0, 20, 0, 20);
				p.Image = f;
				o.CornerRadius = UDim.new(0, 5);
				o.Parent = n;
				g.CornerRadius = UDim.new(0, 5);
				g.Parent = n;
				local f = Instance.new("ScrollingFrame");
				f.Name = d .. "_Page";
				f.Parent = k;
				f.Active = true;
				f.BackgroundColor3 = Color3.fromRGB(0, 10, 250);
				f.Position = UDim2.new(0, 0, 0, 0);
				f.BackgroundTransparency = 1;
				f.Size = UDim2.new(0, 400, 0, 307);
				f.ScrollBarThickness = 0;
				local d = Instance.new("UICorner");
				d.Parent = l;
				d.CornerRadius = UDim.new(0, 5);
				local d = Instance.new("UIPadding");
				local g = Instance.new("UIListLayout");
				d.Parent = f;
				g.Padding = UDim.new(0, 3);
				g.Parent = f;
				g.SortOrder = Enum.SortOrder.LayoutOrder;
				local d = {};
				function ActivateTab(a)
					local FlatIdent_7F121 = 0;
					local a;
					while true do
						if (FlatIdent_7F121 == 1) then
							activeTab.BackgroundTransparency = 0.8;
							a = string.gsub(a.Name, "Server", "") .. "_Page";
							FlatIdent_7F121 = 2;
						end
						if (2 == FlatIdent_7F121) then
							for b, b in pairs(k:GetChildren()) do
								if (b.Name == a) then
									m:JumpTo(b);
								end
							end
							break;
						end
						if (FlatIdent_7F121 == 0) then
							if activeTab then
								activeTab.BackgroundTransparency = 1;
							end
							activeTab = a;
							FlatIdent_7F121 = 1;
						end
					end
				end
				for a, a in pairs(j:GetChildren()) do
					if a:IsA("TextButton") then
						local FlatIdent_8BC55 = 0;
						while true do
							if (FlatIdent_8BC55 == 0) then
								table.insert(d, a);
								a.MouseButton1Click:Connect(function()
									ActivateTab(a);
								end);
								break;
							end
						end
					end
				end
				if (h == false) then
					local FlatIdent_19F98 = 0;
					while true do
						if (FlatIdent_19F98 == 0) then
							for a, a in ipairs(d) do
								c:Create(a, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=1}):Play();
							end
							ActivateTab(d[1]);
							FlatIdent_19F98 = 1;
						end
						if (FlatIdent_19F98 == 1) then
							h = true;
							break;
						end
					end
				end
				game:GetService("RunService").Stepped:Connect(function()
					pcall(function()
						local FlatIdent_2BE02 = 0;
						while true do
							if (FlatIdent_2BE02 == 0) then
								f.CanvasSize = UDim2.new(0, 0, 0, g.AbsoluteContentSize.Y + 20);
								j.CanvasSize = UDim2.new(0, 0, 0, e.AbsoluteContentSize.Y + 20);
								break;
							end
						end
					end);
				end);
				a.Notification = function(self, a)
					local FlatIdent_494F6 = 0;
					local b;
					local d;
					local e;
					local f;
					local g;
					local h;
					local j;
					local k;
					local l;
					local m;
					while true do
						if (FlatIdent_494F6 == 0) then
							b = Instance.new("TextButton");
							d = Instance.new("Frame");
							e = Instance.new("TextButton");
							f = Instance.new("UICorner");
							g = Instance.new("TextLabel");
							h = Instance.new("TextLabel");
							j = Instance.new("TextLabel");
							k = Instance.new("UICorner");
							FlatIdent_494F6 = 1;
						end
						if (FlatIdent_494F6 == 4) then
							d.Size = UDim2.new(0, 0, 0, 0);
							d:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.6, true);
							k.Name = "NotifCorner";
							k.Parent = d;
							k.CornerRadius = UDim.new(0, 5);
							l.Name = "NotifHolderUIStroke";
							l.Parent = d;
							l.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
							FlatIdent_494F6 = 5;
						end
						if (FlatIdent_494F6 == 2) then
							b.AutoButtonColor = false;
							b.Font = Enum.Font.SourceSans;
							b.Text = "";
							b.TextColor3 = Color3.new(125, 0, 125);
							b.TextSize = 13;
							c:Create(b, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=1}):Play();
							wait(0.4);
							d.Name = "NotificationFrame";
							FlatIdent_494F6 = 3;
						end
						if (FlatIdent_494F6 == 6) then
							e.BackgroundColor3 = Color3.fromRGB(190, 190, 190);
							e.BorderSizePixel = 2;
							e.BorderColor3 = Color3.new(125, 0, 125);
							e.Position = UDim2.new(0, 125, 0, 190);
							e.Size = UDim2.new(0, 150, 0, 30);
							e.AutoButtonColor = true;
							e.Font = Enum.Font.SourceSans;
							e.Text = "";
							FlatIdent_494F6 = 7;
						end
						if (FlatIdent_494F6 == 1) then
							l = Instance.new("UIStroke");
							m = Instance.new("Frame");
							b.Name = "NotificationHold";
							b.Parent = i;
							b.BackgroundColor3 = Color3.new(125, 125, 125);
							b.BackgroundTransparency = 1;
							b.BorderSizePixel = 0;
							b.Size = UDim2.new(0, 589, 0, 378);
							FlatIdent_494F6 = 2;
						end
						if (FlatIdent_494F6 == 9) then
							h.BackgroundColor3 = Color3.new(125, 0, 125);
							h.BackgroundTransparency = 1;
							h.Position = UDim2.new(0, 0, 0, 10);
							h.Size = UDim2.new(0, 400, 0, 25);
							h.ZIndex = 3;
							h.Font = Enum.Font.GothamSemibold;
							h.Text = "Notification";
							h.TextColor3 = Color3.fromRGB(240, 10, 10);
							FlatIdent_494F6 = 10;
						end
						if (FlatIdent_494F6 == 12) then
							j.TextColor3 = Color3.new(125, 0, 125);
							j.TextSize = 16;
							j.TextWrapped = true;
							j.TextXAlignment = Enum.TextXAlignment.Center;
							j.TextYAlignment = Enum.TextYAlignment.Top;
							e.MouseEnter:Connect(function()
								c:Create(e, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3=Color3.fromRGB(34, 34, 34)}):Play();
							end);
							e.MouseLeave:Connect(function()
								c:Create(e, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3=Color3.fromRGB(25, 25, 25)}):Play();
							end);
							e.MouseButton1Click:Connect(function()
								local FlatIdent_81225 = 0;
								while true do
									if (FlatIdent_81225 == 2) then
										b:Destroy();
										break;
									end
									if (FlatIdent_81225 == 0) then
										d:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.6, true);
										wait(0.4);
										FlatIdent_81225 = 1;
									end
									if (FlatIdent_81225 == 1) then
										c:Create(b, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=1}):Play();
										wait(0.3);
										FlatIdent_81225 = 2;
									end
								end
							end);
							break;
						end
						if (FlatIdent_494F6 == 3) then
							d.Parent = b;
							d.AnchorPoint = Vector2.new(0.5, 0.5);
							d.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
							d.BorderColor3 = Color3.new(125, 0, 125);
							d.BorderSizePixel = 0;
							d.Transparency = 0;
							d.ClipsDescendants = true;
							d.Position = UDim2.new(0, 295, 0, 190);
							FlatIdent_494F6 = 4;
						end
						if (FlatIdent_494F6 == 11) then
							j.Parent = d;
							j.BackgroundColor3 = _G.SectionColor;
							j.BackgroundTransparency = 1;
							j.Position = UDim2.new(0, 10, 0, 80);
							j.Size = UDim2.new(0, 380, 0, 200);
							j.Font = Enum.Font.GothamSemibold;
							j.Text = a;
							j.TextScaled = false;
							FlatIdent_494F6 = 12;
						end
						if (FlatIdent_494F6 == 7) then
							e.TextColor3 = Color3.new(125, 0, 125);
							e.TextSize = 13;
							f.CornerRadius = UDim.new(0, 5);
							f.Name = "OkayBtnCorner";
							f.Parent = e;
							g.Name = "OkayBtnTitle";
							g.Parent = e;
							g.BackgroundColor3 = Color3.new(125, 0, 125);
							FlatIdent_494F6 = 8;
						end
						if (FlatIdent_494F6 == 5) then
							l.Color = Color3.new(125, 0, 125);
							l.LineJoinMode = Enum.LineJoinMode.Round;
							l.Thickness = 2;
							l.Transparency = 0;
							l.Enabled = true;
							l.Archivable = true;
							e.Name = "OkayBtn";
							e.Parent = d;
							FlatIdent_494F6 = 6;
						end
						if (FlatIdent_494F6 == 10) then
							h.TextSize = 22;
							m.Name = "Line";
							m.Parent = d;
							m.BackgroundColor3 = Color3.new(125, 0, 125);
							m.BorderSizePixel = 0;
							m.Position = UDim2.new(0, 10, 0, 40);
							m.Size = UDim2.new(0, 380, 0, 1);
							j.Name = "NotificationDesc";
							FlatIdent_494F6 = 11;
						end
						if (FlatIdent_494F6 == 8) then
							g.BackgroundTransparency = 1;
							g.Size = UDim2.new(0, 150, 0, 30);
							g.Text = "OK";
							g.Font = Enum.Font.GothamSemibold;
							g.TextColor3 = Color3.fromRGB(41, 53, 61);
							g.TextSize = 22;
							h.Name = "NotificationTitle";
							h.Parent = d;
							FlatIdent_494F6 = 9;
						end
					end
				end;
				local a = {};
				a.Button = function(self, a, b)
					local FlatIdent_5E109 = 0;
					local d;
					local e;
					local g;
					local h;
					local i;
					local j;
					while true do
						if (FlatIdent_5E109 == 0) then
							d = Instance.new("Frame");
							e = Instance.new("UICorner");
							g = Instance.new("TextButton");
							h = Instance.new("UICorner");
							i = Instance.new("Frame");
							FlatIdent_5E109 = 1;
						end
						if (FlatIdent_5E109 == 2) then
							d.Size = UDim2.new(0, 358, 0, 33);
							e.CornerRadius = UDim.new(0, 5);
							e.Parent = d;
							g.Name = "TextBtn";
							g.Parent = d;
							FlatIdent_5E109 = 3;
						end
						if (1 == FlatIdent_5E109) then
							j = Instance.new("UICorner");
							d.Name = "Button";
							d.Parent = f;
							d.BackgroundColor3 = Color3.new(0, 0, 0);
							d.BackgroundTransparency = 1;
							FlatIdent_5E109 = 2;
						end
						if (FlatIdent_5E109 == 3) then
							g.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
							g.BackgroundTransparency = 0.8;
							g.Position = UDim2.new(0, 0, 0, 0);
							g.Size = UDim2.new(0, 379, 0, 33);
							g.AutoButtonColor = false;
							FlatIdent_5E109 = 4;
						end
						if (FlatIdent_5E109 == 7) then
							g.MouseEnter:Connect(function()
								c:Create(i, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=0.7}):Play();
							end);
							g.MouseLeave:Connect(function()
								c:Create(i, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency=1}):Play();
							end);
							g.MouseButton1Click:Connect(function()
								g.TextSize = 0;
								c:Create(g, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextSize=15}):Play();
								b();
							end);
							break;
						end
						if (FlatIdent_5E109 == 5) then
							h.Parent = g;
							i.Name = "Black";
							i.Parent = d;
							i.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
							i.BackgroundTransparency = 1;
							FlatIdent_5E109 = 6;
						end
						if (FlatIdent_5E109 == 6) then
							i.BorderSizePixel = 0;
							i.Position = UDim2.new(0, 0, 0, 0);
							i.Size = UDim2.new(0, 379, 0, 33);
							j.CornerRadius = UDim.new(0, 5);
							j.Parent = i;
							FlatIdent_5E109 = 7;
						end
						if (FlatIdent_5E109 == 4) then
							g.Font = Enum.Font.GothamSemibold;
							g.Text = a;
							g.TextColor3 = Color3.fromRGB(255, 255, 255);
							g.TextSize = 15;
							h.CornerRadius = UDim.new(0, 5);
							FlatIdent_5E109 = 5;
						end
					end
				end;
				a.Toggle = function(self, a, b, d)
					b = b or false;
					local e = b;
					_G.Color = Color3.fromRGB(41, 53, 61);
					_G.TrueColor = Color3.fromRGB(189, 52, 235);
					local g = Instance.new("UICorner");
					local g = Instance.new("UIPadding");
					local g = Instance.new("UIStroke");
					local h = Instance.new("TextButton");
					local i = Instance.new("UICorner");
					local j = Instance.new("TextLabel");
					local k = Instance.new("TextButton");
					local l = Instance.new("UICorner");
					local m = Instance.new("Frame");
					local n = Instance.new("UICorner");
					local o = Instance.new("ImageLabel");
					h.Name = "Button";
					h.Parent = f;
					h.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
					h.BackgroundTransparency = 0.8;
					h.Size = UDim2.new(0, 379, 0, 46);
					h.AutoButtonColor = false;
					h.Font = Enum.Font.SourceSans;
					h.Text = "";
					h.TextColor3 = Color3.fromRGB(0, 0, 0);
					h.TextSize = 11;
					i.CornerRadius = UDim.new(0, 5);
					i.Parent = h;
					o.Name = "Icon";
					o.Parent = h;
					o.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					o.BackgroundTransparency = 1;
					o.Position = UDim2.new(0, 5, 0, 8);
					o.Size = UDim2.new(0, 30, 0, 30);
					o.Image = "rbxassetid://120611289434746";
					j.Parent = h;
					j.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
					j.BackgroundTransparency = 1;
					j.Position = UDim2.new(0, 40, 0, 0);
					j.Size = UDim2.new(0, 280, 0, 46);
					j.Font = Enum.Font.GothamSemibold;
					j.Text = "|  " .. a;
					j.TextColor3 = Color3.fromRGB(255, 255, 255);
					j.TextSize = 15;
					j.TextXAlignment = Enum.TextXAlignment.Left;
					k.Name = "ToggleImage";
					k.Parent = h;
					k.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
					k.BackgroundTransparency = 0.1;
					k.Position = UDim2.new(0, 320, 0, 13);
					k.Size = UDim2.new(0, 45, 0, 20);
					k.Text = "";
					l.CornerRadius = UDim.new(0, 10);
					l.Parent = k;
					m.Name = "Circle";
					m.Parent = k;
					m.BackgroundColor3 = Color3.fromRGB(12, 12, 12);
					m.BackgroundTransparency = 0.7;
					m.Position = UDim2.new(0, 2, 0, 2);
					m.Size = UDim2.new(0, 16, 0, 16);
					n.CornerRadius = UDim.new(0, 10);
					n.Parent = m;
					k.MouseButton1Click:Connect(function()
						local FlatIdent_7873D = 0;
						while true do
							if (FlatIdent_7873D == 0) then
								if (e == false) then
									local FlatIdent_8638E = 0;
									while true do
										if (FlatIdent_8638E == 1) then
											m:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.2, true);
											c:Create(m, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3=_G.TrueColor}):Play();
											break;
										end
										if (FlatIdent_8638E == 0) then
											e = true;
											g.Color = _G.TrueColor;
											FlatIdent_8638E = 1;
										end
									end
								else
									e = false;
									g.Color = _G.Color;
									m:TweenPosition(UDim2.new(0, 2, 0, 2), "Out", "Sine", 0.2, true);
									c:Create(m, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3=Color3.fromRGB(12, 12, 12)}):Play();
								end
								pcall(d, e);
								break;
							end
						end
					end);
					if (b == true) then
						local FlatIdent_957A4 = 0;
						while true do
							if (FlatIdent_957A4 == 0) then
								e = true;
								g.Color = _G.TrueColor;
								FlatIdent_957A4 = 1;
							end
							if (FlatIdent_957A4 == 1) then
								m:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.4, true);
								c:Create(m, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3=_G.TrueColor}):Play();
								FlatIdent_957A4 = 2;
							end
							if (FlatIdent_957A4 == 2) then
								pcall(d, e);
								break;
							end
						end
					end
				end;
				a.Dropdown = function(self, a, b, d)
					local e = false;
					local g = Instance.new("Frame");
					local h = Instance.new("UICorner");
					local i = Instance.new("UICorner");
					local j = Instance.new("UICorner");
					local k = Instance.new("TextLabel");
					local l = Instance.new("ScrollingFrame");
					local m = Instance.new("UIListLayout");
					local n = Instance.new("UIPadding");
					local o = Instance.new("TextButton");
					local o = Instance.new("TextButton");
					local p = Instance.new("ImageLabel");
					local q = Instance.new("UIStroke");
					g.Name = "Dropdown";
					g.Parent = f;
					g.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
					g.BackgroundTransparency = 0.8;
					g.ClipsDescendants = true;
					g.Size = UDim2.new(0, 379, 0, 38);
					h.CornerRadius = UDim.new(0, 3);
					h.Parent = g;
					local f = Instance.new("ImageLabel");
					f.Name = "Icon";
					f.Parent = g;
					f.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					f.BackgroundTransparency = 1;
					f.Position = UDim2.new(0, 5, 0, 3);
					f.Size = UDim2.new(0, 30, 0, 30);
					f.Image = "rbxassetid://109948306798374";
					k.Name = "DropTitle";
					k.Parent = g;
					k.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
					k.BackgroundTransparency = 1;
					k.Size = UDim2.new(0, 379, 0, 38);
					k.Font = Enum.Font.GothamSemibold;
					k.Text = "| " .. a;
					k.TextColor3 = Color3.fromRGB(255, 255, 255);
					k.TextSize = 15;
					k.TextXAlignment = Enum.TextXAlignment.Left;
					k.Position = UDim2.new(0, 40, 0, 0);
					o.Name = "SelectItems";
					o.Parent = g;
					o.BackgroundColor3 = Color3.fromRGB(13, 102, 158);
					o.TextColor3 = Color3.fromRGB(255, 255, 255);
					o.BackgroundTransparency = 0.1;
					o.Position = UDim2.new(0, 220, 0, 34);
					o.Size = UDim2.new(0, 155, 0, 30);
					o.Font = Enum.Font.GothamMedium;
					o.TextSize = 12;
					o.Text = "Select";
					o.ClipsDescendants = true;
					o.TextXAlignment = Enum.TextXAlignment.Left;
					local f = Instance.new("UIPadding");
					f.Parent = o;
					f.PaddingLeft = UDim.new(0, 15);
					f.PaddingRight = UDim.new(0, 15);
					o.AnchorPoint = Vector2.new(0, 3);
					i.Parent = o;
					i.CornerRadius = UDim.new(0, 5);
					j.Parent = l;
					j.CornerRadius = UDim.new(0, 5);
					l.Name = "DropScroll";
					l.Parent = g;
					l.Active = true;
					l.BackgroundColor3 = Color3.fromRGB(13, 102, 158);
					l.BackgroundTransparency = 0.1;
					l.BorderSizePixel = 0;
					l.Position = UDim2.new(0, 2, 0, 40);
					l.Size = UDim2.new(0, 375, 0, 100);
					l.ScrollBarThickness = 3;
					m.Parent = l;
					m.SortOrder = Enum.SortOrder.LayoutOrder;
					m.Padding = UDim.new(0, 5);
					n.Parent = l;
					n.PaddingLeft = UDim.new(0, 5);
					n.PaddingTop = UDim.new(0, 10);
					for a, a in next, b do
						local FlatIdent_6E549 = 0;
						local b;
						while true do
							if (FlatIdent_6E549 == 1) then
								b.BackgroundTransparency = 1;
								b.Size = UDim2.new(0, 379, 0, 26);
								b.Font = Enum.Font.GothamSemibold;
								b.Text = tostring(a);
								FlatIdent_6E549 = 2;
							end
							if (FlatIdent_6E549 == 0) then
								b = Instance.new("TextButton");
								b.Name = "Item";
								b.Parent = l;
								b.BackgroundColor3 = Color3.fromRGB(12, 12, 12);
								FlatIdent_6E549 = 1;
							end
							if (2 == FlatIdent_6E549) then
								b.TextColor3 = Color3.fromRGB(255, 255, 255);
								b.TextSize = 12;
								b.TextTransparency = 0.5;
								b.TextXAlignment = Enum.TextXAlignment.Center;
								FlatIdent_6E549 = 3;
							end
							if (FlatIdent_6E549 == 3) then
								b.MouseEnter:Connect(function()
									c:Create(b, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
								end);
								b.MouseLeave:Connect(function()
									c:Create(b, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0.5}):Play();
								end);
								b.MouseButton1Click:Connect(function()
									e = false;
									g:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.3, true);
									c:Create(p, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=180}):Play();
									d(b.Text);
									o.Text = b.Text;
								end);
								break;
							end
						end
					end
					l.CanvasSize = UDim2.new(0, 0, 0, m.AbsoluteContentSize.Y + 10);
					o.MouseButton1Click:Connect(function()
						if (e == false) then
							e = true;
							g:TweenSize(UDim2.new(0, 379, 0, 142), "Out", "Quad", 0.3, true);
							c:Create(p, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=0}):Play();
						else
							local FlatIdent_89562 = 0;
							while true do
								if (FlatIdent_89562 == 0) then
									e = false;
									g:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.3, true);
									FlatIdent_89562 = 1;
								end
								if (FlatIdent_89562 == 1) then
									c:Create(p, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=180}):Play();
									break;
								end
							end
						end
					end);
					local b = {};
					b.Add = function(self, b)
						local FlatIdent_77478 = 0;
						local f;
						while true do
							if (FlatIdent_77478 == 3) then
								f.TextSize = 13;
								f.TextTransparency = 0.5;
								f.MouseEnter:Connect(function()
									c:Create(f, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
								end);
								FlatIdent_77478 = 4;
							end
							if (1 == FlatIdent_77478) then
								f.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
								f.BackgroundTransparency = 1;
								f.Size = UDim2.new(0, 379, 0, 26);
								FlatIdent_77478 = 2;
							end
							if (FlatIdent_77478 == 2) then
								f.Font = Enum.Font.GothamSemibold;
								f.Text = tostring(b);
								f.TextColor3 = Color3.fromRGB(255, 255, 255);
								FlatIdent_77478 = 3;
							end
							if (0 == FlatIdent_77478) then
								f = Instance.new("TextButton");
								f.Name = "Item";
								f.Parent = l;
								FlatIdent_77478 = 1;
							end
							if (FlatIdent_77478 == 4) then
								f.MouseLeave:Connect(function()
									c:Create(f, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0.5}):Play();
								end);
								f.MouseButton1Click:Connect(function()
									local FlatIdent_656E9 = 0;
									while true do
										if (FlatIdent_656E9 == 1) then
											c:Create(p, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=180}):Play();
											d(f.Text);
											FlatIdent_656E9 = 2;
										end
										if (FlatIdent_656E9 == 2) then
											k.Text = a .. " : " .. f.Text;
											break;
										end
										if (FlatIdent_656E9 == 0) then
											e = false;
											g:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.3, true);
											FlatIdent_656E9 = 1;
										end
									end
								end);
								break;
							end
						end
					end;
					b.Clear = function(self)
						local FlatIdent_C595 = 0;
						while true do
							if (FlatIdent_C595 == 1) then
								g:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.3, true);
								c:Create(p, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=180}):Play();
								FlatIdent_C595 = 2;
							end
							if (FlatIdent_C595 == 0) then
								k.Text = tostring(a) .. " : ";
								e = false;
								FlatIdent_C595 = 1;
							end
							if (FlatIdent_C595 == 2) then
								for a, a in next, l:GetChildren() do
									if a:IsA("TextButton") then
										a:Destroy();
									end
								end
								break;
							end
						end
					end;
					return b;
				end;
				a.Slider = function(self, a, c, d, e, g)
					local h = {};
					local i = Instance.new("Frame");
					local j = Instance.new("Frame");
					local k = Instance.new("UIStroke");
					local k = Instance.new("UICorner");
					local l = Instance.new("ImageLabel");
					local m = Instance.new("TextLabel");
					local m = Instance.new("TextLabel");
					local n = Instance.new("Frame");
					local o = Instance.new("Frame");
					local p = Instance.new("Frame");
					local q = Instance.new("UICorner");
					local r = Instance.new("UICorner");
					local s = Instance.new("Frame");
					local t = Instance.new("TextBox");
					local u = Instance.new("UIStroke");
					local v = Instance.new("TextButton");
					local w = Instance.new("UICorner");
					local x = Instance.new("UICorner");
					i.Name = slidertitle or "SliderFrame";
					i.Parent = f;
					i.BackgroundColor3 = Color3.fromRGB(240, 240, 240);
					i.BackgroundTransparency = 1;
					i.BorderSizePixel = 0;
					i.Size = UDim2.new(0, 379, 0, 60);
					j.Name = "SliderFrame_2";
					j.Parent = i;
					j.BackgroundColor3 = Color3.fromRGB(32, 33, 36);
					j.BackgroundTransparency = 0.8;
					j.BorderSizePixel = 0;
					j.Position = UDim2.new(0, 1, 0, 1);
					j.Size = UDim2.new(0, 379, 0, 60);
					k.Parent = j;
					k.CornerRadius = UDim.new(0, 3);
					l.Name = "ImageLabel";
					l.Parent = j;
					l.BackgroundColor3 = Color3.fromRGB(240, 240, 240);
					l.BackgroundTransparency = 1;
					l.BorderSizePixel = 0;
					l.Position = UDim2.new(0, 7.5, 0, 7.5);
					l.Size = UDim2.new(0, 30, 0, 30);
					l.Image = "rbxassetid://86451637909512";
					m.Parent = j;
					m.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
					m.BackgroundTransparency = 1;
					m.Position = UDim2.new(0, 45, 0, 5);
					m.Size = UDim2.new(0, 280, 0, 30);
					m.Font = Enum.Font.GothamSemibold;
					m.Text = "|  " .. a;
					m.TextColor3 = Color3.fromRGB(255, 255, 255);
					m.TextSize = 15;
					m.TextXAlignment = Enum.TextXAlignment.Left;
					n.Name = "SliderInput";
					n.Parent = j;
					n.BackgroundColor3 = Color3.fromRGB(39, 40, 41);
					n.BackgroundTransparency = 0;
					n.BorderSizePixel = 0;
					n.Position = UDim2.new(0, 8, 0, 42);
					n.Size = UDim2.new(0, 364, 0, 6);
					r.CornerRadius = UDim.new(0, 100000);
					r.Parent = n;
					o.Name = "SliderButton";
					o.Parent = n;
					o.BackgroundColor3 = Color3.fromRGB(39, 40, 41);
					o.BackgroundTransparency = 1;
					o.BorderSizePixel = 0;
					o.Position = UDim2.new(0, 0, 0, -7);
					o.Size = UDim2.new(0, 300, 0, 25);
					p.Name = "SliderCount";
					p.Parent = o;
					p.BackgroundColor3 = Color3.fromRGB(50, 10, 20);
					p.BackgroundTransparency = 0;
					p.BorderSizePixel = 0;
					p.Position = UDim2.new(0, e, 0, 0);
					p.Size = UDim2.new(0, 18, 0, 18);
					v.Name = "Title_2";
					v.Parent = o;
					v.AnchorPoint = Vector2.new(0, 0);
					v.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
					v.AutoButtonColor = false;
					v.BackgroundTransparency = 1;
					v.Position = UDim2.new(0, e, 0, 0);
					v.Size = UDim2.new(0, 18, 0, 18);
					v.Font = Enum.Font.GothamBold;
					v.Text = tostring((e and math.floor(((e / d) * (d - c)) + c)) or 0);
					v.TextColor3 = Color3.fromRGB(255, 255, 255);
					v.TextSize = 8;
					v.TextXAlignment = Enum.TextXAlignment.Center;
					w.Parent = v;
					w.CornerRadius = UDim.new(0, 100000);
					q.CornerRadius = UDim.new(0, 100000);
					q.Parent = p;
					s.Name = "BoxFrame";
					s.Parent = j;
					s.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
					s.BackgroundTransparency = 1;
					s.Size = UDim2.new(0, 50, 0, 15);
					s.Position = UDim2.new(0, 319, 0, 8);
					t.Name = "SliderBox";
					t.Parent = s;
					t.BackgroundColor3 = Color3.fromRGB(39, 40, 41);
					t.BackgroundTransparency = 0.1;
					t.BorderSizePixel = 0;
					t.Position = UDim2.new(0, 0, 0, 1.65);
					t.Size = UDim2.new(0, 50, 0, 15);
					t.ClearTextOnFocus = false;
					t.Font = Enum.Font.Code;
					t.Text = tostring((e and math.floor(((e / d) * (d - c)) + c)) or 0);
					t.TextColor3 = Color3.fromRGB(200, 200, 200);
					t.TextSize = 10;
					t.TextTransparency = 0;
					t.TextXAlignment = Enum.TextXAlignment.Center;
					t.TextEditable = true;
					x.Parent = s;
					x.CornerRadius = UDim.new(0, 2);
					local a;
					local e;
					local f;
					local i = o;
					local function i(a)
						local FlatIdent_51C44 = 0;
						local a;
						local b;
						while true do
							if (FlatIdent_51C44 == 3) then
								pcall(g, b, a);
								break;
							end
							if (FlatIdent_51C44 == 1) then
								v:TweenPosition(a, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true);
								b = math.floor((((a.X.Scale * d) / d) * (d - c)) + c);
								FlatIdent_51C44 = 2;
							end
							if (FlatIdent_51C44 == 0) then
								a = UDim2.new(math.clamp((a.Position.X - o.AbsolutePosition.X) / o.AbsoluteSize.X, 0, 1), 0, 0, 0);
								p:TweenPosition(a, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true);
								FlatIdent_51C44 = 1;
							end
							if (FlatIdent_51C44 == 2) then
								t.Text = tostring(b);
								v.Text = tostring(b);
								FlatIdent_51C44 = 3;
							end
						end
					end
					o.InputBegan:Connect(function(b)
						if ((b.UserInputType == Enum.UserInputType.MouseButton1) or (b.UserInputType == Enum.UserInputType.Touch)) then
							local FlatIdent_6066D = 0;
							while true do
								if (2 == FlatIdent_6066D) then
									game.TweenService:Create(p, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency=0,Size=UDim2.new(0, 14, 0, 14)}):Play();
									game.TweenService:Create(v, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint=Vector2.new(0.22, 0.8),TextSize=13,BackgroundTransparency=0,Size=UDim2.new(0, 25, 0, 25)}):Play();
									FlatIdent_6066D = 3;
								end
								if (FlatIdent_6066D == 1) then
									e = b.Position.X;
									slidein = o.AbsolutePosition.X;
									FlatIdent_6066D = 2;
								end
								if (FlatIdent_6066D == 0) then
									a = true;
									f = b;
									FlatIdent_6066D = 1;
								end
								if (FlatIdent_6066D == 3) then
									game.TweenService:Create(t, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency=0}):Play();
									game.TweenService:Create(n, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency=0.5}):Play();
									FlatIdent_6066D = 4;
								end
								if (FlatIdent_6066D == 4) then
									game.TweenService:Create(u, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency=0}):Play();
									break;
								end
							end
						end
						b.Chb.Changed:Connect(function(b)
							if (b.UserInputType == Enum.UserInputState.End) then
								a = false;
							end
						end);
					end);
					o.InputEnded:Connect(function(b)
						if ((b.UserInputType == Enum.UserInputType.MouseMovement) or (b.UserInputType == Enum.UserInputType.Touch)) then
							local FlatIdent_508D4 = 0;
							while true do
								if (1 == FlatIdent_508D4) then
									game.TweenService:Create(p, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency=0.3,Size=UDim2.new(0, 18, 0, 18)}):Play();
									game.TweenService:Create(v, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint=Vector2.new(0, 0),TextSize=8,BackgroundTransparency=1,Size=UDim2.new(0, 18, 0, 18)}):Play();
									FlatIdent_508D4 = 2;
								end
								if (FlatIdent_508D4 == 0) then
									a = false;
									f = b;
									FlatIdent_508D4 = 1;
								end
								if (FlatIdent_508D4 == 2) then
									game.TweenService:Create(t, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency=0.5}):Play();
									game.TweenService:Create(n, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency=0.7}):Play();
									FlatIdent_508D4 = 3;
								end
								if (FlatIdent_508D4 == 3) then
									game.TweenService:Create(u, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency=0.5}):Play();
									break;
								end
							end
						end
					end);
					b.InputChanged:Connect(function(b)
						if ((b == f) and a) then
							i(b);
						end
					end);
					function set(a)
						if (a == "Text") then
							if tonumber(t.Text) then
								local FlatIdent_3831 = 0;
								while true do
									if (FlatIdent_3831 == 0) then
										if (tonumber(t.Text) <= d) then
											local FlatIdent_84478 = 0;
											while true do
												if (FlatIdent_84478 == 2) then
													pcall(function()
														g(Value);
													end);
													break;
												end
												if (FlatIdent_84478 == 1) then
													p:TweenPosition(UDim2.new(((tonumber(t.Text) or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
													v:TweenPosition(UDim2.new(((tonumber(t.Text) or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
													FlatIdent_84478 = 2;
												end
												if (FlatIdent_84478 == 0) then
													Value = t.Text;
													v.Text = t.Text;
													FlatIdent_84478 = 1;
												end
											end
										end
										if (tonumber(t.Text) > d) then
											local FlatIdent_270C = 0;
											while true do
												if (FlatIdent_270C == 1) then
													Value = d;
													p:TweenPosition(UDim2.new(((d or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
													FlatIdent_270C = 2;
												end
												if (2 == FlatIdent_270C) then
													v:TweenPosition(UDim2.new(((d or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
													pcall(function()
														g(Value);
													end);
													break;
												end
												if (FlatIdent_270C == 0) then
													t.Text = d;
													v.Text = d;
													FlatIdent_270C = 1;
												end
											end
										end
										FlatIdent_3831 = 1;
									end
									if (FlatIdent_3831 == 1) then
										if (tonumber(t.Text) >= c) then
											local FlatIdent_253F0 = 0;
											while true do
												if (0 == FlatIdent_253F0) then
													Value = t.Text;
													v.Text = t.Text;
													FlatIdent_253F0 = 1;
												end
												if (1 == FlatIdent_253F0) then
													p:TweenPosition(UDim2.new(((tonumber(t.Text) or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
													v:TweenPosition(UDim2.new(((tonumber(t.Text) or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
													FlatIdent_253F0 = 2;
												end
												if (FlatIdent_253F0 == 2) then
													pcall(function()
														g(Value);
													end);
													break;
												end
											end
										end
										if (tonumber(t.Text) < c) then
											local FlatIdent_740DC = 0;
											while true do
												if (FlatIdent_740DC == 1) then
													p.Position = UDim2.new(((c or c) - c) / (d - c), 0, 0, 0);
													v.Position = UDim2.new(((c or c) - c) / (d - c), 0, 0, 0);
													FlatIdent_740DC = 2;
												end
												if (FlatIdent_740DC == 0) then
													Value = c;
													v = c;
													FlatIdent_740DC = 1;
												end
												if (FlatIdent_740DC == 2) then
													pcall(function()
														g(Value);
													end);
													break;
												end
											end
										end
										break;
									end
								end
							else
								local FlatIdent_30B1F = 0;
								while true do
									if (FlatIdent_30B1F == 0) then
										t.Text = "" or Value;
										v.Text = Value;
										break;
									end
								end
							end
						end
					end
					t.Focused:Connect(function()
						t.Changed:Connect(set);
					end);
					t.FocusLost:Connect(function(a)
						if not a then
							local FlatIdent_8CB90 = 0;
							while true do
								if (FlatIdent_8CB90 == 0) then
									if (t.Text == "") then
										local FlatIdent_87441 = 0;
										while true do
											if (FlatIdent_87441 == 0) then
												t.Text = c;
												v.Text = c;
												FlatIdent_87441 = 1;
											end
											if (FlatIdent_87441 == 2) then
												v:TweenPosition(UDim2.new((c - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
												pcall(function()
													g(Value);
												end);
												break;
											end
											if (FlatIdent_87441 == 1) then
												Value = c;
												p:TweenPosition(UDim2.new((c - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
												FlatIdent_87441 = 2;
											end
										end
									end
									if (tonumber(t.Text) > tonumber(d)) then
										local FlatIdent_129E6 = 0;
										while true do
											if (FlatIdent_129E6 == 1) then
												v.Text = d;
												p:TweenPosition(UDim2.new(((d or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
												FlatIdent_129E6 = 2;
											end
											if (0 == FlatIdent_129E6) then
												Value = d;
												t.Text = d;
												FlatIdent_129E6 = 1;
											end
											if (FlatIdent_129E6 == 2) then
												v:TweenPosition(UDim2.new(((d or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
												pcall(function()
													g(Value);
												end);
												break;
											end
										end
									else
										Value = tonumber(t.Text);
									end
									FlatIdent_8CB90 = 1;
								end
								if (FlatIdent_8CB90 == 1) then
									if (tonumber(t.Text) < c) then
										t.Text = c;
										v.Text = c;
										Value = c;
										p:TweenPosition(UDim2.new((c - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
										v:TweenPosition(UDim2.new((c - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
										pcall(function()
											g(Value);
										end);
									else
										Value = tonumber(t.Text);
									end
									break;
								end
							end
						end
						if (tonumber(t.Text) > d) then
							local FlatIdent_12E4E = 0;
							while true do
								if (FlatIdent_12E4E == 2) then
									v:TweenPosition(UDim2.new(((d or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
									pcall(function()
										g(Value);
									end);
									break;
								end
								if (0 == FlatIdent_12E4E) then
									t.Text = d;
									v.Text = d;
									FlatIdent_12E4E = 1;
								end
								if (1 == FlatIdent_12E4E) then
									Value = d;
									p:TweenPosition(UDim2.new(((d or c) - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
									FlatIdent_12E4E = 2;
								end
							end
						else
							Value = tonumber(t.Text);
						end
						if (tonumber(t.Text) < c) then
							t.Text = c;
							v.Text = c;
							Value = c;
							p.Position = UDim2.new((c - c) / (d - c), 0, 0, 0);
							v.Position = UDim2.new((c - c) / (d - c), 0, 0, 0);
							pcall(function()
								g(Value);
							end);
						else
							Value = tonumber(t.Text);
						end
						if (t.Text == "") then
							local FlatIdent_1EAB2 = 0;
							while true do
								if (FlatIdent_1EAB2 == 2) then
									v:TweenPosition(UDim2.new((c - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.12, true);
									pcall(function()
										g(Value);
									end);
									break;
								end
								if (1 == FlatIdent_1EAB2) then
									Value = c;
									p:TweenPosition(UDim2.new((c - c) / (d - c), 0, 0, 0), "InOut", "Linear", 0.08, true);
									FlatIdent_1EAB2 = 2;
								end
								if (0 == FlatIdent_1EAB2) then
									t.Text = c;
									v.Text = c;
									FlatIdent_1EAB2 = 1;
								end
							end
						end
					end);
					return h;
				end;
				a.Slider2 = function(self, a, b, c, d, e)
					local g = Instance.new("Frame");
					local h = Instance.new("UICorner");
					local i = Instance.new("Frame");
					local j = Instance.new("UICorner");
					local k = Instance.new("ImageLabel");
					local l = Instance.new("UIStroke");
					local l = Instance.new("TextLabel");
					local m = Instance.new("Frame");
					local n = Instance.new("TextButton");
					local o = Instance.new("Frame");
					local p = Instance.new("Frame");
					local q = Instance.new("UICorner");
					local r = Instance.new("UICorner");
					local s = Instance.new("Frame");
					local t = Instance.new("UICorner");
					local u = Instance.new("Frame");
					local v = Instance.new("UICorner");
					local w = Instance.new("TextBox");
					local x = Instance.new("UICorner");
					local y = Instance.new("UIStroke");
					g.Name = "Slider";
					g.Parent = f;
					g.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
					g.BackgroundTransparency = 1;
					g.Size = UDim2.new(0, 379, 0, 60);
					h.CornerRadius = UDim.new(0, 5);
					h.Name = "slidercorner";
					h.Parent = g;
					i.Name = "sliderr";
					i.Parent = g;
					i.BackgroundColor3 = Color3.fromRGB(255, 30, 50);
					i.BackgroundTransparency = 0.8;
					i.Position = UDim2.new(0, 1, 0, 1);
					i.Size = UDim2.new(0, 379, 0, 60);
					j.CornerRadius = UDim.new(0, 5);
					j.Name = "sliderrcorner";
					j.Parent = i;
					k.Name = "ImageLabel";
					k.Parent = i;
					k.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
					k.BackgroundTransparency = 1;
					k.BorderSizePixel = 0;
					k.Position = UDim2.new(0, 7.5, 0, 7.5);
					k.Size = UDim2.new(0, 30, 0, 30);
					k.Image = "rbxassetid://86451637909512";
					l.Parent = i;
					l.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
					l.BackgroundTransparency = 1;
					l.Position = UDim2.new(0, 45, 0, 5);
					l.Size = UDim2.new(0, 280, 0, 30);
					l.Font = Enum.Font.GothamSemibold;
					l.Text = "|  " .. a;
					l.TextColor3 = Color3.fromRGB(255, 255, 255);
					l.TextSize = 15;
					l.TextXAlignment = Enum.TextXAlignment.Left;
					m.Name = "HAHA";
					m.Parent = i;
					m.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					m.BackgroundTransparency = 1;
					m.Size = UDim2.new(0, 359, 0, 29);
					n.Name = "AHEHE";
					n.Parent = i;
					n.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					n.BackgroundTransparency = 1;
					n.Position = UDim2.new(0, 10, 0, 42);
					n.Size = UDim2.new(0, 359, 0, 5);
					n.Font = Enum.Font.SourceSans;
					n.Text = "";
					n.TextColor3 = Color3.fromRGB(0, 0, 0);
					n.TextSize = 14;
					o.Name = "bar";
					o.Parent = n;
					o.BackgroundColor3 = Color3.fromRGB(255, 10, 10);
					o.Size = UDim2.new(0, 359, 0, 5);
					o.BackgroundTransparency = 0.8;
					p.Name = "bar1";
					p.Parent = o;
					p.BackgroundColor3 = Color3.fromRGB(90, 10, 20);
					p.BackgroundTransparency = 0;
					p.Size = UDim2.new(d / c, 0, 0, 5);
					q.CornerRadius = UDim.new(0, 5);
					q.Name = "bar1corner";
					q.Parent = p;
					r.CornerRadius = UDim.new(0, 5);
					r.Name = "barcorner";
					r.Parent = o;
					s.Name = "circlebar";
					s.Parent = p;
					s.BackgroundColor3 = Color3.fromRGB(90, 10, 20);
					s.Position = UDim2.new(1, -2, 0, -3);
					s.Size = UDim2.new(0, 10, 0, 10);
					t.CornerRadius = UDim.new(0, 100);
					t.Parent = s;
					u.Name = "slidervalue";
					u.Parent = i;
					u.BackgroundColor3 = Color3.fromRGB(90, 10, 20);
					u.BackgroundTransparency = 0.1;
					u.Position = UDim2.new(0, 319, 0, 10);
					u.Size = UDim2.new(0, 50, 0, 15);
					v.CornerRadius = UDim.new(0, 2);
					v.Name = "valuecorner";
					v.Parent = u;
					w.Parent = u;
					w.BackgroundColor3 = Color3.fromRGB(90, 10, 20);
					w.BackgroundTransparency = 0.1;
					w.Position = UDim2.new(0, 0, 0, 0);
					w.Size = UDim2.new(0, 50, 0, 16);
					w.Font = Enum.Font.Code;
					w.TextColor3 = Color3.fromRGB(255, 255, 255);
					w.TextSize = 9;
					w.Text = d;
					w.TextTransparency = 0.1;
					w.ClearTextOnFocus = false;
					w.TextXAlignment = Enum.TextXAlignment.Center;
					x.CornerRadius = UDim.new(0, 3);
					x.Parent = w;
					local a = game.Players.LocalPlayer:GetMouse();
					local f = game:GetService("UserInputService");
					if (Value == nil) then
						local FlatIdent_29A75 = 0;
						while true do
							if (FlatIdent_29A75 == 0) then
								Value = d;
								pcall(function()
									e(Value);
								end);
								break;
							end
						end
					end
					n.MouseButton1Down:Connect(function()
						local FlatIdent_80652 = 0;
						while true do
							if (FlatIdent_80652 == 0) then
								Value = math.floor((((tonumber(c) - tonumber(b)) / 349) * p.AbsoluteSize.X) + tonumber(b)) or 0;
								pcall(function()
									e(Value);
								end);
								FlatIdent_80652 = 1;
							end
							if (1 == FlatIdent_80652) then
								p.Size = UDim2.new(0, math.clamp(a.X - p.AbsolutePosition.X, 0, 349), 0, 5);
								s.Position = UDim2.new(0, math.clamp((a.X - p.AbsolutePosition.X) - 2, 0, 349), 0, -3);
								FlatIdent_80652 = 2;
							end
							if (2 == FlatIdent_80652) then
								moveconnection = a.Move:Connect(function()
									local FlatIdent_8CF9A = 0;
									while true do
										if (FlatIdent_8CF9A == 1) then
											pcall(function()
												e(Value);
											end);
											p.Size = UDim2.new(0, math.clamp(a.X - p.AbsolutePosition.X, 0, 349), 0, 5);
											FlatIdent_8CF9A = 2;
										end
										if (FlatIdent_8CF9A == 2) then
											s.Position = UDim2.new(0, math.clamp((a.X - p.AbsolutePosition.X) - 2, 0, 349), 0, -3);
											break;
										end
										if (0 == FlatIdent_8CF9A) then
											w.Text = Value;
											Value = math.floor((((tonumber(c) - tonumber(b)) / 349) * p.AbsoluteSize.X) + tonumber(b));
											FlatIdent_8CF9A = 1;
										end
									end
								end);
								releaseconnection = f.InputEnded:Connect(function(d)
									if (d.UserInputType == Enum.UserInputType.MouseButton1) then
										Value = math.floor((((tonumber(c) - tonumber(b)) / 349) * p.AbsoluteSize.X) + tonumber(b));
										pcall(function()
											e(Value);
										end);
										p.Size = UDim2.new(0, math.clamp(a.X - p.AbsolutePosition.X, 0, 349), 0, 5);
										s.Position = UDim2.new(0, math.clamp((a.X - p.AbsolutePosition.X) - 2, 0, 349), 0, -3);
										moveconnection:Disconnect();
										releaseconnection:Disconnect();
									end
								end);
								break;
							end
						end
					end);
					releaseconnection = f.InputEnded:Connect(function(a)
						if (a.UserInputType == Enum.UserInputType.MouseButton1) then
							local FlatIdent_7735C = 0;
							while true do
								if (FlatIdent_7735C == 0) then
									Value = math.floor((((tonumber(c) - tonumber(b)) / 349) * p.AbsoluteSize.X) + tonumber(b));
									w.Text = Value;
									break;
								end
							end
						end
					end);
					w.FocusLost:Connect(function()
						local FlatIdent_38BA4 = 0;
						while true do
							if (2 == FlatIdent_38BA4) then
								pcall(e, w.Text);
								break;
							end
							if (FlatIdent_38BA4 == 1) then
								s.Position = UDim2.new(1, -2, 0, -3);
								w.Text = tostring(w.Text and math.floor(((w.Text / c) * (c - b)) + b));
								FlatIdent_38BA4 = 2;
							end
							if (FlatIdent_38BA4 == 0) then
								if (tonumber(w.Text) > c) then
									w.Text = c;
								end
								p.Size = UDim2.new((w.Text or 0) / c, 0, 0, 5);
								FlatIdent_38BA4 = 1;
							end
						end
					end);
				end;
				a.Textbox = function(self, a, b, c)
					local FlatIdent_69486 = 0;
					local d;
					local e;
					local g;
					local h;
					local i;
					local j;
					local k;
					local l;
					while true do
						if (FlatIdent_69486 == 10) then
							j.Position = UDim2.new(0, 1, 0, 1);
							j.Size = UDim2.new(0, 379, 0, 29);
							j.Font = Enum.Font.SourceSans;
							j.Text = "";
							FlatIdent_69486 = 11;
						end
						if (FlatIdent_69486 == 9) then
							j.Name = "txtbtn";
							j.Parent = d;
							j.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							j.BackgroundTransparency = 1;
							FlatIdent_69486 = 10;
						end
						if (FlatIdent_69486 == 2) then
							d.Name = "Textbox";
							d.Parent = f;
							d.BackgroundColor3 = Color3.new(32, 33, 36);
							d.BackgroundTransparency = 0;
							FlatIdent_69486 = 3;
						end
						if (FlatIdent_69486 == 14) then
							k.TextTransparency = 0;
							k.FocusLost:Connect(function()
								local FlatIdent_1C534 = 0;
								while true do
									if (FlatIdent_1C534 == 0) then
										c(k.Text);
										if b then
											k.Text = "";
										end
										break;
									end
								end
							end);
							l.CornerRadius = UDim.new(0, 5);
							l.Parent = k;
							break;
						end
						if (FlatIdent_69486 == 5) then
							g.Size = UDim2.new(0, 385, 0, 29);
							h.CornerRadius = UDim.new(0, 5);
							h.Name = "TextboxxCorner";
							h.Parent = g;
							FlatIdent_69486 = 6;
						end
						if (FlatIdent_69486 == 3) then
							d.Size = UDim2.new(0, 379, 0, 31);
							e.CornerRadius = UDim.new(0, 5);
							e.Name = "TextboxCorner";
							e.Parent = d;
							FlatIdent_69486 = 4;
						end
						if (FlatIdent_69486 == 8) then
							i.TextColor3 = Color3.fromRGB(255, 255, 255);
							i.TextSize = 16;
							i.TextTransparency = 0;
							i.TextXAlignment = Enum.TextXAlignment.Left;
							FlatIdent_69486 = 9;
						end
						if (FlatIdent_69486 == 1) then
							i = Instance.new("TextLabel");
							j = Instance.new("TextButton");
							k = Instance.new("TextBox");
							l = Instance.new("UICorner");
							FlatIdent_69486 = 2;
						end
						if (FlatIdent_69486 == 13) then
							k.Font = Enum.Font.GothamSemibold;
							k.Text = "";
							k.TextColor3 = Color3.fromRGB(225, 225, 225);
							k.TextSize = 11;
							FlatIdent_69486 = 14;
						end
						if (FlatIdent_69486 == 6) then
							i.Name = "TextboxLabel";
							i.Parent = d;
							i.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
							i.BackgroundTransparency = 1;
							FlatIdent_69486 = 7;
						end
						if (FlatIdent_69486 == 0) then
							d = Instance.new("Frame");
							e = Instance.new("UICorner");
							g = Instance.new("Frame");
							h = Instance.new("UICorner");
							FlatIdent_69486 = 1;
						end
						if (FlatIdent_69486 == 7) then
							i.Position = UDim2.new(0, 15, 0, 0);
							i.Text = a;
							i.Size = UDim2.new(0, 145, 0, 31);
							i.Font = Enum.Font.GothamSemibold;
							FlatIdent_69486 = 8;
						end
						if (FlatIdent_69486 == 12) then
							k.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
							k.BackgroundTransparency = 0;
							k.Position = UDim2.new(0, 275, 0, 4);
							k.Size = UDim2.new(0, 100, 0, 24);
							FlatIdent_69486 = 13;
						end
						if (FlatIdent_69486 == 11) then
							j.TextColor3 = Color3.fromRGB(0, 0, 0);
							j.TextSize = 14;
							k.Name = "RealTextbox";
							k.Parent = d;
							FlatIdent_69486 = 12;
						end
						if (FlatIdent_69486 == 4) then
							g.Name = "Textboxx";
							g.Parent = d;
							g.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
							g.Position = UDim2.new(0, 1, 0, 1);
							FlatIdent_69486 = 5;
						end
					end
				end;
				a.Label = function(self, a)
					local FlatIdent_5B476 = 0;
					local b;
					local c;
					local d;
					while true do
						if (FlatIdent_5B476 == 2) then
							b.BackgroundTransparency = 1;
							b.Size = UDim2.new(0, 410, 0, 20);
							b.Font = Enum.Font.GothamSemibold;
							FlatIdent_5B476 = 3;
						end
						if (FlatIdent_5B476 == 5) then
							c.Name = "PaddingLabel";
							d.Set = function(self, a)
								b.Text = a;
							end;
							return d;
						end
						if (0 == FlatIdent_5B476) then
							b = Instance.new("TextLabel");
							c = Instance.new("UIPadding");
							d = {};
							FlatIdent_5B476 = 1;
						end
						if (FlatIdent_5B476 == 3) then
							b.TextColor3 = Color3.fromRGB(225, 225, 225);
							b.TextSize = 16;
							b.Text = a;
							FlatIdent_5B476 = 4;
						end
						if (FlatIdent_5B476 == 1) then
							b.Name = "Label";
							b.Parent = f;
							b.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							FlatIdent_5B476 = 2;
						end
						if (FlatIdent_5B476 == 4) then
							b.TextXAlignment = Enum.TextXAlignment.Left;
							c.PaddingLeft = UDim.new(0, 15);
							c.Parent = b;
							FlatIdent_5B476 = 5;
						end
					end
				end;
				a.Label1 = function(self, a)
					local FlatIdent_1DE58 = 0;
					local b;
					local c;
					local d;
					while true do
						if (0 == FlatIdent_1DE58) then
							b = Instance.new("TextLabel");
							c = Instance.new("UIPadding");
							d = {};
							FlatIdent_1DE58 = 1;
						end
						if (FlatIdent_1DE58 == 4) then
							b.TextXAlignment = Enum.TextXAlignment.Left;
							c.PaddingLeft = UDim.new(0, 15);
							c.Parent = b;
							FlatIdent_1DE58 = 5;
						end
						if (FlatIdent_1DE58 == 5) then
							c.Name = "PaddingLabel1";
							d.Refresh = function(self, a)
								b.Text = a;
							end;
							return d;
						end
						if (FlatIdent_1DE58 == 2) then
							b.BackgroundTransparency = 1;
							b.Size = UDim2.new(0, 410, 0, 20);
							b.Font = Enum.Font.GothamSemibold;
							FlatIdent_1DE58 = 3;
						end
						if (1 == FlatIdent_1DE58) then
							b.Name = "Label1";
							b.Parent = f;
							b.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							FlatIdent_1DE58 = 2;
						end
						if (3 == FlatIdent_1DE58) then
							b.TextColor3 = Color3.fromRGB(255, 255, 255);
							b.TextSize = 15;
							b.Text = a;
							FlatIdent_1DE58 = 4;
						end
					end
				end;
				a.Textbox = function(self, a, b, c)
					local d = Instance.new("Frame");
					local e = Instance.new("UICorner");
					local g = Instance.new("Frame");
					local h = Instance.new("UICorner");
					local i = Instance.new("TextLabel");
					local j = Instance.new("TextButton");
					local k = Instance.new("TextBox");
					local l = Instance.new("UICorner");
					d.Name = "Textbox";
					d.Parent = f;
					d.BackgroundColor3 = Color3.new(32, 33, 36);
					d.BackgroundTransparency = 0;
					d.Size = UDim2.new(0, 379, 0, 31);
					e.CornerRadius = UDim.new(0, 5);
					e.Name = "TextboxCorner";
					e.Parent = d;
					g.Name = "Textboxx";
					g.Parent = d;
					g.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
					g.Position = UDim2.new(0, 1, 0, 1);
					g.Size = UDim2.new(0, 385, 0, 29);
					h.CornerRadius = UDim.new(0, 3);
					h.Name = "TextboxxCorner";
					h.Parent = g;
					i.Name = "TextboxLabel";
					i.Parent = d;
					i.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
					i.BackgroundTransparency = 1;
					i.Position = UDim2.new(0, 15, 0, 0);
					i.Text = a;
					i.Size = UDim2.new(0, 145, 0, 31);
					i.Font = Enum.Font.GothamSemibold;
					i.TextColor3 = Color3.fromRGB(225, 225, 225);
					i.TextSize = 16;
					i.TextTransparency = 0;
					i.TextXAlignment = Enum.TextXAlignment.Left;
					j.Name = "txtbtn";
					j.Parent = d;
					j.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
					j.BackgroundTransparency = 1;
					j.Position = UDim2.new(0, 1, 0, 1);
					j.Size = UDim2.new(0, 379, 0, 29);
					j.Font = Enum.Font.SourceSans;
					j.Text = "";
					j.TextColor3 = Color3.fromRGB(0, 0, 0);
					j.TextSize = 14;
					k.Name = "RealTextbox";
					k.Parent = d;
					k.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
					k.BackgroundTransparency = 0;
					k.Position = UDim2.new(0, 275, 0, 4);
					k.Size = UDim2.new(0, 100, 0, 24);
					k.Font = Enum.Font.GothamSemibold;
					k.Text = "";
					k.TextColor3 = Color3.fromRGB(225, 225, 225);
					k.TextSize = 11;
					k.TextTransparency = 0;
					k.FocusLost:Connect(function()
						local FlatIdent_86ECC = 0;
						while true do
							if (FlatIdent_86ECC == 0) then
								c(k.Text);
								if b then
									k.Text = "";
								end
								break;
							end
						end
					end);
					l.CornerRadius = UDim.new(0, 3);
					l.Parent = k;
				end;
				a.Label = function(self, a)
					local b = Instance.new("TextLabel");
					local c = Instance.new("UIPadding");
					local d = {};
					b.Name = "Label";
					b.Parent = f;
					b.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					b.BackgroundTransparency = 1;
					b.Size = UDim2.new(0, 410, 0, 30);
					b.Font = Enum.Font.GothamSemibold;
					b.TextColor3 = Color3.fromRGB(225, 225, 225);
					b.TextSize = 14;
					b.Text = a;
					b.TextXAlignment = Enum.TextXAlignment.Left;
					c.PaddingLeft = UDim.new(0, 15);
					c.Parent = b;
					c.Name = "PaddingLabel";
					d.Set = function(self, a)
						b.Text = a;
					end;
					return d;
				end;
				a.Label1 = function(self, a)
					local b = Instance.new("TextLabel");
					local c = Instance.new("UIPadding");
					local d = {};
					b.Name = "Label1";
					b.Parent = f;
					b.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					b.BackgroundTransparency = 1;
					b.Size = UDim2.new(0, 410, 0, 20);
					b.Font = Enum.Font.GothamSemibold;
					b.TextColor3 = Color3.fromRGB(255, 255, 255);
					b.TextSize = 15;
					b.Text = a;
					b.RichText = true;
					b.TextXAlignment = Enum.TextXAlignment.Left;
					c.PaddingLeft = UDim.new(0, 15);
					c.Parent = b;
					c.Name = "PaddingLabel1";
					d.Refresh = function(self, a)
						b.Text = a;
					end;
					return d;
				end;
				a.Dis = function(self, a, b)
					local FlatIdent_15C34 = 0;
					local c;
					local d;
					local e;
					while true do
						if (FlatIdent_15C34 == 6) then
							Labeld.Font = Enum.Font.GothamSemibold;
							Labeld.TextColor3 = Color3.fromRGB(240, 10, 10);
							Labeld.TextSize = 15;
							FlatIdent_15C34 = 7;
						end
						if (FlatIdent_15C34 == 7) then
							Labeld.Text = b or "";
							Labeld.TextXAlignment = Enum.TextXAlignment.Left;
							d.PaddingLeft = UDim.new(0, 15);
							FlatIdent_15C34 = 8;
						end
						if (FlatIdent_15C34 == 2) then
							c.BackgroundTransparency = 1;
							c.Size = UDim2.new(0, 410, 0, 20);
							c.Font = Enum.Font.GothamSemibold;
							FlatIdent_15C34 = 3;
						end
						if (FlatIdent_15C34 == 1) then
							c.Name = "Label1";
							c.Parent = f;
							c.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							FlatIdent_15C34 = 2;
						end
						if (FlatIdent_15C34 == 0) then
							c = Instance.new("TextLabel");
							d = Instance.new("UIPadding");
							e = {};
							FlatIdent_15C34 = 1;
						end
						if (FlatIdent_15C34 == 4) then
							c.TextXAlignment = Enum.TextXAlignment.Left;
							Labeld.Name = "Labeld";
							Labeld.Parent = f;
							FlatIdent_15C34 = 5;
						end
						if (FlatIdent_15C34 == 3) then
							c.TextColor3 = Color3.fromRGB(255, 255, 255);
							c.TextSize = 15;
							c.Text = a;
							FlatIdent_15C34 = 4;
						end
						if (FlatIdent_15C34 == 9) then
							return e;
						end
						if (FlatIdent_15C34 == 5) then
							Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							Labeld.BackgroundTransparency = 1;
							Labeld.Size = UDim2.new(0, 410, 0, 20);
							FlatIdent_15C34 = 6;
						end
						if (FlatIdent_15C34 == 8) then
							d.Parent = c;
							d.Name = "PaddingLabel1";
							e.Refresh = function(self, a)
								c.Text = a;
							end;
							FlatIdent_15C34 = 9;
						end
					end
				end;
				a.Seperator = function(self, a)
					local FlatIdent_97F0B = 0;
					local b;
					local c;
					local d;
					local e;
					local g;
					local h;
					while true do
						if (FlatIdent_97F0B == 3) then
							c.BorderSizePixel = 0;
							c.Position = UDim2.new(0, 10, 0, 13);
							c.Size = UDim2.new(0, 60, 0, 2);
							d.Name = "Sep2";
							d.Parent = b;
							FlatIdent_97F0B = 4;
						end
						if (FlatIdent_97F0B == 4) then
							d.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							d.BackgroundTransparency = 1;
							d.Position = UDim2.new(0, 0, 0, 0);
							d.Size = UDim2.new(0, 379, 0, 30);
							d.Font = Enum.Font.GothamSemibold;
							FlatIdent_97F0B = 5;
						end
						if (6 == FlatIdent_97F0B) then
							e.BackgroundColor3 = _G.Primary;
							e.BackgroundTransparency = 0.1;
							e.BorderSizePixel = 0;
							e.Position = UDim2.new(0, 309, 0, 13);
							e.Size = UDim2.new(0, 60, 0, 2);
							FlatIdent_97F0B = 7;
						end
						if (FlatIdent_97F0B == 1) then
							h = Instance.new("UIGradient");
							b.Name = "Seperator";
							b.Parent = f;
							b.BackgroundColor3 = _G.Primary;
							b.BackgroundTransparency = 1;
							FlatIdent_97F0B = 2;
						end
						if (FlatIdent_97F0B == 0) then
							b = Instance.new("Frame");
							c = Instance.new("Frame");
							d = Instance.new("TextLabel");
							e = Instance.new("Frame");
							g = Instance.new("UIGradient");
							FlatIdent_97F0B = 1;
						end
						if (FlatIdent_97F0B == 5) then
							d.Text = "" .. a .. "";
							d.TextColor3 = Color3.fromRGB(255, 255, 255);
							d.TextSize = 14;
							e.Name = "Sep3";
							e.Parent = b;
							FlatIdent_97F0B = 6;
						end
						if (FlatIdent_97F0B == 2) then
							b.Size = UDim2.new(0, 379, 0, 30);
							c.Name = "Sep1";
							c.Parent = b;
							c.BackgroundColor3 = _G.Primary;
							c.BackgroundTransparency = 0.1;
							FlatIdent_97F0B = 3;
						end
						if (7 == FlatIdent_97F0B) then
							g.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, _G.Dark),ColorSequenceKeypoint.new(0.5, _G.Primary),ColorSequenceKeypoint.new(1, _G.Dark)});
							g.Parent = c;
							h.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, _G.Dark),ColorSequenceKeypoint.new(0.5, _G.Primary),ColorSequenceKeypoint.new(1, _G.Dark)});
							h.Parent = e;
							break;
						end
					end
				end;
				a.Line = function(self)
					local FlatIdent_91AA8 = 0;
					local a;
					local b;
					local c;
					while true do
						if (FlatIdent_91AA8 == 2) then
							a.Size = UDim2.new(0, 310, 0, 20);
							b.Name = "Line";
							b.Parent = a;
							b.BackgroundColor3 = Color3.new(125, 125, 125);
							FlatIdent_91AA8 = 3;
						end
						if (FlatIdent_91AA8 == 4) then
							c.Parent = b;
							break;
						end
						if (3 == FlatIdent_91AA8) then
							b.BorderSizePixel = 0;
							b.Position = UDim2.new(0, 0, 0, 10);
							b.Size = UDim2.new(0, 379, 0, 1);
							c.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, _G.Dark),ColorSequenceKeypoint.new(0.4, _G.Primary),ColorSequenceKeypoint.new(0.5, _G.Primary),ColorSequenceKeypoint.new(0.6, _G.Primary),ColorSequenceKeypoint.new(1, _G.Dark)});
							FlatIdent_91AA8 = 4;
						end
						if (FlatIdent_91AA8 == 0) then
							a = Instance.new("Frame");
							b = Instance.new("Frame");
							c = Instance.new("UIGradient");
							a.Name = "Linee";
							FlatIdent_91AA8 = 1;
						end
						if (FlatIdent_91AA8 == 1) then
							a.Parent = f;
							a.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							a.BackgroundTransparency = 1;
							a.Position = UDim2.new(0, 0, 0.119999997, 0);
							FlatIdent_91AA8 = 2;
						end
					end
				end;
				return a;
			end;
			return d;
		end
		if (FlatIdent_27957 == 1) then
			f.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			i = Instance.new("Frame");
			i.Name = "Main";
			i.Parent = f;
			i.ClipsDescendants = true;
			i.AnchorPoint = Vector2.new(0.5, 0.5);
			i.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
			i.BackgroundTransparency = 0.1;
			i.Position = UDim2.new(0.5, 0, 0.5, 0);
			FlatIdent_27957 = 2;
		end
		if (FlatIdent_27957 == 6) then
			j.Parent = i;
			j.BackgroundTransparency = 1;
			j.ImageColor3 = Color3.fromRGB(255, 255, 255);
			j.Position = UDim2.new(0, 500, 0, 7);
			j.Size = UDim2.new(0, 30, 0, 30);
			j.Image = "rbxassetid://84246010111744";
			j.MouseButton1Click:Connect(function()
				local FlatIdent_52551 = 0;
				while true do
					if (FlatIdent_52551 == 0) then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game);
						game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game);
						FlatIdent_52551 = 1;
					end
					if (FlatIdent_52551 == 1) then
						e.Visible = true;
						break;
					end
				end
			end);
			e = Instance.new("Frame");
			e.Name = "Tab";
			FlatIdent_27957 = 7;
		end
		if (FlatIdent_27957 == 9) then
			e = Instance.new("UIListLayout");
			e.Name = "PLL";
			e.Parent = j;
			e.SortOrder = Enum.SortOrder.LayoutOrder;
			e.Padding = UDim.new(0, 2);
			k = Instance.new("UIPadding");
			k.Name = "PPD";
			k.Parent = j;
			k = Instance.new("UIStroke");
			FlatIdent_27957 = 10;
		end
		if (FlatIdent_27957 == 3) then
			f = Instance.new("UICorner");
			f.Name = "lol";
			f.Parent = Dark;
			f = Instance.new("Frame");
			f.Name = "Top";
			f.Parent = i;
			f.BackgroundColor3 = Color3.fromRGB(126, 165, 191);
			f.Size = UDim2.new(0, 556, 0, 30);
			f.BackgroundTransparency = 1;
			FlatIdent_27957 = 4;
		end
		if (FlatIdent_27957 == 7) then
			e.Parent = i;
			e.BackgroundColor3 = Color3.fromRGB();
			e.Position = UDim2.new(0, 14, 0, 33);
			e.BackgroundTransparency = 1;
			e.Size = UDim2.new(0, 138, 0, 307);
			j = Instance.new("UIStroke");
			j = Instance.new("ScrollingFrame");
			j.Name = "ScrollTab";
			j.Parent = e;
			FlatIdent_27957 = 8;
		end
		if (FlatIdent_27957 == 2) then
			i.Size = UDim2.new(0, 0, 0, 0);
			i:TweenSize(UDim2.new(0, 555, 0, 352), "Out", "Quad", 0.4, true);
			f = Instance.new("UIStroke");
			f = Instance.new("UICorner");
			f.Name = "MCNR";
			f.Parent = i;
			f = Instance.new("UICorner");
			f.Name = "MCNR";
			f.Parent = BackgroundImage;
			FlatIdent_27957 = 3;
		end
		if (FlatIdent_27957 == 4) then
			j = Instance.new("UICorner");
			j.Name = "TCNR";
			j.Parent = f;
			j.CornerRadius = UDim.new(0, 5);
			j = Instance.new("TextLabel");
			j.Name = "ttittles";
			j.Parent = f;
			j.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			j.BackgroundTransparency = 1;
			FlatIdent_27957 = 5;
		end
		if (FlatIdent_27957 == 5) then
			j.Position = UDim2.new(0, 30, 0.05, 0);
			j.Size = UDim2.new(0, 255, 0.05, 25);
			j.Font = Enum.Font.GothamBold;
			j.Text = "XGOHUB - 【メ】【G】【Ö】【ℍ】【ⓤ】【ß】by.xgo";
			j.TextSize = 15;
			j.TextColor3 = Color3.fromRGB(255, 255, 255);
			j.TextXAlignment = Enum.TextXAlignment.Left;
			j = Instance.new("ImageButton");
			j.Name = "Minimize";
			FlatIdent_27957 = 6;
		end
		if (FlatIdent_27957 == 10) then
			k = Instance.new("Frame");
			k.Name = "Page";
			k.Parent = i;
			k.BackgroundColor3 = Color3.fromRGB(41, 53, 61);
			k.Position = UDim2.new(0, 162, 0, 33);
			k.Size = UDim2.new(0, 380, 0, 308);
			k.BackgroundTransparency = 1;
			l = Instance.new("UICorner");
			l.Parent = k;
			FlatIdent_27957 = 11;
		end
	end
end;
return a;