print("Executed")
local TweenService = game:service"TweenService"
local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
local mouse = plr:GetMouse()
local ParentGui = game.Players.LocalPlayer.PlayerGui -- or ParentGui
local Library = {}

makedraggable = function (topbar, object)
	local Dragging = false
	local DragInput = nil
	local DragStart = nil
	local PositionStart = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local newPos = UDim2.new(
			PositionStart.X.Scale,
			PositionStart.X.Offset + Delta.X,
			PositionStart.Y.Scale,
			PositionStart.Y.Offset + Delta.Y
		)
		object.Position = newPos
	end

	topbar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			PositionStart = object.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)

	topbar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)

	uis.InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			Update(input)
		end
	end)
end

function Library:AddWindows()
    local ScreenShit = Instance.new("ScreenGui")
    local AnDzGUI = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local LogoHut = Instance.new("ImageLabel")
    local TabList = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local AnNigga = Instance.new("ScrollingFrame")
    local UIPadding = Instance.new("UIPadding")
    local UIListLayout = Instance.new("UIListLayout")
    local Layout = Instance.new("Frame")
    local LayoutReal = Instance.new("Frame")
    local CCC = Instance.new("Folder")
    local UIPageLayout = Instance.new("UIPageLayout")
    local TOP = Instance.new("Frame")
    local UIStroke_15 = Instance.new("UIStroke")
    local CloseUI = Instance.new("Frame")
    local UICorner_47 = Instance.new("UICorner")
    local LogoHut_2 = Instance.new("ImageLabel")
    local Click_3 = Instance.new("TextButton")

    ScreenShit.Name = "ScreenShit"
    ScreenShit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    AnDzGUI.Name = "AnDzGUI"
    AnDzGUI.Parent = ScreenShit
    AnDzGUI.AnchorPoint = Vector2.new(0.5, 0.5)
    AnDzGUI.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    AnDzGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    AnDzGUI.BorderSizePixel = 0
    AnDzGUI.Position = UDim2.new(0.584039748, 0, 0.5, 0)
    AnDzGUI.Size = UDim2.new(0, 481, 0, 332)
    AnDzGUI.ClipsDescendants = true

    UICorner.Parent = AnDzGUI

    TOP.Name = "TOP"
    TOP.Parent = AnDzGUI
    TOP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TOP.BackgroundTransparency = 1.000
    TOP.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TOP.BorderSizePixel = 0
    TOP.Size = UDim2.new(1, 0, 0, 75)

    UIStroke_15.Parent = AnDzGUI
    UIStroke_15.Color = Color3.fromRGB(242, 232, 33)
    UIStroke_15.Transparency = 0.210
    UIStroke_15.Thickness = 1.200

    LogoHut.Name = "LogoHut"
    LogoHut.Parent = AnDzGUI
    LogoHut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LogoHut.BackgroundTransparency = 1.000
    LogoHut.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LogoHut.BorderSizePixel = 0
    LogoHut.Position = UDim2.new(0.0222222228, 0, 0.0149999997, 0)
    LogoHut.Size = UDim2.new(0, 55, 0, 55)
    LogoHut.Image = "http://www.roblox.com/asset/?id=100959239555483"

    TabList.Name = "Tab List"
    TabList.Parent = AnDzGUI
    TabList.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    TabList.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabList.BorderSizePixel = 0
    TabList.Position = UDim2.new(0.162222117, 0, 0.0350000001, 0)
    TabList.Size = UDim2.new(0, 502, 0, 39)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Parent = TabList

    AnNigga.Name = "AnNigga"
    AnNigga.Parent = TabList
    AnNigga.AnchorPoint = Vector2.new(0.5, 0.5)
    AnNigga.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AnNigga.BackgroundTransparency = 1.000
    AnNigga.BorderColor3 = Color3.fromRGB(0, 0, 0)
    AnNigga.BorderSizePixel = 0
    AnNigga.Position = UDim2.new(0.5, 0, 0.5, 0)
    AnNigga.Size = UDim2.new(1, -7, 1, -7)
    AnNigga.CanvasSize = UDim2.new(2, 0, 0, 0)
    AnNigga.ScrollBarThickness = 0

    game:GetService("RunService").Stepped:Connect(function()
        AnNigga.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X + 20, 0, 0)
    end)

    UIPadding.Parent = AnNigga
    UIPadding.PaddingBottom = UDim.new(0, 2)
    UIPadding.PaddingLeft = UDim.new(0, 3)
    UIPadding.PaddingRight = UDim.new(0, 3)
    UIPadding.PaddingTop = UDim.new(0, 4)

    UIListLayout.Parent = AnNigga
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 12)

    Layout.Name = "Layout"
    Layout.Parent = CCC
    Layout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Layout.BackgroundTransparency = 1.000
    Layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Layout.BorderSizePixel = 0
    Layout.Position = UDim2.new(0.0222222917, 0, 0.170000002, 0)
    Layout.Size = UDim2.new(1, 0, 0, 332)

    LayoutReal.Name = "LayoutReal"
    LayoutReal.Parent = AnDzGUI
    LayoutReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LayoutReal.BackgroundTransparency = 1.000
    LayoutReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LayoutReal.BorderSizePixel = 0
    LayoutReal.Size = UDim2.new(1, 0, 1, 0)
    LayoutReal.ClipsDescendants = true

    CCC.Name = "CCC"
    CCC.Parent = LayoutReal

    UIPageLayout.Parent = CCC
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.TweenTime = 0.350
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false

    CloseUI.Name = "CloseUI"
    CloseUI.Parent = ScreenShit
    CloseUI.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    CloseUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseUI.BorderSizePixel = 0
    CloseUI.Position = UDim2.new(0.130987287, 0, 0.10569106, 0)
    CloseUI.Size = UDim2.new(0, 45, 0, 45)
    
    UICorner_47.Parent = CloseUI
    
    LogoHut_2.Name = "LogoHut"
    LogoHut_2.Parent = CloseUI
    LogoHut_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LogoHut_2.BackgroundTransparency = 1.000
    LogoHut_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LogoHut_2.BorderSizePixel = 0
    LogoHut_2.Position = UDim2.new(0.0222222228, 0, 0.0149999997, 0)
    LogoHut_2.Size = UDim2.new(1, 0, 1, 0)
    LogoHut_2.Image = "http://www.roblox.com/asset/?id=100959239555483"
    
    Click_3.Name = "Click"
    Click_3.Parent = CloseUI
    Click_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Click_3.BackgroundTransparency = 1.000
    Click_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Click_3.BorderSizePixel = 0
    Click_3.Size = UDim2.new(1, 0, 1, 0)
    Click_3.Font = Enum.Font.SourceSans
    Click_3.Text = ""
    Click_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    Click_3.TextSize = 14.000
    Click_3.Activated:Connect(function()
        if AnDzGUI.Visible == true then
            AnDzGUI.Visible = false
        else
            AnDzGUI.Visible = true
        end
    end)
    makedraggable(TOP, AnDzGUI)
    local CountTab = 1
    local TabFunc = {}
    function TabFunc:AddTab(cf)
        cf = cf or {}
        cf.Name = cf.Name or "Tab 1"
        
        local TabDisable = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local NameTab_2 = Instance.new("TextLabel")
        local Click_2 = Instance.new("TextButton")
        local Channel = Instance.new("Frame")
        local Left = Instance.new("Frame")
        local UICorner_5 = Instance.new("UICorner")
        local ChannelLeft = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local UIPadding_2 = Instance.new("UIPadding")
        local Right = Instance.new("Frame")
        local UICorner_26 = Instance.new("UICorner")
        local ChannelLeft_2 = Instance.new("ScrollingFrame")
        local UIListLayout_5 = Instance.new("UIListLayout")
        local UIPadding_7 = Instance.new("UIPadding")

        TabDisable.Name = "Tab Disable"
        TabDisable.Parent = AnNigga
        TabDisable.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        TabDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabDisable.BorderSizePixel = 0
        TabDisable.Size = UDim2.new(0, 100, 1, -2)
        
        UICorner_4.CornerRadius = UDim.new(0, 6)
        UICorner_4.Parent = TabDisable
        
        NameTab_2.Name = "NameTab"
        NameTab_2.Parent = TabDisable
        NameTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NameTab_2.BackgroundTransparency = 1.000
        NameTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NameTab_2.BorderSizePixel = 0
        NameTab_2.Size = UDim2.new(1, 0, 1, 0)
        NameTab_2.Font = Enum.Font.GothamBold
        NameTab_2.Text = cf.Name
        NameTab_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        NameTab_2.TextSize = 13.000
        
        Click_2.Name = "Click"
        Click_2.Parent = TabDisable
        Click_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Click_2.BackgroundTransparency = 1.000
        Click_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Click_2.BorderSizePixel = 0
        Click_2.Size = UDim2.new(1, 0, 1, 0)
        Click_2.Font = Enum.Font.SourceSans
        Click_2.Text = ""
        Click_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        Click_2.TextSize = 14.000

        Channel.Name = "Channel"
        Channel.Parent = CCC
        Channel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Channel.BackgroundTransparency = 1.000
        Channel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Channel.BorderSizePixel = 0
        Channel.LayoutOrder = CountTab
        Channel.Size = UDim2.new(1,0,1,0)
        
        Left.Name = "Left"
        Left.Parent = Channel
        Left.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Left.Position = UDim2.new(0, 15, 0, 65)
        Left.BorderSizePixel = 0
        Left.Size = UDim2.new(0.468006402, 0, 1, -75)
        
        UICorner_5.Parent = Left
        
        ChannelLeft.Name = "ChannelLeft"
        ChannelLeft.Parent = Left
        ChannelLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ChannelLeft.BackgroundTransparency = 1.000
        ChannelLeft.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ChannelLeft.BorderSizePixel = 0
        ChannelLeft.Size = UDim2.new(1, 0, 1, 0)
        ChannelLeft.ScrollBarThickness = 0
        game:GetService("RunService").Stepped:Connect(function()
            ChannelLeft.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 20)
        end)
        
        UIListLayout_2.Parent = ChannelLeft
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 12)
        
        UIPadding_2.Parent = ChannelLeft
        UIPadding_2.PaddingBottom = UDim.new(0, 6)
        UIPadding_2.PaddingLeft = UDim.new(0, 6)
        UIPadding_2.PaddingRight = UDim.new(0, 6)
        UIPadding_2.PaddingTop = UDim.new(0, 8)

        Right.Name = "Right"
        Right.Parent = Channel
        Right.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Right.BorderSizePixel = 0
        Right.Position = UDim2.new(0.515, 0, 0, 65)
        Right.Size = UDim2.new(0.468006402, 0, 1, -75)
        
        UICorner_26.Parent = Right
        
        ChannelLeft_2.Name = "ChannelLeft"
        ChannelLeft_2.Parent = Right
        ChannelLeft_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ChannelLeft_2.BackgroundTransparency = 1.000
        ChannelLeft_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ChannelLeft_2.BorderSizePixel = 0
        ChannelLeft_2.Size = UDim2.new(1, 0, 1, 0)
        ChannelLeft_2.ScrollBarThickness = 0
        game:GetService("RunService").Stepped:Connect(function()
            ChannelLeft_2.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_5.AbsoluteContentSize.Y + 20)
        end)
        
        UIListLayout_5.Parent = ChannelLeft_2
        UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_5.Padding = UDim.new(0, 12)
        
        UIPadding_7.Parent = ChannelLeft_2
        UIPadding_7.PaddingBottom = UDim.new(0, 6)
        UIPadding_7.PaddingLeft = UDim.new(0, 6)
        UIPadding_7.PaddingRight = UDim.new(0, 6)
        UIPadding_7.PaddingTop = UDim.new(0, 8)

        Click_2.Activated:Connect(function()
            for r, v in next, AnNigga:GetChildren() do
                if v.Name == "Tab Disable" then
                    v.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
                end
            end
            TabDisable.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
            UIPageLayout:JumpToIndex(Channel.LayoutOrder)
        end)
        CountTab = CountTab + 1
        local Fe = {}
        function Fe:AddSection(andaubuoi, cf)
            cf = cf or {}
            cf.Name = cf.Name

            if andaubuoi == "Left" or typeof(andaubuoi) ~= "string" then
                Nigga = ChannelLeft
            elseif andaubuoi == "Right" then
                Nigga = ChannelLeft_2
            end

            local Section = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")
            local NameSection = Instance.new("TextLabel")
            local Listed = Instance.new("Frame")
            local UIListLayout_3 = Instance.new("UIListLayout")
            local UIPadding_3 = Instance.new("UIPadding")
            local UIStroke_7 = Instance.new("UIStroke")
            local Line = Instance.new("Frame")

            Line.Name = "Line"
            Line.Parent = Section
            Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Line.BackgroundTransparency = 0.900
            Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Line.BorderSizePixel = 0
            Line.Position = UDim2.new(0, 5, 0, 30)
            Line.Size = UDim2.new(1, -10, 0, 1)

            UIStroke_7.Parent = Section
            UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
            UIStroke_7.Transparency = 0.970

            Section.Name = "Section"
            Section.Parent = Nigga
            Section.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
            Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Section.BorderSizePixel = 0
            Section.Size = UDim2.new(1, 0, 0, 400)
            
            UICorner_6.Parent = Section
            
            NameSection.Name = "NameSection"
            NameSection.Parent = Section
            NameSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameSection.BackgroundTransparency = 1.000
            NameSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
            NameSection.BorderSizePixel = 0
            NameSection.Size = UDim2.new(1, 0, 0, 30)
            NameSection.Font = Enum.Font.GothamBold
            NameSection.Text = cf.Name
            NameSection.TextColor3 = Color3.fromRGB(193, 193, 193)
            NameSection.TextSize = 13.000
            
            Listed.Name = "Listed"
            Listed.Parent = Section
            Listed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Listed.BackgroundTransparency = 1.000
            Listed.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Listed.BorderSizePixel = 0
            Listed.Position = UDim2.new(0, 0, 0, 35)
            Listed.Size = UDim2.new(1, 0, 1, -35)
            
            UIListLayout_3.Parent = Listed
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 5)
            
            UIPadding_3.Parent = Listed
            UIPadding_3.PaddingBottom = UDim.new(0, 6)
            UIPadding_3.PaddingLeft = UDim.new(0, 6)
            UIPadding_3.PaddingRight = UDim.new(0, 6)
            UIPadding_3.PaddingTop = UDim.new(0, 8)
            game:GetService("RunService").Stepped:Connect(function()
                Section.Size = UDim2.new(1, 0, 0, UIListLayout_3.AbsoluteContentSize.Y + 100)
            end)
            local Sec = {}
            function Sec:AddButton(cffe)
                cffe = cffe or {}
                cffe.Name = cffe.Name or "Button"
                cffe.Callback = cffe.Callback or function ()
                    
                end

                local Button = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local UIStroke = Instance.new("UIStroke")
                local Title = Instance.new("TextLabel")
                local Clicked = Instance.new("TextButton")

                Button.Name = "Button"
                Button.Parent = Listed
                Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Button.BorderSizePixel = 0
                Button.Size = UDim2.new(1, 0, 0, 35)
                
                UICorner_7.CornerRadius = UDim.new(0, 4)
                UICorner_7.Parent = Button
                
                UIStroke.Parent = Button
                UIStroke.Color = Color3.fromRGB(255, 255, 255)
                UIStroke.Transparency = 0.970
                
                Title.Name = "Title"
                Title.Parent = Button
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title.BorderSizePixel = 0
                Title.Size = UDim2.new(1, 0, 1, 0)
                Title.Font = Enum.Font.ArialBold
                Title.Text = cffe.Name
                Title.TextColor3 = Color3.fromRGB(144, 144, 144)
                Title.TextSize = 13.000
                
                Clicked.Name = "Clicked"
                Clicked.Parent = Button
                Clicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Clicked.BackgroundTransparency = 1.000
                Clicked.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Clicked.BorderSizePixel = 0
                Clicked.Size = UDim2.new(1, 0, 1, 0)
                Clicked.Font = Enum.Font.SourceSans
                Clicked.Text = ""
                Clicked.TextColor3 = Color3.fromRGB(0, 0, 0)
                Clicked.TextSize = 14.000

                Clicked.Activated:Connect(function()
                    Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
                    TweenService:Create(Button, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
                    cffe.Callback()
                end)
            end
            function Sec:AddToggle(cffe)
                cffe = cffe or {}
                cffe.Name = cffe.Name or "Toggle"
                cffe.Default = cffe.Default or false
                cffe.Callback = cffe.Callback or function ()
                    
                end
                
                local Toggle = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local UIStroke_2 = Instance.new("UIStroke")
                local Title_2 = Instance.new("TextLabel")
                local Clicked_2 = Instance.new("TextButton")
                local Check = Instance.new("Frame")
                local UICorner_9 = Instance.new("UICorner")
                local UIStroke_3 = Instance.new("UIStroke")
                local Check_2 = Instance.new("Frame")
                local UICorner_10 = Instance.new("UICorner")
                local ImageLabel = Instance.new("ImageLabel")
                local ToggleFunc = {}

                Toggle.Name = "Toggle"
                Toggle.Parent = Listed
                Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Toggle.BorderSizePixel = 0
                Toggle.Size = UDim2.new(1, 0, 0, 35)
                
                UICorner_8.CornerRadius = UDim.new(0, 4)
                UICorner_8.Parent = Toggle
                
                UIStroke_2.Parent = Toggle
                UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
                UIStroke_2.Transparency = 0.980
                
                Title_2.Name = "Title"
                Title_2.Parent = Toggle
                Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_2.BackgroundTransparency = 1.000
                Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title_2.BorderSizePixel = 0
                Title_2.Position = UDim2.new(0, 10, 0, 0)
                Title_2.Size = UDim2.new(1, -40, 1, 0)
                Title_2.Font = Enum.Font.ArialBold
                Title_2.Text = cffe.Name
                Title_2.TextColor3 = Color3.fromRGB(144, 144, 144)
                Title_2.TextSize = 13.000
                Title_2.TextXAlignment = Enum.TextXAlignment.Left
                
                Clicked_2.Name = "Clicked"
                Clicked_2.Parent = Toggle
                Clicked_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Clicked_2.BackgroundTransparency = 1.000
                Clicked_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Clicked_2.BorderSizePixel = 0
                Clicked_2.Size = UDim2.new(1, 0, 1, 0)
                Clicked_2.Font = Enum.Font.SourceSans
                Clicked_2.Text = ""
                Clicked_2.TextColor3 = Color3.fromRGB(0, 0, 0)
                Clicked_2.TextSize = 14.000
                
                Check.Name = "Check"
                Check.Parent = Toggle
                Check.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
                Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Check.BorderSizePixel = 0
                Check.Position = UDim2.new(0.858953297, 0, 0.200000003, 0)
                Check.Size = UDim2.new(0, 21, 0, 21)
                
                UICorner_9.CornerRadius = UDim.new(1, 0)
                UICorner_9.Parent = Check
                
                UIStroke_3.Parent = Check
                UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
                UIStroke_3.Transparency = 0.870
                
                Check_2.Name = "Check"
                Check_2.Parent = Check
                Check_2.AnchorPoint = Vector2.new(0.5, 0.5)
                Check_2.BackgroundColor3 = Color3.fromRGB(58, 147, 255)
                Check_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Check_2.BorderSizePixel = 0
                Check_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                Check_2.Size = UDim2.new(0, 0, 0, 0) -- UDim2.new(0, 19, 0, 19)
                
                UICorner_10.CornerRadius = UDim.new(1, 0)
                UICorner_10.Parent = Check_2
                
                ImageLabel.Parent = Check_2
                ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ImageLabel.BackgroundTransparency = 1.000
                ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ImageLabel.BorderSizePixel = 0
                ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
                ImageLabel.Size = UDim2.new(0, 0, 0, 0) -- UDim2.new(1, -5, 1, -5)
                ImageLabel.Image = "http://www.roblox.com/asset/?id=73386528985648"
                ImageLabel.ImageColor3 = Color3.fromRGB(45, 45, 45)

                Toggled = false
                function ToggleFunc:Set(Value)
                    if Value then
                        TweenService:Create(Title_2, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                        TweenService:Create(Check_2, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 19, 0, 19)}):Play()
                        TweenService:Create(ImageLabel, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, -5, 1, -5)}):Play()
                    else
                        TweenService:Create(Title_2, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(144, 144, 144)}):Play()
                        TweenService:Create(Check_2, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
                        TweenService:Create(ImageLabel, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
                    end
                    Toggled = Value
                    cffe.Callback(Toggled)
                end
    
                if cffe.Default then
                    ToggleFunc:Set(true)
                end
    
                Clicked_2.Activated:Connect(function()
                    Toggled = not Toggled
                    ToggleFunc:Set(Toggled)
                end)
            end
            function Sec:AddDropdown(cffe)
                cffe = cffe or {}
                cffe.Name = cffe.Name or "Dropdown"
                cffe.Options = cffe.Options or {}
                cffe.Default = cffe.Default or ""
                cffe.Callback = cffe.Callback or function ()
                    
                end

                local Dropdown = Instance.new("Frame")
                local UICorner_14 = Instance.new("UICorner")
                local Title_4 = Instance.new("TextLabel")
                local SelectFrame = Instance.new("Frame")
                local UICorner_15 = Instance.new("UICorner")
                local UIStroke_5 = Instance.new("UIStroke")
                local SelectText = Instance.new("TextLabel")
                local DropList = Instance.new("Frame")
                local UICorner_16 = Instance.new("UICorner")
                local Listed_2 = Instance.new("ScrollingFrame")
                local UIListLayout_4 = Instance.new("UIListLayout")
                local UIPadding_4 = Instance.new("UIPadding")
                local Clicked_4 = Instance.new("TextButton")
                local DropFunc = {}

                Clicked_4.Name = "Clicked"
                Clicked_4.Parent = Dropdown
                Clicked_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Clicked_4.BackgroundTransparency = 1.000
                Clicked_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Clicked_4.BorderSizePixel = 0
                Clicked_4.Size = UDim2.new(1, 0, 1, 0)
                Clicked_4.Font = Enum.Font.SourceSans
                Clicked_4.Text = ""
                Clicked_4.TextColor3 = Color3.fromRGB(0, 0, 0)
                Clicked_4.TextSize = 14.000

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = Listed
                Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Dropdown.BorderSizePixel = 0
                Dropdown.Size = UDim2.new(1, 0, 0, 35)
                
                UICorner_14.CornerRadius = UDim.new(0, 4)
                UICorner_14.Parent = Dropdown
                
                Title_4.Name = "Title"
                Title_4.Parent = Dropdown
                Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_4.BackgroundTransparency = 1.000
                Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title_4.BorderSizePixel = 0
                Title_4.Position = UDim2.new(0, 10, 0, 0)
                Title_4.Size = UDim2.new(1, -92, 1, 0)
                Title_4.Font = Enum.Font.ArialBold
                Title_4.Text = cffe.Name
                Title_4.TextColor3 = Color3.fromRGB(144, 144, 144)
                Title_4.TextSize = 13.000
                Title_4.TextXAlignment = Enum.TextXAlignment.Left
                
                SelectFrame.Name = "SelectFrame"
                SelectFrame.Parent = Dropdown
                SelectFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SelectFrame.BackgroundTransparency = 1.000
                SelectFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SelectFrame.BorderSizePixel = 0
                SelectFrame.Position = UDim2.new(0.488148302, 0, 0.200000003, 0)
                SelectFrame.Size = UDim2.new(0, 100, 0, 22)
                
                UICorner_15.CornerRadius = UDim.new(0, 4)
                UICorner_15.Parent = SelectFrame
                
                UIStroke_5.Parent = SelectFrame
                UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
                UIStroke_5.Transparency = 0.870
                
                SelectText.Name = "SelectText"
                SelectText.Parent = SelectFrame
                SelectText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SelectText.BackgroundTransparency = 1.000
                SelectText.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SelectText.BorderSizePixel = 0
                SelectText.Position = UDim2.new(0, 10, 0, 0)
                SelectText.Size = UDim2.new(1, 0, 1, 0)
                SelectText.FontFace = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
                SelectText.Text = cffe.Default
                SelectText.TextColor3 = Color3.fromRGB(188, 188, 188)
                SelectText.TextSize = 14.000
                SelectText.TextWrapped = true
                SelectText.TextXAlignment = Enum.TextXAlignment.Left

                DropList.Name = "DropList"
                DropList.Parent = Listed
                DropList.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                DropList.BorderColor3 = Color3.fromRGB(0, 0, 0)
                DropList.BorderSizePixel = 0
                DropList.Size = UDim2.new(1, 0, 0, 121)
                DropList.Visible = false
                
                UICorner_16.CornerRadius = UDim.new(0, 4)
                UICorner_16.Parent = DropList
                
                Listed_2.Name = "Listed"
                Listed_2.Parent = DropList
                Listed_2.AnchorPoint = Vector2.new(0.5, 0.5)
                Listed_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Listed_2.BackgroundTransparency = 1.000
                Listed_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Listed_2.BorderSizePixel = 0
                Listed_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                Listed_2.Size = UDim2.new(1, -5, 1, -5)
                Listed_2.ScrollBarThickness = 0
                
                UIListLayout_4.Parent = Listed_2
                UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_4.Padding = UDim.new(0, 7)
                
                UIPadding_4.Parent = Listed_2
                UIPadding_4.PaddingBottom = UDim.new(0, 4)
                UIPadding_4.PaddingLeft = UDim.new(0, 4)
                UIPadding_4.PaddingRight = UDim.new(0, 4)
                UIPadding_4.PaddingTop = UDim.new(0, 4)

                game:GetService("RunService").Stepped:Connect(function ()
                    Listed_2.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y + 20)
                end)
    
                Clicked_4.Activated:Connect(function()
                    if DropList.Visible == false then
                        DropList.Visible = true
                    else
                        DropList.Visible = false
                    end
                end)
    
                function DropFunc:Add(Value)
                    for _, v in next, Value do
                        local Options = Instance.new("Frame")
                        local UICorner_17 = Instance.new("UICorner")
                        local Title_5 = Instance.new("TextLabel")
                        local Circle = Instance.new("Frame")
                        local UICorner_18 = Instance.new("UICorner")
                        local TextButton = Instance.new("TextButton")
    
                        Options.Name = "Options"
                        Options.Parent = Listed_2
                        Options.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        Options.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        Options.BorderSizePixel = 0
                        Options.Size = UDim2.new(1, 0, 0, 25)
                        
                        UICorner_17.CornerRadius = UDim.new(0, 4)
                        UICorner_17.Parent = Options
                        
                        Title_5.Name = "Title"
                        Title_5.Parent = Options
                        Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Title_5.BackgroundTransparency = 1.000
                        Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        Title_5.BorderSizePixel = 0
                        Title_5.Position = UDim2.new(0, 15, 0, 0)
                        Title_5.Size = UDim2.new(1, 0, 1, 0)
                        Title_5.Font = Enum.Font.GothamBold
                        Title_5.Text = tostring(v)
                        Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Title_5.TextSize = 13.000
                        Title_5.TextXAlignment = Enum.TextXAlignment.Left
                        
                        Circle.Name = "Circle"
                        Circle.Parent = Options
                        Circle.BackgroundColor3 = Color3.fromRGB(252, 255, 48)
                        Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        Circle.BorderSizePixel = 0
                        Circle.Position = UDim2.new(0, -7, 0, 3)
                        Circle.Size = UDim2.new(0, 4, 0, 18)
                        
                        UICorner_18.CornerRadius = UDim.new(0, 4)
                        UICorner_18.Parent = Circle
                        
                        TextButton.Parent = Options
                        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextButton.BackgroundTransparency = 1.000
                        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        TextButton.BorderSizePixel = 0
                        TextButton.Size = UDim2.new(1, 0, 1, 0)
                        TextButton.Font = Enum.Font.SourceSans
                        TextButton.Text = ""
                        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                        TextButton.TextSize = 14.000
    
                        TextButton.Activated:Connect(function()
                            for r, a in next, Listed_2:GetChildren() do
                                if a.Name == "Options" then
                                    a.BackgroundTransparency = 1.000
                                end
                            end
                            for r, a in next, Listed_2:GetChildren() do
                                if a.Name == "Options" then
                                    a.Title.TextColor3 = Color3.fromRGB(177, 177, 177)
                                end
                            end
                            for r, a in next, Listed_2:GetChildren() do
                                if a.Name == "Options" then
                                    TweenService:Create(a.Circle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 3)}):Play()
                                end
                            end
                            Options.BackgroundTransparency = 0
                            TweenService:Create(Circle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -0, 0, 3)}):Play()
                            Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                            cffe.Callback(Title_5.Text)
                            SelectText.Text = Title_5.Text
                        end)
                    end
                end
    
                function DropFunc:Set(acc)
                    for i, v in pairs(Listed_2:GetChildren()) do
                        if v.Name == "Options" then
                            if v.Title.Text == acc then
                                for r, a in next, Listed_2:GetChildren() do
                                    if a.Name == "Options" then
                                        a.BackgroundTransparency = 1.000
                                    end
                                end
                                for r, a in next, Listed_2:GetChildren() do
                                    if a.Name == "Options" then
                                        a.Title.TextColor3 = Color3.fromRGB(177, 177, 177)
                                    end
                                end
                                for r, a in next, Listed_2:GetChildren() do
                                    if a.Name == "Options" then
                                        TweenService:Create(a.Circle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 1)}):Play()
                                    end
                                end
                                TweenService:Create(v.Circle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -0, 0, 3)}):Play()
                                v.BackgroundTransparency = 0
                                v.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                                SelectText.Text = v.Title.Text
                                cffe.Callback(v.Title.Text)
                            end
                        end
                    end
                end
    
                function DropFunc:Refresh(Options)
                    for i, v in pairs(Listed_2:GetChildren()) do
                        if v.Name == "Options" then
                            v:Destroy()
                        end
                    end
                    DropFunc:Add(Options)
                    SelectText.Text = ""
                end
                DropFunc:Refresh(cffe.Options)
                DropFunc:Set(cffe.Default)
                cffe.Callback(cffe.Default)
                return DropFunc
            end
            function Sec:AddSlider(cffe)
                cffe = cffe or {}
                cffe.Name = cffe.Name or "Slider"
                cffe.Max = cffe.Max or 100
                cffe.Min = cffe.Min or 10
                cffe.Default = cffe.Default or 50
                cffe.Callback = cffe.Callback or function() end

                local Slider = Instance.new("Frame")
                local Title_7 = Instance.new("TextLabel")
                local SlideFrame = Instance.new("Frame")
                local UICorner_21 = Instance.new("UICorner")
                local SliderDraggable = Instance.new("Frame")
                local UICorner_22 = Instance.new("UICorner")
                local Circle_3 = Instance.new("Frame")
                local UICorner_23 = Instance.new("UICorner")
                local ValueSlider = Instance.new("TextLabel")

                Slider.Name = "Slider"
                Slider.Parent = Listed
                Slider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Slider.BackgroundTransparency = 1.000
                Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Slider.BorderSizePixel = 0
                Slider.Size = UDim2.new(1, 0, 0, 52)
                
                Title_7.Name = "Title"
                Title_7.Parent = Slider
                Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_7.BackgroundTransparency = 1.000
                Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title_7.BorderSizePixel = 0
                Title_7.Position = UDim2.new(0, 10, 0, -5)
                Title_7.Size = UDim2.new(0, 125, 0, 30)
                Title_7.Font = Enum.Font.GothamBold
                Title_7.Text = cffe.Name
                Title_7.TextColor3 = Color3.fromRGB(144, 144, 144)
                Title_7.TextSize = 13.000
                Title_7.TextWrapped = true
                Title_7.TextXAlignment = Enum.TextXAlignment.Left
                
                SlideFrame.Name = "SlideFrame"
                SlideFrame.Parent = Slider
                SlideFrame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
                SlideFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SlideFrame.BorderSizePixel = 0
                SlideFrame.Position = UDim2.new(0.0374391638, 0, 0.480769217, 0)
                SlideFrame.Size = UDim2.new(1, -40, 0, 8)
                
                UICorner_21.CornerRadius = UDim.new(0, 3)
                UICorner_21.Parent = SlideFrame
                
                SliderDraggable.Name = "SliderDraggable"
                SliderDraggable.Parent = SlideFrame
                SliderDraggable.BackgroundColor3 = Color3.fromRGB(242, 232, 33)
                SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
                SliderDraggable.BorderSizePixel = 0
                SliderDraggable.Size = UDim2.new(0, 100, 1, 0)
                
                UICorner_22.CornerRadius = UDim.new(0, 3)
                UICorner_22.Parent = SliderDraggable
                
                Circle_3.Name = "Circle"
                Circle_3.Parent = SliderDraggable
                Circle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Circle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Circle_3.BorderSizePixel = 0
                Circle_3.Position = UDim2.new(1, -8, 0, -4)
                Circle_3.Size = UDim2.new(0, 8, 0, 15)
                
                UICorner_23.CornerRadius = UDim.new(0, 3)
                UICorner_23.Parent = Circle_3
                
                ValueSlider.Name = "ValueSlider"
                ValueSlider.Parent = Slider
                ValueSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ValueSlider.BackgroundTransparency = 1.000
                ValueSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ValueSlider.BorderSizePixel = 0
                ValueSlider.Position = UDim2.new(0.808685958, 0, 0, 0)
                ValueSlider.Size = UDim2.new(0, 63, 0, 21)
                ValueSlider.Font = Enum.Font.GothamBold
                ValueSlider.Text = cffe.Default
                ValueSlider.TextColor3 = Color3.fromRGB(144, 144, 144)
                ValueSlider.TextSize = 13.000

                local Slider1 = {Value = cffe.Default}

                local function Round(Number, Factor)
                    local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
                    if Result < 0 then Result = Result + Factor end
                    return Result
                end
                function Slider1:Set(Value)
                    Value = math.clamp(Round(Value, 1), cffe.Min, cffe.Max)
                    Slider1.Value = Value
                    ValueSlider.Text = tostring(Value)
                    cffe.Callback(Slider1.Value)
                    TweenService:Create(
                        SliderDraggable,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.fromScale((Value - cffe.Min) / (cffe.Max - cffe.Min), 1)}
                    ):Play()
                end
                SlideFrame.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                    end
                end)
                uis.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end)            
                uis.InputChanged:Connect(function(input)
                    if dragging then
                        local SizeScale = math.clamp((input.Position.X - SlideFrame.AbsolutePosition.X) / SlideFrame.AbsoluteSize.X, 0, 1)
                        Slider1:Set(cffe.Min + ((cffe.Max - cffe.Min) * SizeScale)) 
                    end
                end)        
                Slider1:Set(cffe.Default)
                return Slider1
            end
            function Sec:AddParagraph(cffe)
                cffe = cffe or {}
                cffe.Name = cffe.Name or "Paragraph"
                cffe.Description = cffe.Description or ""

                local Paragraph = Instance.new("Frame")
                local Title_8 = Instance.new("TextLabel")
                local Desc = Instance.new("TextLabel")
                local UIPadding_5 = Instance.new("UIPadding")
                local ParaFunc = {}
                Paragraph.Name = "Paragraph"
                Paragraph.Parent = Listed
                Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Paragraph.BackgroundTransparency = 1.000
                Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Paragraph.BorderSizePixel = 0
                Paragraph.Size = UDim2.new(1, 0, 0, 55)

                Title_8.Name = "Title"
                Title_8.Parent = Paragraph
                Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_8.BackgroundTransparency = 1.000
                Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title_8.BorderSizePixel = 0
                Title_8.Position = UDim2.new(0, 0, 0, 7)
                Title_8.Size = UDim2.new(1, 0, 0, 20)
                Title_8.Font = Enum.Font.ArialBold
                Title_8.Text = cffe.Name
                Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title_8.TextSize = 13.000

                Desc.Name = "Desc"
                Desc.Parent = Paragraph
                Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Desc.BackgroundTransparency = 1.000
                Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Desc.BorderSizePixel = 0
                Desc.Position = UDim2.new(0, 0, 0, 27)
                Desc.Size = UDim2.new(1, 0, 1, -7)
                Desc.Font = Enum.Font.ArialBold
                Desc.Text = cffe.Description
                Desc.TextColor3 = Color3.fromRGB(144, 144, 144)
                Desc.TextSize = 12.000
                Desc.TextWrapped = true
                Desc.TextYAlignment = Enum.TextYAlignment.Top

                UIPadding_5.Parent = Desc
                UIPadding_5.PaddingTop = UDim.new(0, 3)

                function ParaFunc:Set(cfSet)
                    cfSet = cfSet or {}
                    cfSet.Name = cfSet.Name
                    cfSet.Description = cfSet.Description
                    
                    if cfSet.Name ~= "" and cfSet.Name ~= nil then
                        Title_8.Text = cfSet.Name
                    end
                    if cfSet.Description ~= "" and cfSet.Description ~= nil then
                        Desc.Text = cfSet.Name
                    end
                end
                return ParaFunc
            end
            function Sec:AddInput(cffe)
                cffe = cffe or {}
                cffe.Name = cffe.Name or "Input"
                cffe.PlaceHolderText = cffe.PlaceHolderText or "Input Here"
                cffe.Default = cffe.Default or ""
                cffe.Callback = cffe.Callback or function() end

                local Input = Instance.new("Frame")
                local UICorner_24 = Instance.new("UICorner")
                local Title_9 = Instance.new("TextLabel")
                local InputFrame = Instance.new("Frame")
                local UICorner_25 = Instance.new("UICorner")
                local UIStroke_6 = Instance.new("UIStroke")
                local FreeFire = Instance.new("TextBox")
                local UIPadding_6 = Instance.new("UIPadding")
                local UIStroke_7 = Instance.new("UIStroke")

                Input.Name = "Input"
                Input.Parent = Listed
                Input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Input.BorderSizePixel = 0
                Input.Size = UDim2.new(1, 0, 0, 55)
                
                UICorner_24.CornerRadius = UDim.new(0, 4)
                UICorner_24.Parent = Input
                
                Title_9.Name = "Title"
                Title_9.Parent = Input
                Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_9.BackgroundTransparency = 1.000
                Title_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title_9.BorderSizePixel = 0
                Title_9.Position = UDim2.new(0, 10, 0, 2)
                Title_9.Size = UDim2.new(1, 0, 0, 20)
                Title_9.Font = Enum.Font.ArialBold
                Title_9.Text = cffe.Name
                Title_9.TextColor3 = Color3.fromRGB(144, 144, 144)
                Title_9.TextSize = 13.000
                Title_9.TextXAlignment = Enum.TextXAlignment.Left
                
                InputFrame.Name = "InputFrame"
                InputFrame.Parent = Input
                InputFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
                InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                InputFrame.BorderSizePixel = 0
                InputFrame.Position = UDim2.new(0.0370000005, 0, 0.398000002, 4)
                InputFrame.Size = UDim2.new(0, 240, 0, 24)
                
                UICorner_25.CornerRadius = UDim.new(0, 3)
                UICorner_25.Parent = InputFrame
                
                UIStroke_6.Parent = InputFrame
                UIStroke_6.Color = Color3.fromRGB(255, 255, 255)
                UIStroke_6.Transparency = 0.970
                
                FreeFire.Name = "FreeFire"
                FreeFire.Parent = InputFrame
                FreeFire.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                FreeFire.BackgroundTransparency = 1.000
                FreeFire.BorderColor3 = Color3.fromRGB(0, 0, 0)
                FreeFire.BorderSizePixel = 0
                FreeFire.Size = UDim2.new(1, 0, 1, 0)
                FreeFire.Font = Enum.Font.ArialBold
                FreeFire.PlaceholderColor3 = Color3.fromRGB(144, 144, 144)
                FreeFire.PlaceholderText = cffe.PlaceHolderText
                FreeFire.Text = cffe.Default
                FreeFire.TextColor3 = Color3.fromRGB(255, 255, 255)
                FreeFire.TextSize = 13.000
                FreeFire.TextXAlignment = Enum.TextXAlignment.Left
                
                UIPadding_6.Parent = FreeFire
                UIPadding_6.PaddingLeft = UDim.new(0, 12)
                
                UIStroke_7.Parent = Section
                UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
                UIStroke_7.Transparency = 0.970

                FreeFire.FocusLost:Connect(function()
                    cffe.Callback(FreeFire.Text)
                end)

            end
            return Sec
        end
        return Fe
    end
    return TabFunc
end
return Library