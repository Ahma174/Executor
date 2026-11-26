-- original ui made by Jake Brock, the.king.78 and shakhnozz

-- ui slightly modded by Ahma174 

local clone_match = clonefunction(string.match)
local clone_type = clonefunction(type)

local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

local discord = game:HttpGet("https://discord.gg/NKgEmhMKYs")
local authvf = AeVPjNWXqQ or function() return true end

local main_selector = nil;
local other_items = {}

local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer

local result, code = pcall(function()
    return LocalizationService:GetCountryRegionForPlayerAsync(player)
end)

function auth_user(key)

    repeat wait() until game:GetService('Players').LocalPlayer
    
    local ret = authvf(key, game:GetService('Players').LocalPlayer.Name .. tostring("&lang=") .. tostring(code) )
    
    if ret then
        writefile(savepath(".fluxus-auth-store"), key)
    end

    return ret;
end

local read_clipboard = readclipboard_hideenv
getgenv().readclipboard_hideenv = nil

local function loadcode(type, src)
    local code = src
    if not code then return end
    local f, e = loadstring(code)
    if not f then return warn("Compile Error: " .. tostring(e)) end
    local success, result = pcall(f)
    if not success then
        warn("Runtime Error: " .. tostring(result))
    end
end

local FastAnims = false;
local NoAnims = false;
local SaveSettings = true;
local SaveTabs = true;
local CenterMinimize = false;
local FPSUnlocker = false;

local ConsoleOutput = true;
local ConsoleWarning = true;
local ConsoleError = true;

local function tween_property(obj, data, length, style)
    local Time = (type(length) == "number") and length or 0.3;

    if NoAnims then
        Time = 0;
    elseif FastAnims then
        if(Time > 0.4) then
            Time = Time - 0.4
        else
            Time = Time - 0.2;
        end
    end

    TweenService:Create(obj, TweenInfo.new(Time , if style then style else Enum.EasingStyle.Back, Enum.EasingDirection.Out,0,false,0), data):Play() 
    
    return Time + 0.2;
end

pcall(function()
    if isfile(savepath(".flux_settings")) then
        local data = HttpService:JSONDecode(readfile(savepath(".flux_settings")))

        FastAnims = data["FastAnims"];
        NoAnims = data["NoAnims"];
        SaveSettings = data["SaveSettings"];
        SaveTabs = data["SaveTabs"];
        CenterMinimize = data["CenterMinimize"];
        FPSUnlocker = data["FPSUnlocker"];

        ConsoleOutput = data["ConsoleOutput"];
        ConsoleWarning = data["ConsoleWarning"];
        ConsoleError = data["ConsoleError"];
    end
end)

local function save_settings()
    if SaveSettings == false then
        return;
    end

    writefile(savepath(".flux_settings"), HttpService:JSONEncode({
        ["SaveSettings"] = SaveSettings,
        ["SaveTabs"] = SaveTabs,
        ["FastAnims"] = FastAnims,
        ["NoAnims"] = NoAnims,
        ["CenterMinimize"] = CenterMinimize,
        ["FPSUnlocker"] = FPSUnlocker,
        
        ["ConsoleOutput"] = ConsoleOutput,
        ["ConsoleWarning"] = ConsoleWarning,
        ["ConsoleError"] = ConsoleError,
    }))
end

local function save_tabs(tabs)
    if SaveTabs == false then
        return;
    end
    
    local tabs_filtered = {}

    for i,v in pairs(tabs) do
        if v ~= false then
            table.insert(tabs_filtered, v);
        end
    end

    writefile(savepath(".flux_tabs"), HttpService:JSONEncode(tabs_filtered));
end

local ScreenGui = Instance.new("ScreenGui")
local LeftBarFrame = Instance.new("Frame")
local Logo = Instance.new("ImageButton")
local ShowUI = Instance.new("Frame")
local ShowUIUICorner = Instance.new("UICorner")
local ShowUILogo = Instance.new("ImageButton")

repeat wait() until game:GetService('Players').LocalPlayer;
--local uinamel = crypt.hash(game:GetService('Players').LocalPlayer.Name .. tostring(os.time()))
    
ScreenGui.Name = gethwid();
ScreenGui.Parent = gethui();
ScreenGui.DisplayOrder=1999999999
ScreenGui.ResetOnSpawn = false;
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ScreenInsets=Enum.ScreenInsets.None

LeftBarFrame.Name = "LeftBarFrame"
LeftBarFrame.Parent = ScreenGui
LeftBarFrame.BackgroundColor3 = Color3.fromRGB(45, 47, 51)
LeftBarFrame.BorderColor3 = Color3.fromRGB(45, 47, 51)
LeftBarFrame.BorderSizePixel = 0
LeftBarFrame.Size = UDim2.new(0.1, 100, 1, 0)
LeftBarFrame.Position = UDim2.new(-0.1, -100, 0, 0);

tween_property(LeftBarFrame, {
    Position = UDim2.new(0, 0, 0, 0);
}, 0.5, Enum.EasingStyle.Linear);

function hide_ui()
    if LeftBarFrame.Visible == false then
        return;
    end

    for i,v in pairs(other_items) do
        local Frame = v.Frame;
        local Item = v.TabItem;
        local Selector = v.Selector;
    
        Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 72);
        Item.Position = UDim2.new(0.1, 100, -1, 0)   
        Selector.Visible = false;
        Item.Visible = false;
    end
    
    if main_selector then
        main_selector.Selector.Visible = true;
    end
    
    local time = tween_property(LeftBarFrame, 
    {
        Position = UDim2.new(-0.1, -100, 0, 0);
    }, 0.5, Enum.EasingStyle.Linear);
    
    wait(time);
    
    LeftBarFrame.Visible = false;
    ShowUI.Visible = true;
    
    if CenterMinimize then
        ShowUI.Position = UDim2.new(0.5, -15, 0, -100);
        
        local time = tween_property(ShowUI, 
        {
            Position = UDim2.new(0.5, -15, 0, 60);
        }, 0.5, Enum.EasingStyle.Linear);
    else
        ShowUI.Position = UDim2.new(-0.1, -100, 0, 0);
    
        local time = tween_property(ShowUI, 
        {
            Position = UDim2.new(0, 15, 0, 60);
        }, 0.5, Enum.EasingStyle.Linear);
    end
end

function show_ui()
    if CenterMinimize then 
        local time = tween_property(ShowUI, 
        {
            Position = UDim2.new(0.5, -15, 0, -100);
        }, 0.5, Enum.EasingStyle.Linear);
        
        wait(time - 0.1);
    end
    
    ShowUI.Visible = false;
    LeftBarFrame.Visible = true;

    local time = tween_property(LeftBarFrame, 
    {
        Position = UDim2.new(0, 0, 0, 0);
    }, 0.5, Enum.EasingStyle.Linear);
end

local function notify(title, text)
    local Notification = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Text = Instance.new("TextLabel")
    local Button = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local TextButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local UICorner_2 = Instance.new("UICorner")

    Notification.Name = "Notification"
    Notification.Parent = ScreenGui
    Notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Notification.BorderColor3 = Color3.fromRGB(25, 25, 25)
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(0.5, -210, 0.5, -120)
    Notification.Size = UDim2.new(0, 420, 0, 240)

    Title.Name = "Title"
    Title.Parent = Notification
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 5, 0, 0)
    Title.Size = UDim2.new(1, -5, 0, 25)
    Title.Font = Enum.Font.GothamMedium
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Title.BackgroundTransparency = 1.000

    Text.Name = "Text"
    Text.Parent = Notification
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0, 5, 0, 25)
    Text.Size = UDim2.new(1, -5, 0, 175)
    Text.Font = Enum.Font.Gotham
    Text.Text = text
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 12.000
    Text.TextWrapped = true
    Text.TextXAlignment = Enum.TextXAlignment.Left
    Text.TextYAlignment = Enum.TextYAlignment.Top

    if Text.TextFits == false then
        Text.TextScaled = true;
    end

    Button.Name = "Button"
    Button.Parent = Notification
    Button.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
    Button.BackgroundTransparency = 1.000
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0, 0, 1, -35)
    Button.Size = UDim2.new(1, 0, 0, 25)

    UIListLayout.Parent = Button
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 2)

    TextButton.Parent = Button
    TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TextButton.BorderSizePixel = 0
    TextButton.Size = UDim2.new(0, 150, 1, 0)
    TextButton.Font = Enum.Font.GothamBold
    TextButton.Text = "OK"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 12.000
    TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    TextButton.MouseButton1Down:connect(function()
        Notification:Destroy()
        setclipboard(discord)
    end)

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = TextButton

    UICorner_2.Parent = Notification
end

Logo.Name = "Logo"
Logo.Parent = LeftBarFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.25, 0, 0, 10)
Logo.Size = UDim2.new(0.5, 0, 0, 50)
Logo.Image = "rbxassetid://11877279869"
Logo.ScaleType = Enum.ScaleType.Fit
Logo.AutoButtonColor = false;
Logo.MouseButton1Down:Connect(hide_ui)

spawn(function()
    repeat wait() until game:GetService("CoreGui").TopBarApp ~= nil
    
    --game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background.MouseButton1Down:connect(hide_ui)
end)

ShowUI.Parent = ScreenGui
ShowUI.BackgroundColor3 = Color3.fromRGB(45, 47, 51)
ShowUI.BorderColor3 = Color3.fromRGB(45, 47, 51)
ShowUI.BorderSizePixel = 0
ShowUI.Position = UDim2.new(-0.1, -100, 0, 0);
ShowUI.Size = UDim2.new(0, 30, 0, 30)
ShowUI.Visible = false;

ShowUIUICorner.CornerRadius = UDim.new(1, 0)
ShowUIUICorner.Parent = ShowUI

ShowUILogo.Name = "Logo"
ShowUILogo.Parent = ShowUI
ShowUILogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShowUILogo.BackgroundTransparency = 1.000
ShowUILogo.BorderSizePixel = 0
ShowUILogo.Position = UDim2.new(0, 0, 0.166666672, 1)
ShowUILogo.Size = UDim2.new(1, 0, 0.6, 0)
ShowUILogo.Image = "rbxassetid://11877279869"
ShowUILogo.ScaleType = Enum.ScaleType.Fit
ShowUILogo.AutoButtonColor = false;
ShowUILogo.MouseButton1Down:Connect(show_ui)

local returns = 
{
    LeftBarFrame = LeftBarFrame;
    Logo = Logo;
}

function returns:create_selector()
    local function make_selector(Visible)
        local Selector = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
            
        Selector.Name = "Selector"
        Selector.Parent = LeftBarFrame
        Selector.Active = true
        Selector.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
        Selector.BackgroundTransparency = 1
        Selector.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Selector.BorderSizePixel = 0
        Selector.Position = UDim2.new(0, 2, 0, 80)
        Selector.Size = UDim2.new(0.98, 0, 1, -80)
        Selector.CanvasSize = UDim2.new(0, 0, 0, 0)
        Selector.ScrollBarThickness = 2
        Selector.Visible = Visible;
        Selector.ElasticBehavior = Enum.ElasticBehavior.Never
        Selector.ScrollingDirection = Enum.ScrollingDirection.Y

        UIListLayout.Parent = Selector
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)
    
        Selector.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
    
        UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            Selector.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
        end)

        return Selector
    end

    local Selector = make_selector(true);

    local returns = {
        Selector = Selector;
        UIListLayout = UIListLayout;
    }

    local function create_button(Selector, Name, Callback, Options)
        if type(Options) ~= "table" then
            Options = {}
        end

        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextButton = Instance.new("TextButton")
                
        Frame.Name = Name
        Frame.Parent = Selector
        Frame.BackgroundColor3 = if Options.Purple then Color3.fromRGB(103, 61, 234) else Color3.fromRGB(70, 70, 72)
        Frame.BorderSizePixel = 0
        Frame.Size = UDim2.new(0.9, 0, 0, 25)
        
        UICorner.Parent = Frame
        
        TextButton.Name = "TextButton";
        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        TextButton.BackgroundTransparency = 1
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = Name
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 12
        TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

        TextButton.MouseButton1Down:connect(function()
            if Callback then
                Callback(Frame)
            end
        end)

        return Frame, TextButton
    end

    function returns:create_section(Name, Callback, TabButton)
        local rets = {}
        
        if TabButton then
            local TabItem = Instance.new("Frame")
            local Container = Instance.new("Frame")

            TabItem.Name = "TabItem"
            TabItem.Parent = ScreenGui
            TabItem.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            TabItem.BackgroundTransparency = 0.3
            TabItem.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TabItem.BorderSizePixel = 0
            TabItem.Position = UDim2.new(0.1, 100, -1, 0)
            TabItem.Size = UDim2.new(0.9, -100, 1, 0)
            TabItem.Visible = false;

            Container.Name = "Container"
            Container.Parent = TabItem
            Container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Container.BackgroundTransparency = 1
            Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Container.BorderSizePixel = 0
            Container.Position = UDim2.new(0, 10, 0, 10)
            Container.Size = UDim2.new(1, -10, 1, -10)

            local _Selector = make_selector(false);

            rets.TabItem = TabItem;
            rets.Container = Container;
            rets.Selector = _Selector;
            
            function rets:create_button(Name, Callback, Options)
                return create_button(_Selector, Name, Callback, Options);
            end

            function rets:create_toggle(Name, Callback, Options)
                local Enabled = (type(Options) == "table" and Options.Enabled) and Options.Enabled or false;

                local Toggle = Instance.new("Frame")
                local Text = Instance.new("TextLabel")
                local TextButton = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local Selector = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")

                Toggle.Name = "Toggle"
                Toggle.Parent = _Selector
                Toggle.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
                Toggle.BackgroundTransparency = 1.000
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0.05, 0, 0.111, 0)
                Toggle.Size = UDim2.new(0.9, 0, -0.003, 25)

                Text.Name = "Text"
                Text.Parent = Toggle
                Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text.BackgroundTransparency = 1.000
                Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Text.BorderSizePixel = 0
                Text.Position = UDim2.new(0, 25, 0, 0)
                Text.Size = UDim2.new(1, -25, 1, 0)
                Text.Font = Enum.Font.Gotham
                Text.Text = Name
                Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text.TextSize = 14.000
                Text.TextXAlignment = Enum.TextXAlignment.Left

                TextButton.Parent = Toggle
                TextButton.BackgroundColor3 = Color3.fromRGB(70, 70, 72)
                TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextButton.BorderSizePixel = 0
                TextButton.Size = UDim2.new(0, 22, 0, 22)
                TextButton.AutoButtonColor = false
                TextButton.Font = Enum.Font.SourceSans
                TextButton.Text = ""
                TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton.TextSize = 14.000

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = TextButton

                Selector.Name = "Selector"
                Selector.Parent = Toggle
                Selector.BackgroundColor3 = if Enabled then Color3.fromRGB(103, 61, 234) else Color3.fromRGB(70, 70, 72)
                Selector.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Selector.BorderSizePixel = 0
                Selector.Position = UDim2.new(0, 4, 0, 4)
                Selector.Size = UDim2.new(0, 14, 0, 14)
                Selector.AutoButtonColor = false
                Selector.Font = Enum.Font.SourceSans
                Selector.Text = ""
                Selector.TextColor3 = Color3.fromRGB(0, 0, 0)
                Selector.TextSize = 14.000

                UICorner_2.CornerRadius = UDim.new(1, 0)
                UICorner_2.Parent = Selector

                if Enabled and Options.Call then
                    Callback(true)
                end
                    
                function change_toggle_state()
                    Enabled = not Enabled;
                    if Enabled then
                        tween_property(Selector, {
                            BackgroundColor3 = Color3.fromRGB(103, 61, 234)
                        });
                    else
                        tween_property(Selector, {
                            BackgroundColor3 = Color3.fromRGB(70, 70, 72)
                        });
                    end

                    if Callback then
                        Callback(Enabled)
                    end
                end

                Selector.MouseButton1Down:connect(change_toggle_state)
                TextButton.MouseButton1Down:connect(change_toggle_state)

                return Toggle;
            end

            function rets:create_label(Name)
                local Label = Instance.new("TextLabel")

                Label.Name = "Label"
                Label.Parent = _Selector
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1
                Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Label.BorderSizePixel = 0
                Label.Size = UDim2.new(0.9, 0, 0, 25)
                Label.Font = Enum.Font.GothamBold
                Label.Text = Name
                Label.TextColor3 = Color3.fromRGB(255, 255, 255)
                Label.TextSize = 14
                Label.TextXAlignment = Enum.TextXAlignment.Left

                return Label;
            end

            function rets:create_padding(Size)
                local Padding = Instance.new("Frame")

                Padding.Name = "Padding"
                Padding.Parent = _Selector
                Padding.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
                Padding.BackgroundTransparency = 1
                Padding.BorderSizePixel = 0
                Padding.Size = UDim2.new(0.9, 0, 0, if Size then Size else 12.5)

                return Padding;
            end

            function rets:create_backbutton()
                local Back = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextButton = Instance.new("TextButton")

                Back.Name = "Back"
                Back.Parent = _Selector
                Back.BackgroundColor3 = Color3.fromRGB(25,25,25)
                Back.BorderSizePixel = 0
                Back.Size = UDim2.new(0.9, 0, 0, 25)

                UICorner.Parent = Back

                TextButton.Parent = Back
                TextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
                TextButton.BackgroundTransparency = 1
                TextButton.BorderSizePixel = 0
                TextButton.Size = UDim2.new(1, 0, 1, 0)
                TextButton.Font = Enum.Font.GothamBold
                TextButton.Text = "< Back"
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.TextSize = 14
                TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

                return TextButton;
            end
        end

        local Frame, TextButton = create_button(Selector, Name, Callback);

        rets.Frame = Frame;
        rets.TextButton = TextButton;

        return rets
    end

    return returns;
end

local keyselector = returns:create_selector();

local function load_ui(animate)
    if runautoexec_hideenv then
        runautoexec_hideenv()
        getgenv().runautoexec_hideenv = nil
    end

    keyselector.Selector.Visible = false;
    
    if animate then
        local time = tween_property(LeftBarFrame, {
            Position = UDim2.new(-0.1, -100, 0, 0);
        }, 0.5, Enum.EasingStyle.Linear);
        
        wait(time)
    
        tween_property(LeftBarFrame, {
            Position = UDim2.new(0, 0, 0, 0);
        }, 0.5, Enum.EasingStyle.Linear);
    end

    main_selector = returns:create_selector()
    
    function switch_tab(main_executor_frame, skip)
        if main_executor_frame.BackgroundColor3 == Color3.fromRGB(70, 70, 72) then
            main_selector.Selector.Visible = false;
    
            for i,v in pairs(other_items) do
    
                local Frame = v.Frame;
                local Item = v.TabItem;
                local Selector = v.Selector;
    
                if Frame ~= main_executor_frame then
                    Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 72);
                    Selector.Visible = false;
                    Item.Visible = false;
                    Item.Position = UDim2.new(0.1, 100, -1, 0)
                else
                    Frame.BackgroundColor3 = Color3.fromRGB(103, 61, 234);
                    Selector.Visible = true;
    
                    local Time = (type(length) == "number") and length or 0.3;
    
                    Item.Visible = true;
    
                    tween_property(Item, {
                        Position = UDim2.new(0.1, 100, 0, 0)
                    }, 0.8);
                end
            end
        end
    end
    
    function back_tab()
        for i,v in pairs(other_items) do
            local Frame = v.Frame;
            local Item = v.TabItem;
            local Selector = v.Selector;
    
            Frame.BackgroundColor3 = Color3.fromRGB(70, 70, 72);
            Item.Position = UDim2.new(0.1, 100, -1, 0)   
            Selector.Visible = false;
            Item.Visible = false;
        end
    
        main_selector.Selector.Visible = true;
    end
    
    local main_executor_container = main_selector:create_section("Executor", function(Frame)
        switch_tab(Frame)
    end, true)
    
    local main_cloud_container = main_selector:create_section("Cloud", function(Frame)
        switch_tab(Frame)
    end, true)
    
    local main_console_container = main_selector:create_section("Console", function(Frame)
        switch_tab(Frame)
    end, true)
    
    local main_settings_container = main_selector:create_section("Settings", function(Frame)
        switch_tab(Frame, true)
    end, true)
    
    table.insert(other_items, main_executor_container)
    table.insert(other_items, main_cloud_container)
    table.insert(other_items, main_console_container)
    table.insert(other_items, main_settings_container)
    
    do -- Insert Execution Tab Items
        local Container = main_executor_container.Container;
        local TopBar = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local Script = Instance.new("Frame")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local ScriptNameBox = Instance.new("TextBox")
        local NewTab = Instance.new("Frame")
        local Frame_2 = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local TextButton_2 = Instance.new("TextButton")
        local BackTab = Instance.new("Frame")
        local Frame_3 = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local TextButton_3 = Instance.new("TextButton")
        local NextTab = Instance.new("Frame")
        local Frame_4 = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local TextButton_4 = Instance.new("TextButton")
        local TextBox = Instance.new("TextBox")
        
        local script_manager = getscripts_hideenv or function() return {} end;
        getgenv().getscripts_hideenv = nil;

        local SCRIPT_FOLDER_PATH = "workspace.saves/scripts"
        if type(isfolder) == "function" and type(makefolder) == "function" then
            pcall(function()
                if not isfolder(SCRIPT_FOLDER_PATH) then
                    makefolder(SCRIPT_FOLDER_PATH)
                end
            end)
        end

        local script_list = {}
        local managerOk, managerScripts = pcall(script_manager)
        if managerOk and type(managerScripts) == "table" then
            for name, contents in pairs(managerScripts) do
                script_list[name] = contents
            end
        end

        if type(listfiles) == "function" and type(readfile) == "function" then
            local listOk, files = pcall(listfiles, SCRIPT_FOLDER_PATH)
            if listOk and type(files) == "table" then
                for _, file in ipairs(files) do
                    local readOk, contents = pcall(readfile, file)
                    if readOk and type(contents) == "string" then
                        local name = tostring(file):match("[^/\\]+$") or tostring(file)
                        script_list[name] = contents
                    end
                end
            end
        end
        
        local ScriptFrameContainer = Instance.new("Frame")
        local ScriptFolder = Instance.new("ScrollingFrame")
        local UIListLayout__ = Instance.new("UIListLayout")
        local UserIdentity = Instance.new("TextLabel")
        local UIPadding = Instance.new("UIPadding")
                    
        ScriptFrameContainer.Name = "ScriptFrameContainer"
        ScriptFrameContainer.Parent = Container
        ScriptFrameContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ScriptFrameContainer.BackgroundTransparency = 0.900
        ScriptFrameContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ScriptFrameContainer.BorderSizePixel = 0
        ScriptFrameContainer.Position = UDim2.new(0.800000012, 0, 0, -10)
        ScriptFrameContainer.Size = UDim2.new(0.200000003, 0, 1, 10)
            
        ScriptFolder.Name = "ScriptFolder"
        ScriptFolder.VerticalScrollBarInset = Enum.ScrollBarInset.Always
        ScriptFolder.ElasticBehavior = Enum.ElasticBehavior.Never
        ScriptFolder.Parent = ScriptFrameContainer
        ScriptFolder.Active = true
        ScriptFolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ScriptFolder.BackgroundTransparency = 1.000
        ScriptFolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ScriptFolder.BorderSizePixel = 0
        ScriptFolder.Size = UDim2.new(1, 0, 0.8, 0)
        ScriptFolder.ScrollBarThickness = 8
    
        UIListLayout__.Parent = ScriptFolder
        UIListLayout__.HorizontalAlignment = Enum.HorizontalAlignment.Left
        UIListLayout__.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout__.Padding = UDim.new(0, 5)
        
        ScriptFolder.CanvasSize = UDim2.new(0, 0, 0, UIListLayout__.AbsoluteContentSize.Y)
    
        UIListLayout__:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            ScriptFolder.CanvasSize = UDim2.new(0, 0, 0, UIListLayout__.AbsoluteContentSize.Y)
        end)
            
        UserIdentity.Name = "UserIdentity"
        UserIdentity.Parent = ScriptFolder
        UserIdentity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UserIdentity.BackgroundTransparency = 1.000
        UserIdentity.BorderColor3 = Color3.fromRGB(0, 0, 0)
        UserIdentity.BorderSizePixel = 0
        UserIdentity.Position = UDim2.new(0.0496892706, 0, 0.00134769862, 0)
        UserIdentity.Size = UDim2.new(0.89440614, 0, -0.00479941955, 25)
        UserIdentity.Font = Enum.Font.GothamBold
        UserIdentity.Text = "Script Folder"
        UserIdentity.TextColor3 = Color3.fromRGB(255, 255, 255)
        UserIdentity.TextSize = 10.000
        UserIdentity.TextWrapped = true
        UserIdentity.TextXAlignment = Enum.TextXAlignment.Left
        
        UIPadding.Parent = ScriptFolder
        UIPadding.PaddingTop = UDim.new(0, 1)
    
        TopBar.Name = "TopBar"
        TopBar.Parent = Container
        TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TopBar.BackgroundTransparency = 1
        TopBar.BorderSizePixel = 0
        TopBar.ClipsDescendants = true
        TopBar.Position = UDim2.new(0, 0, 0, -10)
        TopBar.Size = UDim2.new(1, 0, 0, 50)
        
        UIListLayout.Parent = TopBar
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)
        
        Script.Name = "Script"
        Script.Parent = TopBar
        Script.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Script.BackgroundTransparency = 1
        Script.BorderSizePixel = 0
        Script.Size = UDim2.new(-0.00669243885, 100, 1, 0)
        
        Frame.Parent = Script
        Frame.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0, 0, 0.25, 0)
        Frame.Size = UDim2.new(1, 0, 0.5, 0)
        
        UICorner.Parent = Frame
        
        ScriptNameBox.Parent = Frame
        ScriptNameBox.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        ScriptNameBox.BackgroundTransparency = 1
        ScriptNameBox.BorderSizePixel = 0
        ScriptNameBox.Size = UDim2.new(1, 0, 1, 0)
        ScriptNameBox.Font = Enum.Font.Gotham
        ScriptNameBox.Text = "Script 1"
        ScriptNameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        ScriptNameBox.TextSize = 12
        ScriptNameBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        ScriptNameBox.TextTruncate = Enum.TextTruncate.AtEnd
        ScriptNameBox.TextWrapped = true;
    
        NewTab.Name = "NewTab"
        NewTab.Parent = TopBar
        NewTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NewTab.BackgroundTransparency = 1
        NewTab.BorderSizePixel = 0
        NewTab.Position = UDim2.new(0.0638823658, 0, 0, 0)
        NewTab.Size = UDim2.new(0, 25, 1, 0)
        
        Frame_2.Parent = NewTab
        Frame_2.BackgroundColor3 = Color3.fromRGB(45, 47, 51)
        Frame_2.BorderSizePixel = 0
        Frame_2.Position = UDim2.new(0, 0, 0.25, 0)
        Frame_2.Size = UDim2.new(1, 0, 0.5, 0)
        
        UICorner_2.Parent = Frame_2
        
        TextButton_2.Parent = Frame_2
        TextButton_2.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        TextButton_2.BackgroundTransparency = 1
        TextButton_2.BorderSizePixel = 0
        TextButton_2.Size = UDim2.new(1, 0, 1, 0)
        TextButton_2.Font = Enum.Font.GothamBold
        TextButton_2.Text = "+"
        TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2.TextScaled = true
        TextButton_2.TextSize = 12
        TextButton_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2.TextWrapped = true
        
        local Delete = Instance.new("Frame")
        local DeleteFrame = Instance.new("Frame")
        local DeleteUICorner = Instance.new("UICorner")
        local DeleteTextButton = Instance.new("TextButton")
                
        Delete.Name = "Delete"
        Delete.Parent = TopBar
        Delete.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Delete.BackgroundTransparency = 1.000
        Delete.BorderSizePixel = 0
        Delete.Position = UDim2.new(0.0638823658, 0, 0, 0)
        Delete.Size = UDim2.new(0, 25, 1, 0)
        Delete.Visible = false;
        
        DeleteFrame.Parent = Delete
        DeleteFrame.BackgroundColor3 = Color3.fromRGB(45, 47, 51)
        DeleteFrame.BorderSizePixel = 0
        DeleteFrame.Position = UDim2.new(0, 0, 0.25, 0)
        DeleteFrame.Size = UDim2.new(1, 0, 0.5, 0)
        
        DeleteUICorner.Parent = DeleteFrame
        
        DeleteTextButton.Parent = DeleteFrame
        DeleteTextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        DeleteTextButton.BackgroundTransparency = 1.000
        DeleteTextButton.BorderSizePixel = 0
        DeleteTextButton.Size = UDim2.new(1, 0, 1, 0)
        DeleteTextButton.Font = Enum.Font.GothamBold
        DeleteTextButton.Text = "-"
        DeleteTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        DeleteTextButton.TextScaled = true
        DeleteTextButton.TextSize = 12.000
        DeleteTextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        DeleteTextButton.TextWrapped = true

        BackTab.Name = "BackTab"
        BackTab.Parent = TopBar
        BackTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BackTab.BackgroundTransparency = 1
        BackTab.BorderSizePixel = 0
        BackTab.Position = UDim2.new(0.0638823658, 0, 0, 0)
        BackTab.Size = UDim2.new(0, 30, 1, 0)
        
        Frame_3.Parent = BackTab
        Frame_3.BackgroundColor3 = Color3.fromRGB(45, 47, 51)
        Frame_3.BorderSizePixel = 0
        Frame_3.Position = UDim2.new(0, 0, 0.25, 0)
        Frame_3.Size = UDim2.new(1, 0, 0.5, 0)
        Frame_3.Visible = false;
    
        UICorner_3.Parent = Frame_3
        
        TextButton_3.Parent = Frame_3
        TextButton_3.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        TextButton_3.BackgroundTransparency = 1
        TextButton_3.BorderSizePixel = 0
        TextButton_3.Size = UDim2.new(1, 0, 1, 0)
        TextButton_3.Font = Enum.Font.GothamBold
        TextButton_3.Text = "<"
        TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3.TextScaled = true
        TextButton_3.TextSize = 12
        TextButton_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3.TextWrapped = true
        
        NextTab.Name = "NextTab"
        NextTab.Parent = TopBar
        NextTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NextTab.BackgroundTransparency = 1
        NextTab.BorderSizePixel = 0
        NextTab.Position = UDim2.new(0.0638823658, 0, 0, 0)
        NextTab.Size = UDim2.new(0, 30, 1, 0)
        
        Frame_4.Parent = NextTab
        Frame_4.BackgroundColor3 = Color3.fromRGB(45, 47, 51)
        Frame_4.BorderSizePixel = 0
        Frame_4.Position = UDim2.new(0, 0, 0.25, 0)
        Frame_4.Size = UDim2.new(1, 0, 0.5, 0)
        Frame_4.Visible = false;
    
        UICorner_4.Parent = Frame_4
        
        TextButton_4.Parent = Frame_4
        TextButton_4.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        TextButton_4.BackgroundTransparency = 1
        TextButton_4.BorderSizePixel = 0
        TextButton_4.Size = UDim2.new(1, 0, 1, 0)
        TextButton_4.Font = Enum.Font.GothamBold
        TextButton_4.Text = ">"
        TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_4.TextScaled = true
        TextButton_4.TextSize = 12
        TextButton_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_4.TextWrapped = true
    
        TextBox.Parent = Container
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1
        TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0, 0, 0, 50)
        TextBox.Size = UDim2.new(0.75, 0, 1, -50)
        TextBox.Font = Enum.Font.Gotham
        TextBox.MultiLine = true
        TextBox.PlaceholderText = "print(\"Hello World!\")"
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(216, 216, 216)
        TextBox.TextSize = 14
        TextBox.TextWrapped = true
        TextBox.TextXAlignment = Enum.TextXAlignment.Left
        TextBox.TextYAlignment = Enum.TextYAlignment.Top
        TextBox.TextTruncate = Enum.TextTruncate.AtEnd
        TextBox.ClearTextOnFocus = false;

        local CurrentIndex = 1;
        
        local MaxIndex = 1;
        local TabItems = {}

        TabItems[CurrentIndex] = {
            Text = "",
            TabName = "Script 1"   
        };
    
        local success, _ = pcall(function()
            if SaveTabs == true then
                if isfile(savepath(".flux_tabs")) then
                    local data = HttpService:JSONDecode(readfile(savepath(".flux_tabs")));
                    
                    MaxIndex = #data;
    
                    if MaxIndex > 0 then
                        for i,v in pairs(data) do
                            TabItems[CurrentIndex] = {
                                Text = v.Text,
                                TabName = v.TabName;   
                            };
    
                            CurrentIndex = CurrentIndex + 1;
                        end
                    end
                end
            else      
                TabItems[CurrentIndex] = {
                    Text = "",
                    TabName = "Script 1"   
                };
            end
        end)

        if success == false then
            CurrentIndex = 1;
            MaxIndex = 1;
            TabItems = {}
        
            TabItems[CurrentIndex] = {
                Text = "",
                TabName = "Script 1"   
            };
        end

        if CurrentIndex > 1 then
            Frame_3.Visible = true;
            Frame_4.Visible = true;
            Delete.Visible = true;

            local FirstTabInfo = TabItems[1];

            TextBox.Text = FirstTabInfo.Text;
            ScriptNameBox.Text = FirstTabInfo.TabName;

            CurrentIndex = 1;
        end
    
        local old_text = #TextBox.Text;

        local function add_item(parent, title, script)
            local ClearScript = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")
        
            ClearScript.Name = "ClearScript"
            ClearScript.Parent = parent
            ClearScript.BackgroundColor3 = Color3.fromRGB(70, 70, 72)
            ClearScript.BorderSizePixel = 0
            ClearScript.Size = UDim2.new(0.8, 0, 0, 17)
    
            UICorner.Parent = ClearScript
                
            TextButton.Parent = ClearScript
            TextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 1, 0)
            TextButton.Font = Enum.Font.Gotham
            TextButton.TextTruncate = Enum.TextTruncate.AtEnd
            TextButton.Text = title
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 12
            TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    
            TextButton.MouseButton1Down:connect(function()
                if CurrentIndex == 1 then
                    Frame_3.Visible = true;
                    Frame_4.Visible = true;
                    Delete.Visible = true;
                end
    
                MaxIndex = MaxIndex + 1;
    
                CurrentIndex = MaxIndex;
    
                TabItems[CurrentIndex] = {
                    Text = script,
                    TabName = title
                };
    
                TextBox.Text = script;
                ScriptNameBox.Text = title

                old_text = #TextBox.Text
            end)
        end
        
        if type(script_list) == "table" then
            for i,v in pairs(script_list) do
                add_item(ScriptFolder, i, v)
            end
        end
        
        if #ScriptFolder:GetChildren() == 3 then
            ScriptFrameContainer.Visible = false;
        end
        
        ScriptNameBox:GetPropertyChangedSignal("Text"):Connect(function()
            ScriptNameBox.TextScaled = not ScriptNameBox.TextFits;
        end)

        TextBox.FocusLost:connect(function()
            save_tabs(TabItems);
        end)
    
        ScriptNameBox.FocusLost:Connect(function()
            if TabItems[CurrentIndex].TabName then
                TabItems[CurrentIndex].TabName = ScriptNameBox.Text;

                save_tabs(TabItems);
            end
        end)
    
        TextButton_2.MouseButton1Down:connect(function() -- Create new tab
            if CurrentIndex == 1 then
                Frame_3.Visible = true;
                Frame_4.Visible = true;
                Delete.Visible = true;
            end
    
            MaxIndex = MaxIndex + 1;
    
            CurrentIndex = MaxIndex;
    
            TabItems[CurrentIndex] = {
                Text = "",
                TabName = "Script "..tostring(CurrentIndex) 
            };
    
            TextBox.Text = "";
            ScriptNameBox.Text = "Script "..tostring(CurrentIndex);

            old_text = #TextBox.Text
        end)
    
        DeleteTextButton.MouseButton1Down:connect(function() -- Delete Tab
            if CurrentIndex == 1 then
                return;
            end

            TabItems[CurrentIndex] = false; -- Skip

            local OldIndex = CurrentIndex;

            CurrentIndex = CurrentIndex - 1;

            while TabItems[CurrentIndex] == false do
                if CurrentIndex == 1 then
                    
                    CurrentIndex = OldIndex;

                    return;
                end
                
                CurrentIndex = CurrentIndex - 1;
            end

            local Info = TabItems[CurrentIndex];
    
            TextBox.Text = Info.Text;
            ScriptNameBox.Text = Info.TabName;

            old_text = #TextBox.Text

            save_tabs(TabItems);
        end)

        TextButton_3.MouseButton1Down:connect(function() -- Previous Tab
            if CurrentIndex == 1 then
                return;
            end
    
            local OldIndex = CurrentIndex;

            CurrentIndex = CurrentIndex - 1;

            while TabItems[CurrentIndex] == false do
                if CurrentIndex == 1 then
                    
                    CurrentIndex = OldIndex;

                    return;
                end
                
                CurrentIndex = CurrentIndex - 1;
            end

            local Info = TabItems[CurrentIndex];
    
            TextBox.Text = Info.Text;
            ScriptNameBox.Text = Info.TabName;

            old_text = #TextBox.Text
        end)
    
        TextButton_4.MouseButton1Down:connect(function() -- Next Tab
            if CurrentIndex == MaxIndex then
                return;
            end
    
            local OldIndex = CurrentIndex;

            CurrentIndex = CurrentIndex + 1;

            while TabItems[CurrentIndex] == false do
                if CurrentIndex == MaxIndex then

                    CurrentIndex = OldIndex;

                    return;
                end

                CurrentIndex = CurrentIndex + 1;
            end

            local Info = TabItems[CurrentIndex];

            TextBox.Text = Info.Text;
            ScriptNameBox.Text = Info.TabName;

            old_text = #TextBox.Text
        end)
    
        -- Script Editor
    
        TextBox.FocusLost:connect(function()
            if TabItems[CurrentIndex].Text then
                TabItems[CurrentIndex].Text = TextBox.Text;
            end
        end)
    
        main_executor_container:create_backbutton().MouseButton1Down:connect(back_tab)
        main_executor_container:create_padding();
    
        main_executor_container:create_label("Script Editor");
    
        main_executor_container:create_button("Execute", function()
            --add_item(ScriptHistory__, TextBox.Text, TextBox.Text)
    
            loadcode("editor", TabItems[CurrentIndex].Text)
        end, { Purple = true })
    
        main_executor_container:create_button("Clear Editor", function()
            TextBox.Text = ""
            old_text = #TextBox.Text

            save_tabs(TabItems);
        end, { Purple = false })
    
        -- Clipboard
    
        main_executor_container:create_label("Clipboard");
    
        main_executor_container:create_button("Run", function()
            loadcode("clipboard", read_clipboard(true))
        end, { Purple = true })
    
        main_executor_container:create_button("Load into Editor", function()
            TextBox.Text = read_clipboard(true);
            old_text = #TextBox.Text

            save_tabs(TabItems);
        end, { Purple = false })
        
        main_executor_container:create_label("Extra");
        
        main_executor_container:create_button("Save Script", function()
            if ScriptFrameContainer.Visible == false then
                ScriptFrameContainer.Visible = true;
            end
            
            local title = ScriptNameBox.Text:gsub("%.[^%.]+$", "")..".luau";
            local scriptContent = TabItems[CurrentIndex].Text

            pcall(script_manager, true, title, scriptContent)
            if type(writefile) == "function" then
                pcall(writefile, SCRIPT_FOLDER_PATH.."/"..title, scriptContent)
            end
            add_item(ScriptFolder, title, scriptContent)
        end, { Purple = true })
        
        main_executor_container:create_button("Add to Autoexec", function()
            script_manager(false, ScriptNameBox.Text..".txt", TabItems[CurrentIndex].Text);
        end, { Purple = true })
    end
    
    do -- Insert Cloud Scripts Stuff
        main_cloud_container:create_backbutton().MouseButton1Down:connect(back_tab)
        main_cloud_container:create_padding();
    
        local Search = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextBox = Instance.new("TextBox")
        local Logo = Instance.new("ImageLabel")
        local ClearHistory = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local TextButton = Instance.new("TextButton")
        local Padding = Instance.new("Frame")
    
        Search.Name = "Search"
        Search.Parent = main_cloud_container.Selector
        Search.BackgroundColor3 = Color3.fromRGB(70, 70, 72)
        Search.BorderSizePixel = 0
        Search.Size = UDim2.new(0.9, 0, 0, 25)
    
        UICorner.Parent = Search
    
        TextBox.Parent = Search
        TextBox.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
        TextBox.BackgroundTransparency = 1
        TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0.131, 0, 0.16, 0)
        TextBox.Size = UDim2.new(0.869, 0, 0.72, 0)
        TextBox.Font = Enum.Font.Gotham
        TextBox.MultiLine = false
        TextBox.PlaceholderText = "Search Scripts"
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(216, 216, 216)
        TextBox.TextSize = 14
        TextBox.TextWrapped = true
        TextBox.TextXAlignment = Enum.TextXAlignment.Left
        TextBox.TextYAlignment = Enum.TextYAlignment.Top
    
        Logo.Name = "Logo"
        Logo.Parent = Search
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1
        Logo.BorderSizePixel = 0
        Logo.Position = UDim2.new(0.036, 0, -0.173, 10)
        Logo.Size = UDim2.new(0.065, 0, 0.5, 0)
        Logo.Image = "rbxassetid://11877279869"
        Logo.ScaleType = Enum.ScaleType.Fit
    
        ClearHistory.Name = "ClearHistory"
        ClearHistory.Parent = main_cloud_container.Selector
        ClearHistory.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
        ClearHistory.BorderSizePixel = 0
        ClearHistory.Size = UDim2.new(0.9, 0, 0, 25)
    
        UICorner_2.Parent = ClearHistory
    
        TextButton.Parent = ClearHistory
        TextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        TextButton.BackgroundTransparency = 1
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = "Clear History"
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 12
        TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    
        Padding.Name = "Padding"
        Padding.Parent = main_cloud_container.Selector
        Padding.BackgroundColor3 = Color3.fromRGB(70, 70, 72)
        Padding.BorderSizePixel = 0
        Padding.Size = UDim2.new(0.9, 0, 0, 1)
    
        local Container = main_cloud_container.Container;
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local Clipboard = Instance.new("TextLabel")
        local UIListLayout = Instance.new("UIListLayout")
        local Padding__ = Instance.new("Frame")
    
        ScrollingFrame.Parent = Container
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame.BackgroundTransparency = 1.000
        ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
        ScrollingFrame.ScrollBarThickness = 5
        ScrollingFrame.ElasticBehavior = Enum.ElasticBehavior.Never
        ScrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y

        Clipboard.Name = "Clipboard"
        Clipboard.Parent = ScrollingFrame
        Clipboard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Clipboard.BackgroundTransparency = 1.000
        Clipboard.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Clipboard.BorderSizePixel = 0
        Clipboard.Position = UDim2.new(3.7057486e-08, 0, 0, 0)
        Clipboard.Size = UDim2.new(0.99000001, 0, 0, 25)
        Clipboard.Font = Enum.Font.Gotham
        Clipboard.Text = ""
        Clipboard.RichText = true;
        Clipboard.TextColor3 = Color3.fromRGB(255, 255, 255)
        Clipboard.TextScaled = true
        Clipboard.TextSize = 14.000
        Clipboard.TextWrapped = true
        
        UIListLayout.Parent = ScrollingFrame
        UIListLayout.Padding = UDim.new(0, 5)
    
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
    
        UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
        end)
        
        Padding__.Name = "Padding"
        Padding__.Parent = ScrollingFrame
        Padding__.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Padding__.BackgroundTransparency = 1.000
        Padding__.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Padding__.BorderSizePixel = 0
        Padding__.Position = UDim2.new(0.355789751, 0, 0.026041666, 0)
        Padding__.Size = UDim2.new(0, 0, 0, 10)
    
        local scripts = {}
    
        local function add_script(title, author, description, script, gameurl)
            local ScriptContainer = Instance.new("Frame")
            local ImageLabel = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            local UICorner_2 = Instance.new("UICorner")
            local Frame = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local Title = Instance.new("TextLabel")
            local Author = Instance.new("TextLabel")
            local Execute = Instance.new("Frame")
            local UICorner_4 = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")
            local CopyScript = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local TextButton_2 = Instance.new("TextButton")
            local Desc = Instance.new("TextLabel")            

            ScriptContainer.Name = "ScriptContainer"
            ScriptContainer.Parent = ScrollingFrame
            ScriptContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ScriptContainer.BackgroundTransparency = 0.500
            ScriptContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ScriptContainer.BorderSizePixel = 0
            ScriptContainer.Size = UDim2.new(0.99, 0, 0, 200)

            table.insert(scripts, ScriptContainer);

            local success, _ = pcall(function()
                if gameurl == nil or gameurl["name"] == "Universal Script Ã°Å¸â€œÅ’" then
                    universe_id = game.GameId;
                else
                    local x = game:HttpGet("https://apis.roblox.com/universes/v1/places/"..gameurl["gameId"].."/universe")
                        
                    universe_id = HttpService:JSONDecode(x)["universeId"];
                end
            end)

            if success == false then
                universe_id = game.GameId;
            end

            ImageLabel.Parent = ScriptContainer
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel.Image = "rbxthumb://type=GameIcon&id="..tostring(universe_id).."&w=512&h=512"
            ImageLabel.ScaleType = Enum.ScaleType.Tile
            
            UICorner.Parent = ImageLabel
            
            UICorner_2.Parent = ScriptContainer
            
            Frame.Parent = ScriptContainer
            Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BackgroundTransparency = 0.300
            Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BorderSizePixel = 0
            Frame.Size = UDim2.new(1, 0, 1, 0)
            
            UICorner_3.Parent = Frame
            
            Title.Name = "Title"
            Title.Parent = Frame
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title.BorderSizePixel = 0
            Title.Position = UDim2.new(0.0109999413, 0, 0.036896646, 0)
            Title.Size = UDim2.new(0.5, 0, 0, 25)
            Title.Font = Enum.Font.GothamMedium
            Title.Text = title
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextScaled = true
            Title.TextSize = 14.000
            Title.TextWrapped = true
            Title.TextXAlignment = Enum.TextXAlignment.Left
            
            Author.Name = "Author"
            Author.Parent = Frame
            Author.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Author.BackgroundTransparency = 1.000
            Author.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Author.BorderSizePixel = 0
            Author.Position = UDim2.new(0.011712254, 0, -0.0285714287, 40)
            Author.Size = UDim2.new(0.978287756, 0, -0.05714285, 25)
            Author.Font = Enum.Font.Gotham
            Author.Text = "By "..author
            Author.TextColor3 = Color3.fromRGB(255, 255, 255)
            Author.TextSize = 14.000
            Author.TextXAlignment = Enum.TextXAlignment.Left

            Desc.Name = "Desc"
            Desc.Parent = Frame
            Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Desc.BackgroundTransparency = 1.000
            Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Desc.BorderSizePixel = 0
            Desc.Position = UDim2.new(0.011712254, 0, -0.0289999992, 65)
            Desc.Size = UDim2.new(0.978287756, 0, 1, -120)
            Desc.Font = Enum.Font.Roboto
            Desc.Text = description
            Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
            Desc.TextSize = 14.000
            Desc.TextScaled = true;
            Desc.TextXAlignment = Enum.TextXAlignment.Left
            Desc.TextYAlignment = Enum.TextYAlignment.Top
            
            Execute.Name = "Execute"
            Execute.Parent = Frame
            Execute.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
            Execute.BorderSizePixel = 0
            Execute.Position = UDim2.new(0.0109999999, 0, 1, -35)
            Execute.Size = UDim2.new(0, 100, 0, 25)
            
            UICorner_4.Parent = Execute
            
            TextButton.Parent = Execute
            TextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 1, 0)
            TextButton.Font = Enum.Font.GothamBold
            TextButton.Text = "Execute"
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 12.000
            TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.MouseButton1Down:connect(function()
                loadcode("script", script);
            end)

            CopyScript.Name = "CopyScript"
            CopyScript.Parent = Frame
            CopyScript.BackgroundColor3 = Color3.fromRGB(70, 70, 72)
            CopyScript.BorderSizePixel = 0
            CopyScript.Position = UDim2.new(0.0109999999, 110, 1, -35)
            CopyScript.Size = UDim2.new(0, 100, 0, 25)
            
            UICorner_5.Parent = CopyScript
            
            TextButton_2.Parent = CopyScript
            TextButton_2.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
            TextButton_2.BackgroundTransparency = 1.000
            TextButton_2.BorderSizePixel = 0
            TextButton_2.Size = UDim2.new(1, 0, 1, 0)
            TextButton_2.Font = Enum.Font.GothamBold
            TextButton_2.Text = "Copy Script"
            TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_2.TextSize = 12.000
            TextButton_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

            TextButton_2.MouseButton1Down:connect(function()
                setclipboard(script);
            end)
        end
    
        local cache = {}
        local HttpService = game:GetService("HttpService")

        local function query_scriptblox(search)
            if cache[search] then
                for i,v in ipairs(cache[search]) do
                    add_script(v.title,v.author,v.desc,v.script)
                end
            else
                cache[search] = {}
                local url = "https://scriptblox.com/api/script/search?q="..HttpService:UrlEncode(search).."&mode=free"
                local success, res = pcall(function()
                    return game:HttpGet(url)
                end)
                
                if not success or not res or res == "" then
                    return
                end
                
                local decodeSuccess, data = pcall(function()
                    return HttpService:JSONDecode(res)
                end)
                
                if not decodeSuccess or not data or not data.result or not data.result.scripts then
                    return
                end
                
                for i, v in pairs(data.result.scripts) do
                    if v.isPatched then continue end
                    
                    local id = v._id
                    local infoUrl = "https://scriptblox.com/api/script/"..id
                    local infoSuccess, infoRes = pcall(function()
                        return game:HttpGet(infoUrl)
                    end)
                    
                    if infoSuccess and infoRes and infoRes ~= "" then
                        local infoDecodeSuccess, infoData = pcall(function()
                            return HttpService:JSONDecode(infoRes)
                        end)
                        
                        if infoDecodeSuccess and infoData and infoData.script then
                            local info = infoData.script
                            local title = info.title
                            local desc = info.features
                            local author = info.owner and info.owner.username or "Unknown"
                            local script = info.script
                            
                            table.insert(cache[search], {
                                title=title,
                                desc=desc,
                                author=author,
                                script=script
                            })
                            
                            add_script(title, author, desc, script, info.game)
                        end
                    end
                    task.wait(0.2)
                end
            end
        end
    
        local function history_click(frame)
            for i,v in pairs(scripts) do
                v:Remove();
                scripts[i] = nil;
            end
    
            Clipboard.Text = "Matching<font family=\"rbxasset://fonts/families/GothamSSm.json\" style=\"Normal\" weight=\"700\" > "..frame.TextButton.Text.."</font>"
    
            query_scriptblox(frame.TextButton.Text);
        end
    
        local History1 = main_cloud_container:create_button("", history_click, { Purple = false })
        local History2 = main_cloud_container:create_button("", history_click, { Purple = false })
        local History3 = main_cloud_container:create_button("", history_click, { Purple = false })
    
        History1.Visible = false;
        History2.Visible = false;
        History3.Visible = false;
    
        TextButton.MouseButton1Down:connect(function()
            History1.Visible = false;
            History2.Visible = false;
            History3.Visible = false;
        end)
    
        TextBox.FocusLost:connect(function()
            if TextBox.Text == "" then
                return;
            end 
    
            if History1.Visible == false then
                History1.TextButton.Text = TextBox.Text;
                History1.Visible = true;
            elseif History2.Visible == false then
                History2.TextButton.Text = TextBox.Text;
                History2.Visible = true;
            elseif History3.Visible == false then
                History3.TextButton.Text = TextBox.Text;
                History3.Visible = true;
            else
                local FirstText = History1.TextButton.Text;
                local SecondText = History2.TextButton.Text;
    
                History1.TextButton.Text = TextBox.Text;
                History2.TextButton.Text = FirstText;
                History3.TextButton.Text = SecondText;
            end
    
            for i,v in pairs(scripts) do
                v:Remove();
                scripts[i] = nil;
            end
    
            Clipboard.Text = "Matching<font family=\"rbxasset://fonts/families/GothamSSm.json\" style=\"Normal\" weight=\"700\" > "..TextBox.Text.."</font>"
    
            query_scriptblox(TextBox.Text);
        end)
    end
    
    do -- Console Tab
        local Container = main_console_container.Container;
    
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local Padding = Instance.new("Frame")
    
        ScrollingFrame.Parent = Container
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame.BackgroundTransparency = 1.000
        ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollingFrame.ScrollBarThickness = 5
    
        UIListLayout.Parent = ScrollingFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)
    
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
    
        UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
            ScrollingFrame.CanvasPosition = Vector2.new(0,UIListLayout.AbsoluteContentSize.Y)
        end)
    
        Padding.Name = "Padding"
        Padding.Parent = ScrollingFrame
        Padding.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Padding.BackgroundTransparency = 1.000
        Padding.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Padding.BorderSizePixel = 0
        Padding.Position = UDim2.new(0.355789751, 0, 0.026041666, 0)
        Padding.Size = UDim2.new(0, 0, 0, 10)
    
        local Output = "OUTPUT";
        local Success = "SUCCESS";
        local Error = "ERROR";
        local Warning = "WARN";
    
        function console_log(Type, Text, Visible)
            local Label = Instance.new("TextLabel")
    
            local Color = if Type == "SUCCESS" then "#67C554" elseif Type == "ERROR" then "#E03232" elseif Type == "WARN" then "#FEEE79" else "#BFBFBF" 
    
            Label.Name = Type
            Label.Parent = ScrollingFrame
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0.002, 0, 0, 0)
            Label.Font = Enum.Font.Gotham
            Label.AutoLocalize = false;
            Label.Text = "[10:43] <font family=\"rbxasset://fonts/families/GothamSSm.json\" color=\""..Color.."\" style=\"Normal\" weight=\"500\" >["..Type.."] </font> "..Text
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 14.000
            Label.TextWrapped = true
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.RichText = true;
            Label.Visible = Visible
    
            local count  = select(2, Text:gsub('\n', '\n'))
    
            if count > 1 then
                Label.Size = UDim2.new(0.99, 0, 0, (25 * (count - 1)) + 25)
            else
                Label.Size = UDim2.new(0.99, 0, 0, 25)
            end
        end
        
        getgenv().flux_console_log = console_log;
    
        main_console_container:create_backbutton().MouseButton1Down:connect(back_tab)
        main_console_container:create_padding();

        local Search = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextBox = Instance.new("TextBox")
        local Logo = Instance.new("ImageLabel")

        Search.Name = "Search"
        Search.Parent = main_console_container.Selector
        Search.BackgroundColor3 = Color3.fromRGB(70, 70, 72)
        Search.BorderSizePixel = 0
        Search.Size = UDim2.new(0.9, 0, 0, 25)
    
        UICorner.Parent = Search
    
        TextBox.Parent = Search
        TextBox.BackgroundColor3 = Color3.fromRGB(103, 61, 234)
        TextBox.BackgroundTransparency = 1
        TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0.131, 0, 0.16, 0)
        TextBox.Size = UDim2.new(0.869, 0, 0.72, 0)
        TextBox.Font = Enum.Font.Gotham
        TextBox.MultiLine = false
        TextBox.PlaceholderText = "Search Console"
        TextBox.Text = ""
        TextBox.TextTruncate = Enum.TextTruncate.AtEnd
        TextBox.ClearTextOnFocus = false;
        TextBox.TextColor3 = Color3.fromRGB(216, 216, 216)
        TextBox.TextSize = 14
        TextBox.TextWrapped = true
        TextBox.TextXAlignment = Enum.TextXAlignment.Left
        TextBox.TextYAlignment = Enum.TextYAlignment.Top
    
        Logo.Name = "Logo"
        Logo.Parent = Search
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1
        Logo.BorderSizePixel = 0
        Logo.Position = UDim2.new(0.036, 0, -0.173, 10)
        Logo.Size = UDim2.new(0.065, 0, 0.5, 0)
        Logo.Image = "rbxassetid://11877279869"
        Logo.ScaleType = Enum.ScaleType.Fit
    
        main_console_container:create_label("Console Settings");
    
        main_console_container:create_button("Copy", function()
            local Text = "";
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v:IsA("TextLabel") then
                    Text = Text..v.Text.."\n";
                end
            end
    
            setclipboard(Text);
        end, { Purple = true })
    
        main_console_container:create_button("Clear", function()
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v:IsA("TextLabel") then
                    v:Remove()
                end
            end
        end, { Purple = false })
    
        main_console_container:create_label("Filters");
    
        main_console_container:create_toggle("Output", function(state)
            ConsoleOutput = state;
            
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v:IsA("TextLabel") then
                    if v.Name == "OUTPUT" then
                        v.Visible = state
                    end
                end
            end
    
            pcall(save_settings);
        end, { Enabled = ConsoleOutput, Call = true })
    
        main_console_container:create_toggle("Warning", function(state)
            ConsoleWarning = state;
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v:IsA("TextLabel") then
                    if v.Name == "WARN" then
                        v.Visible = state
                    end
                end
            end
    
            pcall(save_settings);
        end, { Enabled = ConsoleWarning, Call = true })
    
        main_console_container:create_toggle("Error", function(state)
            ConsoleError = state;
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v:IsA("TextLabel") then
                    if v.Name == "ERROR" then
                        v.Visible = state
                    end
                end
            end
    
            pcall(save_settings);
        end, { Enabled = ConsoleError, Call = true })
    
        console_log(Success, "Welcome to Fluxus Android!", true);

        TextBox.FocusLost:connect(function()
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v:IsA("TextLabel") then
                    if (v.Name == "OUTPUT" and ConsoleOutput == false) or (v.Name == "WARN" and ConsoleWarning == false) or (v.Name == "ERROR" and ConsoleError == false) then 
                        continue
                    end

                    local text_filter = v.Text:lower():match("</font> (.*)");

                    if text_filter:lower():find(TextBox.Text:lower()) then
                        v.Visible = true;
                    else
                        v.Visible = false;
                    end
                end
            end
        end)
    
        game:GetService("LogService").MessageOut:Connect(function(message, type)
            if type == Enum.MessageType.MessageOutput then
                console_log(Output, message, ConsoleOutput);
            elseif type == Enum.MessageType.MessageWarning then
                console_log(Warning, message, ConsoleWarning);
            elseif type == Enum.MessageType.MessageError then
                console_log(Error, message, ConsoleError);
            end
        end)
    end
    
    do  
        main_settings_container:create_backbutton().MouseButton1Down:connect(back_tab)
        main_settings_container:create_padding();
    
        local UserIdentity = Instance.new("TextLabel")
        local Id = Instance.new("TextLabel")
        local GetHelp = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextButton = Instance.new("TextButton")
    
        UserIdentity.Name = "UserIdentity"
        UserIdentity.Parent = main_settings_container.Selector
        UserIdentity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UserIdentity.BackgroundTransparency = 1.000
        UserIdentity.BorderColor3 = Color3.fromRGB(0, 0, 0)
        UserIdentity.BorderSizePixel = 0
        UserIdentity.Position = UDim2.new(0.0500000268, 0, 0.145101666, 0)
        UserIdentity.Size = UDim2.new(0.899999976, 0, -0.0110905729, 25)
        UserIdentity.Font = Enum.Font.GothamBold
        UserIdentity.Text = "USER IDENTITY"
        UserIdentity.TextColor3 = Color3.fromRGB(255, 255, 255)
        UserIdentity.TextSize = 12.000
        UserIdentity.TextWrapped = true
        UserIdentity.TextXAlignment = Enum.TextXAlignment.Left
    
        Id.Name = "Id"
        Id.Parent = main_settings_container.Selector
        Id.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Id.BackgroundTransparency = 1.000
        Id.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Id.BorderSizePixel = 0
        Id.Position = UDim2.new(0.0500000268, 0, 0.145101666, 0)
        Id.Size = UDim2.new(0.899999976, 0, -0.0110905729, 25)
        Id.Font = Enum.Font.Gotham
        Id.Text = "HWID-"..gethwid()
        Id.TextColor3 = Color3.fromRGB(255, 255, 255)
        Id.TextSize = 12.000
        Id.TextWrapped = true
        Id.TextXAlignment = Enum.TextXAlignment.Left
    
        if Id.TextFits == false then
            Id.TextScaled = true;
        end
    
        main_settings_container:create_padding(5)
    
        GetHelp.Name = "GetHelp"
        GetHelp.Parent = main_settings_container.Selector
        GetHelp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GetHelp.BorderSizePixel = 0
        GetHelp.Size = UDim2.new(0.899999976, 0, 0, 25)
    
        UICorner.Parent = GetHelp
    
        TextButton.Parent = GetHelp
        TextButton.BackgroundColor3 = Color3.fromRGB(69, 72, 79)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = "Get Help"
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 12.000
        TextButton.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)

        TextButton.MouseButton1Down:connect(function()
            notify("Connect with our support system!", "To get help, join our support discord at https://discord.gg/NKgEmhMKYs!\n\nCreate a support ticket or contact one of our support representatives and they will help you as soon as possible!")
        end)
    
        main_settings_container:create_padding(5)
    
        main_settings_container:create_label("Fluxus")
    
        main_settings_container:create_toggle("Save Settings", function(state)
            SaveSettings = state;
    
            pcall(function()
                if state == false then
                    local data = HttpService:JSONDecode(readfile(savepath(".flux_settings")))
                    data["SaveSettings"] = false;
                    writefile(savepath(".flux_settings"), HttpService:JSONEncode(data))
                else
                    save_settings();
                end
            end)   
        end, { Enabled = SaveSettings })

        main_settings_container:create_toggle("Save Tabs", function(state)
            SaveTabs = state;
            
            pcall(save_settings);
        end, { Enabled = SaveTabs })
        
        main_settings_container:create_toggle("Center Minimize", function(state)
            CenterMinimize = state;
    
            pcall(save_settings);
        end, { Enabled = CenterMinimize })
    
        main_settings_container:create_toggle("Fast Animations", function(state)
            FastAnims = state;
    
            pcall(save_settings);
        end, { Enabled = FastAnims })
    
        main_settings_container:create_toggle("No Animations", function(state)
            NoAnims = state;
    
            pcall(save_settings);
        end, { Enabled = NoAnims })
    
        main_settings_container:create_label("Game")
        main_settings_container:create_toggle("FPS Unlocker", function(state)
            FPSUnlocker = state;
    
            if state then
                setfpscap(999)
            else
                setfpscap(60)
            end
    
            pcall(save_settings);
        end, { Enabled = FPSUnlocker, Call = true })
    end
end

load_ui(true);