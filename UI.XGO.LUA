local Library = loadstring(game:HttpGetAsync('https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/raw/main/UI.XGOHUB.LUA'))()
Library.Theme:Halloween()
local Window = Library:CreateWindow({
    Title = 'Acrylic - ' .. Library.Version .. ' ' .. Library.TextEffect:AddColor('by xgo', Color3.fromRGB(0, 255, 238)),
    Logo = "rbxassetid://96996396016819",
    KeySystem = false, -- 启用卡密系统
    KeySystemInfo = {
        Title = "- Key System -",
        OnGetKey = function()
            -- 这里应该是获取卡密的逻辑，返回卡密
            return "https://example.com/getkey?hwid=" -- 这里只是一个示例，实际上你需要实现获取卡密的逻辑
        end,
        OnLogin = function(key)
            -- 这里应该是验证卡密的逻辑
            if key == "1234" then
                wait(0.1)
                return true -- 卡密正确
            end
            wait()
            return false -- 卡密错误
        end,
    }
})
local Tab = Window:Tab({
    Title = "Example",
    Icon = "library"
});
Tab:Block('Example')
-- 下拉菜单（Dropdown）
Tab:Dropdown({
    Title = "Dropdown 1",
    Values = {"Value 1", "Value 2", "Value 3"},
    Default = "Value 1",
    Multi = false,
    MaxMulti = 4,
    Callback = function(value)
        print("Dropdown 1 selected: " .. value)
    end,
});

Tab:Dropdown({
    Title = "Dropdown 2",
    Values = {"Option A", "Option B", "Option C", "Option D"},
    Default = "Option A",
    Multi = true,
    MaxMulti = 2,
    Callback = function(values)
        print("Dropdown 2 selected: " .. table.concat(values, ", "))
    end,
});

-- 滑块（Slider）
Tab:Slider({
    Title = "Slider 1",
    Tip = "Range: 0 to 100",
    Min = 0,
    Max = 100,
    Default = 50,
    Round = 0,
    Callback = function(value)
        print("Slider 1 value: " .. value)
    end,
});

Tab:Slider({
    Title = "Slider 2",
    Tip = "Range: -10 to 10",
    Min = -10,
    Max = 10,
    Default = 0,
    Round = 2,
    Callback = function(value)
        print("Slider 2 value: " .. value)
    end,
});

-- 开关按钮（Toggle）
Tab:Toggle({
    Title = "Toggle 1",
    Tip = "Toggle Me!",
    Default = false,
    Callback = function(value)
        print("Toggle 1 state: " .. tostring(value))
    end,
});

Tab:Toggle({
    Title = "Toggle 2",
    Tip = "Toggle Me Too!",
    Default = true,
    Callback = function(value)
        print("Toggle 2 state: " .. tostring(value))
    end,
});

-- 点击按钮（Button）
Tab:Button({
    Title = "Button 1",
    Tip = "Click Me!",
    Callback = function()
        print("Button 1 clicked")
    end,
});

Tab:Button({
    Title = "Button 2",
    Tip = "Press Me!",
    Callback = function()
        print("Button 2 clicked")
    end,
});

Tab:Paragraph({
	Title = 'Paragraph',
	Description = "Description\n[1]: Example"
})

Window:Notify({
	Title = "Notification",
	Description = "Description",
	Duration = 5,
})