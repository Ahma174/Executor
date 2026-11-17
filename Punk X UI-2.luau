-- // 🛡️ STEALTH MODE: SILENCE CONSOLE //
--local _original_print = print
--local _original_warn = warn

-- Now silence them
--if getgenv then
    --getgenv().print = function(...) end
   -- getgenv().warn = function(...) end
--end
--print = function(...) end
--warn = function(...) end

-- Store in global for console to use
--_G._original_print = _original_print
--_G._original_warn = _original_warn

-- Decryption function
local function decrypt(str)
    local result = ""
    for i = 1, #str do
        result = result .. string.char(bit32.bxor(str:byte(i), 123))
    end
    return result
end

-- Encrypted dev key
local SECRET_DEV_KEY = decrypt("\x2b\x2e\x35\x30\x56\x23\x56\x43\x39\x49\x42\x56\x4f\x3d\x4a\x3a\x56\x42\x38\x48\x3f\x56\x4c\x3e\x4a\x4a")
local G2L = {};

-- StarterGui.ScreenGui
local function GetSafeParent()
    -- 🛡️ STRICT STEALTH: ONLY ALLOW HIDDEN UI
    if gethui then 
        return gethui()
    end
    -- If gethui is missing, we return nil to prevent unsafe loading
    return nil 
end

-- // 🛡️ SECURITY: SAFE RANDOM NAME GENERATION //
local function safeGenerateGUID()
    local success, result = pcall(function()
        return game:GetService("HttpService"):GenerateGUID(false):sub(1, 8)
    end)
    
    if success then return result end
    
    -- Fallback for anti-cheat environments
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local guid = ""
    for i = 1, 8 do
        local rand = math.random(1, #chars)
        guid = guid .. chars:sub(rand, rand)
    end
    return guid
end

local randomName = safeGenerateGUID()

-- // CREATE UI //
G2L["1"] = Instance.new("ScreenGui", GetSafeParent())
G2L["1"].Name = randomName
G2L["1"]["IgnoreGuiInset"] = true
G2L["1"]["DisplayOrder"] = 999
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets
G2L["1"]["ClipToDeviceSafeArea"] = false
G2L["1"]["ResetOnSpawn"] = false


-- StarterGui.ScreenGui.LocalScript
G2L["2"] = Instance.new("LocalScript", G2L["1"]);



-- StarterGui.ScreenGui.LocalScript.Yo
G2L["3"] = Instance.new("TextButton", G2L["2"]);
G2L["3"]["Active"] = false;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40); -- Darker Card
G2L["3"]["Selectable"] = false;
G2L["3"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["3"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["3"]["ClipsDescendants"] = true;
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[]];
G2L["3"]["Name"] = [[Yo]];


-- StarterGui.ScreenGui.LocalScript.Yo.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 12); -- Softer Rounding


-- StarterGui.ScreenGui.LocalScript.Yo.UIListLayout
G2L["5"] = Instance.new("UIListLayout", G2L["3"]);
G2L["5"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["5"]["Wraps"] = true;
G2L["5"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.LocalScript.Yo.UIPadding
G2L["6"] = Instance.new("UIPadding", G2L["3"]);
G2L["6"]["PaddingTop"] = UDim.new(0, 6);
G2L["6"]["PaddingRight"] = UDim.new(0, 6);
G2L["6"]["PaddingLeft"] = UDim.new(0, 12);
G2L["6"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.LocalScript.Yo.Delete
G2L["7"] = Instance.new("ImageButton", G2L["3"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["ImageColor3"] = Color3.fromRGB(255, 100, 100); -- Red tint for delete
G2L["7"]["Selectable"] = false;
G2L["7"]["Image"] = [[rbxassetid://122962777517764]];
G2L["7"]["Size"] = UDim2.new(0.05509, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Delete]];
G2L["7"]["Position"] = UDim2.new(0.46157, 0, 0, 0);


-- StarterGui.ScreenGui.LocalScript.Yo.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["3"]);
G2L["8"]["Transparency"] = 0.8;
G2L["8"]["Thickness"] = 1;
G2L["8"]["Color"] = Color3.fromRGB(160, 85, 255); -- Purple Border
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.LocalScript.Yo.Title
G2L["9"] = Instance.new("TextLabel", G2L["3"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["9"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal); -- Gotham Bold
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Script 1]];
G2L["9"]["LayoutOrder"] = -1;
G2L["9"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["9"]["Name"] = [[Title]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate
G2L["a"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 35); -- Dark Card
G2L["a"]["Size"] = UDim2.new(1, 0, 0, 60); -- Taller for modern look
G2L["a"]["Position"] = UDim2.new(0, 0, -0.5793, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Name"] = [[SearchTemplate]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Title
G2L["b"] = Instance.new("TextLabel", G2L["a"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["ZIndex"] = 2;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 16;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["b"]["TextScaled"] = false;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(1, 0, 0.49391, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[Title]];
G2L["b"]["Position"] = UDim2.new(0, 0, -0, 0);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UICorner
G2L["c"] = Instance.new("UICorner", G2L["a"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UIListLayout
G2L["d"] = Instance.new("UIListLayout", G2L["a"]);
G2L["d"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["a"]);
G2L["e"]["Transparency"] = 0.85;
G2L["e"]["Thickness"] = 1;
G2L["e"]["Color"] = Color3.fromRGB(160, 85, 255);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UIPadding
G2L["f"] = Instance.new("UIPadding", G2L["a"]);
G2L["f"]["PaddingTop"] = UDim.new(0, 10);
G2L["f"]["PaddingRight"] = UDim.new(0, 10);
G2L["f"]["PaddingLeft"] = UDim.new(0, 10);
G2L["f"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc
G2L["10"] = Instance.new("Folder", G2L["a"]);
G2L["10"]["Name"] = [[Misc]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Thumbnail
G2L["11"] = Instance.new("ImageLabel", G2L["10"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["ImageTransparency"] = 0.8;
G2L["11"]["Image"] = [[rbxassetid://126996328694946]];
G2L["11"]["Size"] = UDim2.new(1, 20, 1, 20); -- Fill background
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Name"] = [[Thumbnail]];
G2L["11"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Thumbnail.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Thumbnail.UIGradient
G2L["13"] = Instance.new("UIGradient", G2L["11"]);
G2L["13"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.4375),NumberSequenceKeypoint.new(0.768, 0.29375),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel
G2L["14"] = Instance.new("CanvasGroup", G2L["10"]);
G2L["14"]["ZIndex"] = 3;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["14"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["14"]["Size"] = UDim2.new(0.2, 0, 0.98, 0);
G2L["14"]["Position"] = UDim2.new(1, 0, 1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Panel]];
G2L["14"]["BackgroundTransparency"] = 0.2;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.UIListLayout
G2L["15"] = Instance.new("UIListLayout", G2L["14"]);
G2L["15"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["15"]["Padding"] = UDim.new(0, 6);
G2L["15"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["15"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.UICorner
G2L["16"] = Instance.new("UICorner", G2L["14"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.Spacer1
G2L["17"] = Instance.new("Frame", G2L["14"]);
G2L["17"]["ZIndex"] = 4;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["17"]["Size"] = UDim2.new(0, 1, 0.5, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Spacer1]];
G2L["17"]["LayoutOrder"] = 1;
G2L["17"]["BackgroundTransparency"] = 0.5;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.Spacer1.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.Execute
G2L["19"] = Instance.new("TextButton", G2L["14"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["AutoButtonColor"] = false;
G2L["19"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["ZIndex"] = 4;
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(0.4, 0, 0.9, 0);
G2L["19"]["LayoutOrder"] = 1;
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[]];
G2L["19"]["Name"] = [[Execute]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.Execute.Icon
G2L["1a"] = Instance.new("ImageLabel", G2L["19"]);
G2L["1a"]["ZIndex"] = 5;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["ImageColor3"] = Color3.fromRGB(160, 85, 255); -- Purple Execute
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1a"]["Image"] = [[rbxassetid://95804011254392]];
G2L["1a"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Name"] = [[Icon]];
G2L["1a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.Save
G2L["1b"] = Instance.new("TextButton", G2L["14"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["AutoButtonColor"] = false;
G2L["1b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["ZIndex"] = 4;
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Size"] = UDim2.new(0.4, 0, 0.9, 0);
G2L["1b"]["LayoutOrder"] = -2;
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[]];
G2L["1b"]["Name"] = [[Save]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.Save.Icon
G2L["1c"] = Instance.new("ImageLabel", G2L["1b"]);
G2L["1c"]["ZIndex"] = 5;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c"]["Image"] = [[rbxassetid://81882572588470]];
G2L["1c"]["Size"] = UDim2.new(0.645, 0, 0.645, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Name"] = [[Icon]];
G2L["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.UIScale
G2L["1d"] = Instance.new("UIScale", G2L["14"]);
G2L["1d"]["Scale"] = 0.9;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.UIPadding
G2L["1e"] = Instance.new("UIPadding", G2L["14"]);
G2L["1e"]["PaddingTop"] = UDim.new(0, 2);
G2L["1e"]["PaddingRight"] = UDim.new(0, 2);
G2L["1e"]["PaddingLeft"] = UDim.new(0, 2);
G2L["1e"]["PaddingBottom"] = UDim.new(0, 2);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags
G2L["1f"] = Instance.new("Frame", G2L["a"]);
G2L["1f"]["ZIndex"] = 2;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["1f"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Name"] = [[Tags]];
G2L["1f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.UIListLayout
G2L["20"] = Instance.new("UIListLayout", G2L["1f"]);
G2L["20"]["Wraps"] = true;
G2L["20"]["Padding"] = UDim.new(0, 5);
G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Key
G2L["21"] = Instance.new("TextLabel", G2L["1f"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 12;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 210, 94);
G2L["21"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["21"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Key]];
G2L["21"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["21"]["Name"] = [[Key]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Key.UIPadding
G2L["22"] = Instance.new("UIPadding", G2L["21"]);
G2L["22"]["PaddingRight"] = UDim.new(0, 10);
G2L["22"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Key.UICorner
G2L["23"] = Instance.new("UICorner", G2L["21"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Paid
G2L["24"] = Instance.new("TextLabel", G2L["1f"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 12;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 228, 126);
G2L["24"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Paid]];
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["24"]["Name"] = [[Paid]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Paid.UIPadding
G2L["25"] = Instance.new("UIPadding", G2L["24"]);
G2L["25"]["PaddingRight"] = UDim.new(0, 10);
G2L["25"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Paid.UICorner
G2L["26"] = Instance.new("UICorner", G2L["24"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Patched
G2L["27"] = Instance.new("TextLabel", G2L["1f"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextSize"] = 12;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 100, 100);
G2L["27"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[Patched]];
G2L["27"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["27"]["Name"] = [[Patched]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Patched.UIPadding
G2L["28"] = Instance.new("UIPadding", G2L["27"]);
G2L["28"]["PaddingRight"] = UDim.new(0, 10);
G2L["28"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Patched.UICorner
G2L["29"] = Instance.new("UICorner", G2L["27"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Universal
G2L["2a"] = Instance.new("TextLabel", G2L["1f"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 12;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["2a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[Universal]];
G2L["2a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2a"]["Name"] = [[Universal]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Universal.UIPadding
G2L["2b"] = Instance.new("UIPadding", G2L["2a"]);
G2L["2b"]["PaddingRight"] = UDim.new(0, 10);
G2L["2b"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Universal.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2a"]);
G2L["2c"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.LocalScript.SaveTemplate
G2L["2d"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 35); -- Dark Card
G2L["2d"]["Size"] = UDim2.new(1, 0, 0, 55);
G2L["2d"]["Position"] = UDim2.new(0, 0, -0.5793, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Name"] = [[SaveTemplate]];

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UICorner
G2L["2e"] = Instance.new("UICorner", G2L["2d"]);
G2L["2e"]["CornerRadius"] = UDim.new(0, 16);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UIListLayout
G2L["2f"] = Instance.new("UIListLayout", G2L["2d"]);
G2L["2f"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UIStroke
G2L["30"] = Instance.new("UIStroke", G2L["2d"]);
G2L["30"]["Transparency"] = 0.85;
G2L["30"]["Thickness"] = 1;
G2L["30"]["Color"] = Color3.fromRGB(160, 85, 255);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UIPadding
G2L["31"] = Instance.new("UIPadding", G2L["2d"]);
G2L["31"]["PaddingTop"] = UDim.new(0, 8);
G2L["31"]["PaddingRight"] = UDim.new(0, 8);
G2L["31"]["PaddingLeft"] = UDim.new(0, 8);
G2L["31"]["PaddingBottom"] = UDim.new(0, 8);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc
G2L["32"] = Instance.new("Folder", G2L["2d"]);
G2L["32"]["Name"] = [[Misc]];

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel
G2L["33"] = Instance.new("CanvasGroup", G2L["32"]);
G2L["33"]["ZIndex"] = 3;
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["33"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["33"]["Size"] = UDim2.new(0.4, 0, 0.98, 0); 
G2L["33"]["Position"] = UDim2.new(1, 0, 1, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[Panel]];
G2L["33"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel.UIListLayout
G2L["34"] = Instance.new("UIListLayout", G2L["33"]);
G2L["34"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["34"]["Padding"] = UDim.new(0, 4);
G2L["34"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["34"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["34"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel.UICorner
G2L["35"] = Instance.new("UICorner", G2L["33"]);
G2L["35"]["CornerRadius"] = UDim.new(0, 12);

-- [[ 1. DELETE BUTTON (Leftmost) ]]
G2L["DeleteBtn"] = Instance.new("TextButton", G2L["33"]);
G2L["DeleteBtn"]["BorderSizePixel"] = 0;
G2L["DeleteBtn"]["AutoButtonColor"] = false;
G2L["DeleteBtn"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["DeleteBtn"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["DeleteBtn"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["DeleteBtn"]["ZIndex"] = 4;
G2L["DeleteBtn"]["BackgroundTransparency"] = 1;
G2L["DeleteBtn"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["DeleteBtn"]["LayoutOrder"] = 1;
G2L["DeleteBtn"]["Text"] = [[]];
G2L["DeleteBtn"]["Name"] = [[Delete]];

G2L["DeleteIcon"] = Instance.new("ImageLabel", G2L["DeleteBtn"]);
G2L["DeleteIcon"]["ZIndex"] = 5;
G2L["DeleteIcon"]["BorderSizePixel"] = 0;
G2L["DeleteIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["DeleteIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["DeleteIcon"]["ImageColor3"] = Color3.fromRGB(255, 80, 80);
G2L["DeleteIcon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["DeleteIcon"]["Image"] = [[rbxassetid://87426080563358]];
G2L["DeleteIcon"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["DeleteIcon"]["BackgroundTransparency"] = 1;
G2L["DeleteIcon"]["Name"] = [[Icon]];
G2L["DeleteIcon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- [[ 2. SPACER (Separates Delete from others) ]]
G2L["Spacer"] = Instance.new("Frame", G2L["33"]);
G2L["Spacer"]["BorderSizePixel"] = 0;
G2L["Spacer"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["Spacer"]["Size"] = UDim2.new(0, 1, 0.6, 0); -- Visible vertical line
G2L["Spacer"]["LayoutOrder"] = 2;
G2L["Spacer"]["BackgroundTransparency"] = 0.5;
G2L["Spacer"]["Name"] = [[Spacer]];

-- [[ 3. AUTOEXEC BUTTON ]]
G2L["AutoExecBtn"] = Instance.new("TextButton", G2L["33"]);
G2L["AutoExecBtn"]["BorderSizePixel"] = 0;
G2L["AutoExecBtn"]["AutoButtonColor"] = false;
G2L["AutoExecBtn"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["AutoExecBtn"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["AutoExecBtn"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["AutoExecBtn"]["ZIndex"] = 4;
G2L["AutoExecBtn"]["BackgroundTransparency"] = 1;
G2L["AutoExecBtn"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["AutoExecBtn"]["LayoutOrder"] = 3;
G2L["AutoExecBtn"]["Text"] = [[]];
G2L["AutoExecBtn"]["Name"] = [[AutoExec]];

G2L["AutoExecIcon"] = Instance.new("ImageLabel", G2L["AutoExecBtn"]);
G2L["AutoExecIcon"]["ZIndex"] = 5;
G2L["AutoExecIcon"]["BorderSizePixel"] = 0;
G2L["AutoExecIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["AutoExecIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["AutoExecIcon"]["ImageColor3"] = Color3.fromRGB(200, 200, 200); -- Grey default
G2L["AutoExecIcon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["AutoExecIcon"]["Image"] = [[rbxassetid://11419714821]]; -- Lightning Icon
G2L["AutoExecIcon"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["AutoExecIcon"]["BackgroundTransparency"] = 1;
G2L["AutoExecIcon"]["Name"] = [[Icon]];
G2L["AutoExecIcon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- [[ 4. EDIT BUTTON ]]
G2L["EditBtn"] = Instance.new("TextButton", G2L["33"]);
G2L["EditBtn"]["BorderSizePixel"] = 0;
G2L["EditBtn"]["AutoButtonColor"] = false;
G2L["EditBtn"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["EditBtn"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["EditBtn"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["EditBtn"]["ZIndex"] = 4;
G2L["EditBtn"]["BackgroundTransparency"] = 1;
G2L["EditBtn"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["EditBtn"]["LayoutOrder"] = 4;
G2L["EditBtn"]["Text"] = [[]];
G2L["EditBtn"]["Name"] = [[Edit]];

G2L["EditIcon"] = Instance.new("ImageLabel", G2L["EditBtn"]);
G2L["EditIcon"]["ZIndex"] = 5;
G2L["EditIcon"]["BorderSizePixel"] = 0;
G2L["EditIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["EditIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["EditIcon"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
G2L["EditIcon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["EditIcon"]["Image"] = [[rbxassetid://129234394319564]]; -- Editor Icon
G2L["EditIcon"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["EditIcon"]["BackgroundTransparency"] = 1;
G2L["EditIcon"]["Name"] = [[Icon]];
G2L["EditIcon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- [[ 5. EXECUTE BUTTON ]]
G2L["ExecBtn"] = Instance.new("TextButton", G2L["33"]);
G2L["ExecBtn"]["BorderSizePixel"] = 0;
G2L["ExecBtn"]["AutoButtonColor"] = false;
G2L["ExecBtn"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ExecBtn"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ExecBtn"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ExecBtn"]["ZIndex"] = 4;
G2L["ExecBtn"]["BackgroundTransparency"] = 1;
G2L["ExecBtn"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["ExecBtn"]["LayoutOrder"] = 5;
G2L["ExecBtn"]["Text"] = [[]];
G2L["ExecBtn"]["Name"] = [[Execute]];

G2L["ExecIcon"] = Instance.new("ImageLabel", G2L["ExecBtn"]);
G2L["ExecIcon"]["ZIndex"] = 5;
G2L["ExecIcon"]["BorderSizePixel"] = 0;
G2L["ExecIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["ExecIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ExecIcon"]["ImageColor3"] = Color3.fromRGB(160, 85, 255); -- Purple
G2L["ExecIcon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ExecIcon"]["Image"] = [[rbxassetid://95804011254392]];
G2L["ExecIcon"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["ExecIcon"]["BackgroundTransparency"] = 1;
G2L["ExecIcon"]["Name"] = [[Icon]];
G2L["ExecIcon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel.UIScale
G2L["3c"] = Instance.new("UIScale", G2L["33"]);
G2L["3c"]["Scale"] = 0.9;

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel.UIPadding
G2L["3d"] = Instance.new("UIPadding", G2L["33"]);
G2L["3d"]["PaddingTop"] = UDim.new(0, 2);
G2L["3d"]["PaddingRight"] = UDim.new(0, 2);
G2L["3d"]["PaddingLeft"] = UDim.new(0, 2);
G2L["3d"]["PaddingBottom"] = UDim.new(0, 2);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Title
G2L["3e"] = Instance.new("TextBox", G2L["2d"]);
G2L["3e"]["Name"] = [[Title]];
G2L["3e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3e"]["ZIndex"] = 3;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["TextSize"] = 16;
G2L["3e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["3e"]["TextScaled"] = false;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3e"]["Selectable"] = false;
G2L["3e"]["ClearTextOnFocus"] = false;
G2L["3e"]["Size"] = UDim2.new(1, 0, 0.49391, 0);
G2L["3e"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[Script Name]];
G2L["3e"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Main
G2L["3f"] = Instance.new("Frame", G2L["1"]);
G2L["3f"]["Visible"] = false;
G2L["3f"]["Active"] = true;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(30, 20, 50); -- Dark purple
G2L["3f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Main]];
G2L["3f"]["BackgroundTransparency"] = 0.3; -- Semi-transparent

-- Rounded corners
local corner = Instance.new("UICorner", G2L["3f"]);
corner.CornerRadius = UDim.new(0, 20);

-- Gradient (top lighter, bottom darker - like the image)
local gradient = Instance.new("UIGradient", G2L["3f"]);
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 50, 120)),   -- Top: Lighter purple
    ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 25, 70))      -- Bottom: Darker purple
};
gradient.Rotation = 90; -- Vertical gradient

-- Glowing border (exactly like the image)
local borderStroke = Instance.new("UIStroke", G2L["3f"]);
borderStroke.Color = Color3.fromRGB(180, 100, 255); -- Purple glow
borderStroke.Thickness = 2;
borderStroke.Transparency = 0.3;
borderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;

-- Outer glow effect (soft purple aura around edges)
local outerGlow = Instance.new("ImageLabel", G2L["3f"]);
outerGlow.Name = "OuterGlow";
outerGlow.Size = UDim2.new(1, 100, 1, 100); -- Extends 50px beyond frame
outerGlow.Position = UDim2.new(0.5, 0, 0.5, 0);
outerGlow.AnchorPoint = Vector2.new(0.5, 0.5);
outerGlow.BackgroundTransparency = 1;
outerGlow.Image = "rbxassetid://5028857472"; -- Soft glow texture
outerGlow.ImageColor3 = Color3.fromRGB(160, 85, 255); -- Purple accent
outerGlow.ImageTransparency = 0.5;
outerGlow.ScaleType = Enum.ScaleType.Slice;
outerGlow.SliceCenter = Rect.new(24, 24, 276, 276);
outerGlow.ZIndex = -1; -- Behind frame

-- 🔴 ADD THIS - THICK VISIBLE GLOW EDGE (Same as key box)
local glowEdge = Instance.new("ImageLabel", G2L["3f"]);
glowEdge.Name = "GlowEdge";
glowEdge.BorderSizePixel = 0;
glowEdge.SliceCenter = Rect.new(65, 90, 335, 335);
glowEdge.SliceScale = 0.12;
glowEdge.ScaleType = Enum.ScaleType.Slice;
glowEdge.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
glowEdge.ImageColor3 = Color3.fromRGB(160, 85, 255); -- Purple glow
glowEdge.Image = "rbxassetid://99306270294516"; -- Thick glow texture
glowEdge.Size = UDim2.new(1, 40, 1, 40); -- Thick glow (extends 20px each side)
glowEdge.BorderColor3 = Color3.fromRGB(0, 0, 0);
glowEdge.BackgroundTransparency = 1;
glowEdge.ImageTransparency = 0.2; -- More visible (was 0.5)
glowEdge.Position = UDim2.new(0, -20, 0, -20); -- Offset for glow
glowEdge.ZIndex = -2; -- Behind outer glow

-- StarterGui.ScreenGui.Main.Title
G2L["40"] = Instance.new("Frame", G2L["3f"]);
G2L["40"]["ZIndex"] = 2;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["Size"] = UDim2.new(0.92, 0, 0.18651, 0);
G2L["40"]["Position"] = UDim2.new(0.12, 0, 0, 0); -- Moved to right (0.12) to avoid logo overlap
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Title]];
G2L["40"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Title.TextLabel
G2L["41"] = Instance.new("TextLabel", G2L["40"]);
G2L["41"]["TextWrapped"] = true;
G2L["41"]["ZIndex"] = 3;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["TextSize"] = 24; -- Larger Header
G2L["41"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["41"]["TextScaled"] = false;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal); -- Gotham Bold
G2L["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["BackgroundTransparency"] = 1;
G2L["41"]["Size"] = UDim2.new(0, 300, 0, 50);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Text"] = [[Hello, Username_1!]];


-- StarterGui.ScreenGui.Main.Title.TextLabel.UIPadding
G2L["42"] = Instance.new("UIPadding", G2L["41"]);
G2L["42"]["PaddingLeft"] = UDim.new(0, 0);


-- StarterGui.ScreenGui.Main.Title.UIListLayout
G2L["43"] = Instance.new("UIListLayout", G2L["40"]);
G2L["43"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["43"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["43"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Title.UIPadding
G2L["44"] = Instance.new("UIPadding", G2L["40"]);
G2L["44"]["PaddingTop"] = UDim.new(0, 30);
G2L["44"]["PaddingLeft"] = UDim.new(0, 0);


-- StarterGui.ScreenGui.Main.Title.TextLabel1
G2L["45"] = Instance.new("TextLabel", G2L["40"]);
G2L["45"]["TextWrapped"] = true;
G2L["45"]["ZIndex"] = 3;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextSize"] = 14;
G2L["45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["45"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["45"]["TextScaled"] = false;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["45"]["TextColor3"] = Color3.fromRGB(150, 150, 160); -- Lighter Grey
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["Size"] = UDim2.new(0, 975, 0, 22);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[What are you using today?]];
G2L["45"]["Name"] = [[TextLabel1]];
G2L["45"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Title.TextLabel1.UIPadding
G2L["46"] = Instance.new("UIPadding", G2L["45"]);
G2L["46"]["PaddingLeft"] = UDim.new(0, 0);


-- StarterGui.ScreenGui.Main.Leftside
-- [[ MOVED TO RIGHT SIDE ]]
G2L["47"] = Instance.new("Frame", G2L["3f"]);
G2L["47"]["Active"] = true;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["AnchorPoint"] = Vector2.new(1, 0.5); -- Right Anchor
G2L["47"]["Size"] = UDim2.new(0.1, 0, 0.79762, 0);
G2L["47"]["Position"] = UDim2.new(0.98, 0, 0.58383, 0); -- Right Position
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Name"] = [[Leftside]];
G2L["47"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Leftside.UIListLayout
G2L["48"] = Instance.new("UIListLayout", G2L["47"]);
G2L["48"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["48"]["Padding"] = UDim.new(0, 12);
G2L["48"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Leftside.UIPadding
G2L["49"] = Instance.new("UIPadding", G2L["47"]);
G2L["49"]["PaddingTop"] = UDim.new(0, 6);
G2L["49"]["PaddingRight"] = UDim.new(0.05, 0);
G2L["49"]["PaddingLeft"] = UDim.new(0.05, 0);


-- StarterGui.ScreenGui.Main.Leftside.Close
G2L["4a"] = Instance.new("TextButton", G2L["47"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255); -- Purple
G2L["4a"]["Selectable"] = false;
G2L["4a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4a"]["BackgroundTransparency"] = 0.2; -- Glowing effect
G2L["4a"]["Size"] = UDim2.new(0, 49, 0, 49);
G2L["4a"]["LayoutOrder"] = 1;
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[]];
G2L["4a"]["Name"] = [[Close]];
G2L["4a"]["Position"] = UDim2.new(0.5, 0, 0.92097, 0);


-- StarterGui.ScreenGui.Main.Leftside.Close.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(1, 0); -- Circle


-- StarterGui.ScreenGui.Main.Leftside.Close.ImageLabel
G2L["4c"] = Instance.new("ImageLabel", G2L["4a"]);
G2L["4c"]["ZIndex"] = 2;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4c"]["Image"] = [[rbxassetid://122962777517764]]; -- Close Icon
G2L["4c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Close.ImageLabel.UIScale
G2L["4d"] = Instance.new("UIScale", G2L["4c"]);
G2L["4d"]["Scale"] = 0.4;


-- StarterGui.ScreenGui.Main.Leftside.Close.ImageLabel1
G2L["4e"] = Instance.new("ImageLabel", G2L["4a"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 141, 255);
G2L["4e"]["ImageColor3"] = Color3.fromRGB(160, 85, 255); -- Purple Glow
G2L["4e"]["Image"] = [[rbxassetid://84915499533164]];
G2L["4e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Name"] = [[ImageLabel1]];


-- StarterGui.ScreenGui.Main.Leftside.Close.UIAspectRatioConstraint1
G2L["4f"] = Instance.new("UIAspectRatioConstraint", G2L["4a"]);
G2L["4f"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["4f"]["Name"] = [[UIAspectRatioConstraint1]];


-- StarterGui.ScreenGui.Main.Leftside.Nav
G2L["50"] = Instance.new("Frame", G2L["47"]);
G2L["50"]["Active"] = true;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25); -- Dark Nav Background
G2L["50"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["50"]["ClipsDescendants"] = true;
G2L["50"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["50"]["Size"] = UDim2.new(0, 49, 0, 239);
G2L["50"]["Position"] = UDim2.new(0.5, 0, 0.72015, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Name"] = [[Nav]];
G2L["50"]["SelectionGroup"] = true;


-- StarterGui.ScreenGui.Main.Leftside.Nav.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);
G2L["51"]["CornerRadius"] = UDim.new(1, 0); -- Pill Shape


-- StarterGui.ScreenGui.Main.Leftside.Nav.UIStroke
G2L["52"] = Instance.new("UIStroke", G2L["50"]);
G2L["52"]["Transparency"] = 0.8;
G2L["52"]["Thickness"] = 1;
G2L["52"]["Color"] = Color3.fromRGB(160, 85, 255);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1
G2L["53"] = Instance.new("Frame", G2L["50"]);
G2L["53"]["Active"] = true;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[Page1]];
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Editor
G2L["54"] = Instance.new("TextButton", G2L["53"]);
G2L["54"]["Active"] = false;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["Modal"] = true;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(26, 31, 36);
G2L["54"]["Selectable"] = false;
G2L["54"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["54"]["LayoutOrder"] = 2;
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Text"] = [[]];
G2L["54"]["Name"] = [[Editor]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Editor.SizeRatio
G2L["55"] = Instance.new("UIAspectRatioConstraint", G2L["54"]);
G2L["55"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["55"]["Name"] = [[SizeRatio]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Editor.UICorner
G2L["56"] = Instance.new("UICorner", G2L["54"]);
G2L["56"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Editor.Icon
G2L["57"] = Instance.new("ImageLabel", G2L["54"]);
G2L["57"]["ZIndex"] = 3;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["57"]["Image"] = [[rbxassetid://129234394319564]];
G2L["57"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["BackgroundTransparency"] = 1;
G2L["57"]["Name"] = [[Icon]];
G2L["57"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Editor.Icon.UIScale
G2L["58"] = Instance.new("UIScale", G2L["57"]);
G2L["58"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Home
G2L["59"] = Instance.new("TextButton", G2L["53"]);
G2L["59"]["Active"] = false;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["Modal"] = true;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(26, 31, 36);
G2L["59"]["Selectable"] = false;
G2L["59"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["59"]["LayoutOrder"] = 1;
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Text"] = [[]];
G2L["59"]["Name"] = [[Home]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Home.SizeRatio
G2L["5a"] = Instance.new("UIAspectRatioConstraint", G2L["59"]);
G2L["5a"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["5a"]["Name"] = [[SizeRatio]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Home.UICorner
G2L["5b"] = Instance.new("UICorner", G2L["59"]);
G2L["5b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Home.Icon
G2L["5c"] = Instance.new("ImageLabel", G2L["59"]);
G2L["5c"]["ZIndex"] = 3;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5c"]["Image"] = [[rbxassetid://83248619918383]];
G2L["5c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Name"] = [[Icon]];
G2L["5c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Home.Icon.UIScale
G2L["5d"] = Instance.new("UIScale", G2L["5c"]);
G2L["5d"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Saved
G2L["5e"] = Instance.new("TextButton", G2L["53"]);
G2L["5e"]["Active"] = false;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["Modal"] = true;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(26, 31, 36);
G2L["5e"]["Selectable"] = false;
G2L["5e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5e"]["LayoutOrder"] = 3;
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[]];
G2L["5e"]["Name"] = [[Saved]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Saved.SizeRatio
G2L["5f"] = Instance.new("UIAspectRatioConstraint", G2L["5e"]);
G2L["5f"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["5f"]["Name"] = [[SizeRatio]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Saved.UICorner
G2L["60"] = Instance.new("UICorner", G2L["5e"]);
G2L["60"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Saved.Icon
G2L["61"] = Instance.new("ImageLabel", G2L["5e"]);
G2L["61"]["ZIndex"] = 3;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["61"]["Image"] = [[rbxassetid://97513260941879]];
G2L["61"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Name"] = [[Icon]];
G2L["61"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Saved.Icon.UIScale
G2L["62"] = Instance.new("UIScale", G2L["61"]);
G2L["62"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Search
G2L["63"] = Instance.new("TextButton", G2L["53"]);
G2L["63"]["Active"] = false;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["Modal"] = true;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(26, 31, 36);
G2L["63"]["Selectable"] = false;
G2L["63"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["63"]["LayoutOrder"] = 4;
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Text"] = [[]];
G2L["63"]["Name"] = [[Search]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Search.SizeRatio
G2L["64"] = Instance.new("UIAspectRatioConstraint", G2L["63"]);
G2L["64"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["64"]["Name"] = [[SizeRatio]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Search.UICorner
G2L["65"] = Instance.new("UICorner", G2L["63"]);
G2L["65"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Search.Icon
G2L["66"] = Instance.new("ImageLabel", G2L["63"]);
G2L["66"]["ZIndex"] = 3;
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["66"]["Image"] = [[rbxassetid://127191938354199]];
G2L["66"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Name"] = [[Icon]];
G2L["66"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Search.Icon.UIScale
G2L["67"] = Instance.new("UIScale", G2L["66"]);
G2L["67"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Settings
G2L["68"] = Instance.new("TextButton", G2L["53"]);
G2L["68"]["Active"] = false;
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["Modal"] = true;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(26, 31, 36);
G2L["68"]["Selectable"] = false;
G2L["68"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["68"]["LayoutOrder"] = 5;
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[]];
G2L["68"]["Name"] = [[Settings]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Settings.UICorner
G2L["69"] = Instance.new("UICorner", G2L["68"]);
G2L["69"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Settings.Icon
G2L["6a"] = Instance.new("ImageLabel", G2L["68"]);
G2L["6a"]["ZIndex"] = 3;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6a"]["Image"] = [[rbxassetid://91653586592354]];
G2L["6a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Name"] = [[Icon]];
G2L["6a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Settings.Icon.UIScale
G2L["6b"] = Instance.new("UIScale", G2L["6a"]);
G2L["6b"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.Settings.SizeRatio
G2L["6c"] = Instance.new("UIAspectRatioConstraint", G2L["68"]);
G2L["6c"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["6c"]["Name"] = [[SizeRatio]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.UIListLayout1
G2L["6d"] = Instance.new("UIListLayout", G2L["53"]);
G2L["6d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["6d"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["6d"]["Padding"] = UDim.new(0, 8);
G2L["6d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["6d"]["Name"] = [[UIListLayout1]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page1.UIPadding1
G2L["6e"] = Instance.new("UIPadding", G2L["53"]);
G2L["6e"]["PaddingTop"] = UDim.new(0, 5);
G2L["6e"]["PaddingRight"] = UDim.new(0, 5);
G2L["6e"]["Name"] = [[UIPadding1]];
G2L["6e"]["PaddingLeft"] = UDim.new(0, 5);
G2L["6e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.Main.Leftside.Nav.UIPageLayout
G2L["6f"] = Instance.new("UIPageLayout", G2L["50"]);
G2L["6f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["6f"]["FillDirection"] = Enum.FillDirection.Vertical;
G2L["6f"]["Animated"] = false;
G2L["6f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2
G2L["70"] = Instance.new("Frame", G2L["50"]);
G2L["70"]["Visible"] = false;
G2L["70"]["Active"] = true;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Name"] = [[Page2]];
G2L["70"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.UIListLayout1
G2L["71"] = Instance.new("UIListLayout", G2L["70"]);
G2L["71"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["71"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["71"]["Padding"] = UDim.new(0, 8);
G2L["71"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["71"]["Name"] = [[UIListLayout1]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.UIPadding1
G2L["72"] = Instance.new("UIPadding", G2L["70"]);
G2L["72"]["PaddingTop"] = UDim.new(0, 5);
G2L["72"]["PaddingRight"] = UDim.new(0, 5);
G2L["72"]["Name"] = [[UIPadding1]];
G2L["72"]["PaddingLeft"] = UDim.new(0, 5);
G2L["72"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.Console
G2L["73"] = Instance.new("TextButton", G2L["70"]);
G2L["73"]["Active"] = false;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["Modal"] = true;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(26, 31, 36);
G2L["73"]["Selectable"] = false;
G2L["73"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["73"]["LayoutOrder"] = 2;
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Text"] = [[]];
G2L["73"]["Name"] = [[Console]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.Console.SizeRatio
G2L["74"] = Instance.new("UIAspectRatioConstraint", G2L["73"]);
G2L["74"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["74"]["Name"] = [[SizeRatio]];


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.Console.UICorner
G2L["75"] = Instance.new("UICorner", G2L["73"]);
G2L["75"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.Console.Icon
G2L["76"] = Instance.new("ImageLabel", G2L["73"]);
G2L["76"]["ZIndex"] = 3;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["76"]["Image"] = [[rbxassetid://129234394319564]];
G2L["76"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["Name"] = [[Icon]];
G2L["76"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.Page2.Console.Icon.UIScale
G2L["77"] = Instance.new("UIScale", G2L["76"]);
G2L["77"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Pages
G2L["78"] = Instance.new("Frame", G2L["3f"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["AnchorPoint"] = Vector2.new(0, 0.5); -- Left Anchor
G2L["78"]["Size"] = UDim2.new(0.85, 0, 0.76751, 0);
G2L["78"]["Position"] = UDim2.new(0.04, 0, 0.58408, 0); -- Left Position
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[Pages]];
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.UIPageLayout
G2L["79"] = Instance.new("UIPageLayout", G2L["78"]);
G2L["79"]["EasingStyle"] = Enum.EasingStyle.Cubic;
G2L["79"]["GamepadInputEnabled"] = false;
G2L["79"]["EasingDirection"] = Enum.EasingDirection.InOut;
G2L["79"]["FillDirection"] = Enum.FillDirection.Vertical;
G2L["79"]["TouchInputEnabled"] = false;
G2L["79"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["79"]["ScrollWheelInputEnabled"] = false;
G2L["79"]["Padding"] = UDim.new(0, 0);
G2L["79"]["TweenTime"] = 0.5;
G2L["79"]["Animated"] = true; -- 🔴 Make sure this is true
G2L["79"]["Circular"] = false; -- 🔴 Add this (prevents wrapping)


-- StarterGui.ScreenGui.Main.Pages.Editor
G2L["7a"] = Instance.new("Frame", G2L["78"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7a"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Name"] = [[Editor]];
G2L["7a"]["LayoutOrder"] = 0;
G2L["7a"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs
G2L["7b"] = Instance.new("ScrollingFrame", G2L["7a"]);
G2L["7b"]["Active"] = true;
G2L["7b"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["7b"]["Name"] = [[Tabs]];
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7b"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["7b"]["Size"] = UDim2.new(1, 0, 0.13027, 0);
G2L["7b"]["Position"] = UDim2.new(0.5, 0, 0.0854, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["ScrollBarThickness"] = 1;
G2L["7b"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.UIPadding
G2L["7c"] = Instance.new("UIPadding", G2L["7b"]);
G2L["7c"]["PaddingTop"] = UDim.new(0, 3);
G2L["7c"]["PaddingLeft"] = UDim.new(0, 3);
G2L["7c"]["PaddingBottom"] = UDim.new(0, 7);


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.UIListLayout
G2L["7d"] = Instance.new("UIListLayout", G2L["7b"]);
G2L["7d"]["Padding"] = UDim.new(0, 12);
G2L["7d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["7d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.Create
G2L["7e"] = Instance.new("TextButton", G2L["7b"]);
G2L["7e"]["TextWrapped"] = true;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextScaled"] = true;
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40);
G2L["7e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal);
G2L["7e"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["7e"]["LayoutOrder"] = 99;
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[+]];
G2L["7e"]["Name"] = [[Create]];
-- Attributes
G2L["7e"]:SetAttribute([[no]], [[yes]]);


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.Create.UIAspectRatioConstraint
G2L["7f"] = Instance.new("UIAspectRatioConstraint", G2L["7e"]);



-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.Create.UICorner
G2L["80"] = Instance.new("UICorner", G2L["7e"]);
G2L["80"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.Create.UIStroke
G2L["81"] = Instance.new("UIStroke", G2L["7e"]);
G2L["81"]["Transparency"] = 0.8;
G2L["81"]["Thickness"] = 1;
G2L["81"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["81"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- [[ 1. EDITOR SCROLLING FRAME (THE MAIN BOX) ]] --
G2L["82"] = Instance.new("ScrollingFrame", G2L["7a"]);
G2L["82"]["Name"] = [[Editor]];
G2L["82"]["Active"] = true;
G2L["82"]["ZIndex"] = 1; 
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundTransparency"] = 0.6;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["82"]["Size"] = UDim2.new(1, 0, 0.85, 0); 
G2L["82"]["Position"] = UDim2.new(0, 0, 0.15, 0); 
G2L["82"]["CanvasSize"] = UDim2.new(0, 0, 0, 0); 
G2L["82"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY; 
G2L["82"]["ScrollBarThickness"] = 15; -- 🔴 DELTA THICKNESS
G2L["82"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["ScrollingDirection"] = Enum.ScrollingDirection.XY;
G2L["82"]["ClipsDescendants"] = true; -- 🔴 THE "WALL" THAT STOPS BLEEDING

-- [[ 2. CONTAINER DECORATION ]] --
G2L["86"] = Instance.new("UICorner", G2L["82"]);
G2L["86"]["CornerRadius"] = UDim.new(0, 16);

G2L["88"] = Instance.new("UIStroke", G2L["82"]);
G2L["88"]["Transparency"] = 0.8;
G2L["88"]["Thickness"] = 1;
G2L["88"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["88"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- [[ 3. THE INPUT BOX (DELTA SETTINGS) ]] --
G2L["83"] = Instance.new("TextBox", G2L["82"]);
G2L["83"]["Name"] = [[Input]];
G2L["83"]["ZIndex"] = 3; 
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 14;
G2L["83"]["TextColor3"] = Color3.fromRGB(235, 235, 235);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["83"]["MultiLine"] = true;
G2L["83"]["ClearTextOnFocus"] = false;
G2L["83"]["RichText"] = true; 
G2L["83"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["83"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["83"]["TextWrapped"] = false; -- 🔴 DELTA: NO WRAPPING
G2L["83"]["Position"] = UDim2.new(0, 60, 0, 0); 
G2L["83"]["Size"] = UDim2.new(1, -70, 1, 0); -- Fills width minus the scrollbar
G2L["83"]["AutomaticSize"] = Enum.AutomaticSize.XY; 
G2L["83"]["Text"] = [[]];

-- [[ 4. LINE NUMBERS ]] --
G2L["87"] = Instance.new("TextLabel", G2L["82"]);
G2L["87"]["Name"] = [[Lines]];
G2L["87"]["ZIndex"] = 2; 
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["87"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25); 
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["87"]["TextColor3"] = Color3.fromRGB(80, 80, 90);
G2L["87"]["BackgroundTransparency"] = 1; -- Transparent so it doesn't look like a block
G2L["87"]["Position"] = UDim2.new(0, 0, 0, 0); 
G2L["87"]["Size"] = UDim2.new(0, 50, 1, 0); -- Matches container height
G2L["87"]["Text"] = [[1]];

-- [[ RESTORED DESIGN: PURPLE BORDER ]] --
G2L["88"] = Instance.new("UIStroke", G2L["82"]);
G2L["88"]["Transparency"] = 0.8;
G2L["88"]["Thickness"] = 1;
G2L["88"]["Color"] = Color3.fromRGB(160, 85, 255); -- Purple Border
G2L["88"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- [[ 5. PANEL (BUTTONS) - HIGH ZINDEX ]] --
G2L["89"] = Instance.new("CanvasGroup", G2L["7a"]);
G2L["89"]["ZIndex"] = 10; -- High ZIndex ensures buttons work
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["89"]["BackgroundTransparency"] = 0; -- 🔴 Change from 0.3 to 0 (Solid)
G2L["89"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["89"]["Size"] = UDim2.new(0.42127, 0, 0.15, 0);
G2L["89"]["Position"] = UDim2.new(0.99, 0, 0.98, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Name"] = [[Panel]];

G2L["8a"] = Instance.new("UIListLayout", G2L["89"]);
G2L["8a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["8a"]["Padding"] = UDim.new(0, 6);
G2L["8a"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["8a"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["8a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;  -- ✅ ADD THIS LINE

G2L["8b"] = Instance.new("UICorner", G2L["89"]);
G2L["8b"]["CornerRadius"] = UDim.new(0, 16);



G2L["8c"] = Instance.new("Frame", G2L["89"]);
G2L["8c"]["ZIndex"] = 11;
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["8c"]["Size"] = UDim2.new(0, 1, 0.625, 0);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Name"] = [[Spacer1]];
-- SPACER 1 (already exists)
G2L["8c"]["LayoutOrder"] = -3;
G2L["8c"]["BackgroundTransparency"] = 0.5;

G2L["8d"] = Instance.new("UICorner", G2L["8c"]);
G2L["8d"]["CornerRadius"] = UDim.new(1, 0);

G2L["8e"] = Instance.new("Frame", G2L["89"]);
G2L["8e"]["ZIndex"] = 11;
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["8e"]["Size"] = UDim2.new(0, 1, 0.625, 0);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Name"] = [[Spacer2]];
-- SPACER 2 (already exists)
G2L["8e"]["LayoutOrder"] = 1;
G2L["8e"]["BackgroundTransparency"] = 0.5;

G2L["8f"] = Instance.new("UICorner", G2L["8e"]);
G2L["8f"]["CornerRadius"] = UDim.new(1, 0);

G2L["90"] = Instance.new("TextButton", G2L["89"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["AutoButtonColor"] = false;
G2L["90"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["90"]["ZIndex"] = 11;
G2L["90"]["BackgroundTransparency"] = 1;
G2L["90"]["Size"] = UDim2.new(0, 34, 0, 34);
-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Rename Button
G2L["90"]["LayoutOrder"] = -2;  -- Rename
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Text"] = [[]];
G2L["90"]["Name"] = [[Rename]];

G2L["91"] = Instance.new("ImageLabel", G2L["90"]);
G2L["91"]["ZIndex"] = 12;
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
G2L["91"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["91"]["Image"] = [[rbxassetid://80861536658698]];
G2L["91"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["BackgroundTransparency"] = 1;
G2L["91"]["Name"] = [[Icon]];
G2L["91"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["92"] = Instance.new("TextButton", G2L["89"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["AutoButtonColor"] = false;
G2L["92"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["92"]["ZIndex"] = 11;
G2L["92"]["BackgroundTransparency"] = 1;
G2L["92"]["Size"] = UDim2.new(0, 34, 0, 34);
-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Paste Button
G2L["92"]["LayoutOrder"] = -1;  -- Paste
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Text"] = [[]];
G2L["92"]["Name"] = [[Paste]];

G2L["93"] = Instance.new("ImageLabel", G2L["92"]);
G2L["93"]["ZIndex"] = 12;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
G2L["93"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["93"]["Image"] = [[rbxassetid://88661060655687]];
G2L["93"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["BackgroundTransparency"] = 1;
G2L["93"]["Name"] = [[Icon]];
G2L["93"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["94"] = Instance.new("TextButton", G2L["89"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["AutoButtonColor"] = false;
G2L["94"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["94"]["ZIndex"] = 11;
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["Size"] = UDim2.new(0, 34, 0, 34);
-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.ExecuteClipboard Button
G2L["94"]["LayoutOrder"] = 0;   -- ExecuteClipboard
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Text"] = [[]];
G2L["94"]["Name"] = [[ExecuteClipboard]];

G2L["95"] = Instance.new("ImageLabel", G2L["94"]);
G2L["95"]["ZIndex"] = 12;
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
G2L["95"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["95"]["Image"] = [[rbxassetid://74812558983299]];
G2L["95"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["BackgroundTransparency"] = 1;
G2L["95"]["Name"] = [[Icon]];
G2L["95"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["96"] = Instance.new("TextButton", G2L["89"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["AutoButtonColor"] = false;
G2L["96"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["ZIndex"] = 11;
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Size"] = UDim2.new(0, 34, 0, 34);
-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Execute Button (RIGHTMOST)
G2L["96"]["LayoutOrder"] = 2;   -- Execute (rightmost)
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Text"] = [[]];
G2L["96"]["Name"] = [[Execute]];

G2L["97"] = Instance.new("ImageLabel", G2L["96"]);
G2L["97"]["ZIndex"] = 12;
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["ImageColor3"] = Color3.fromRGB(160, 85, 255); 
G2L["97"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["97"]["Image"] = [[rbxassetid://95804011254392]];
G2L["97"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["BackgroundTransparency"] = 1;
G2L["97"]["Name"] = [[Icon]];
G2L["97"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["98"] = Instance.new("TextButton", G2L["89"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["AutoButtonColor"] = false;
G2L["98"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["ZIndex"] = 11;
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0, 34, 0, 34);
-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Save/Bookmark Button (LEFTMOST)
G2L["98"]["LayoutOrder"] = -5;  -- Save (leftmost)
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[]];
G2L["98"]["Name"] = [[Save]];

G2L["99"] = Instance.new("ImageLabel", G2L["98"]);
G2L["99"]["ZIndex"] = 12;
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["ImageColor3"] = Color3.fromRGB(200, 200, 200);
G2L["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["99"]["Image"] = [[rbxassetid://81882572588470]];
G2L["99"]["Size"] = UDim2.new(0.645, 0, 0.645, 0);
G2L["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["99"]["BackgroundTransparency"] = 1;
G2L["99"]["Name"] = [[Icon]];
G2L["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

G2L["9a"] = Instance.new("TextButton", G2L["89"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["AutoButtonColor"] = false;
G2L["9a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["ZIndex"] = 11;
G2L["9a"]["BackgroundTransparency"] = 1;
G2L["9a"]["Size"] = UDim2.new(0, 34, 0, 34);
-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Delete Button 
G2L["9a"]["LayoutOrder"] = -4;  -- Delete
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[]];
G2L["9a"]["Name"] = [[Delete]];

G2L["9b"] = Instance.new("ImageLabel", G2L["9a"]);
G2L["9b"]["ZIndex"] = 12;
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["ImageColor3"] = Color3.fromRGB(255, 80, 80);
G2L["9b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9b"]["Image"] = [[rbxassetid://98690572665832]];
G2L["9b"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["BackgroundTransparency"] = 1;
G2L["9b"]["Name"] = [[Icon]];
G2L["9b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.ScreenGui.Main.Pages.Search
G2L["9c"] = Instance.new("Frame", G2L["78"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Name"] = [[Search]];
G2L["9c"]["LayoutOrder"] = 1;
G2L["9c"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Search.UIListLayout
G2L["9d"] = Instance.new("UIListLayout", G2L["9c"]);
G2L["9d"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["9d"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["9d"]["Padding"] = UDim.new(0, 7);
G2L["9d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Search.Scripts
G2L["9e"] = Instance.new("ScrollingFrame", G2L["9c"]);
G2L["9e"]["Active"] = true;
G2L["9e"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["9e"]["Name"] = [[Scripts]];
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["9e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["9e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9e"]["Position"] = UDim2.new(0.00157, 0, 0.08058, 0);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["ScrollBarThickness"] = 1;
G2L["9e"]["BackgroundTransparency"] = 0.6;

-- StarterGui.ScreenGui.Main.Pages.Search.Scripts.UICorner1
G2L["9f"] = Instance.new("UICorner", G2L["9e"]);
G2L["9f"]["Name"] = [[UICorner1]];
G2L["9f"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Main.Pages.Search.Scripts.UIStroke1
G2L["a0"] = Instance.new("UIStroke", G2L["9e"]);
G2L["a0"]["Transparency"] = 0.8;
G2L["a0"]["Thickness"] = 1;
G2L["a0"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["a0"]["Name"] = [[UIStroke1]];


-- StarterGui.ScreenGui.Main.Pages.Search.Scripts.UIListLayout
G2L["a1"] = Instance.new("UIListLayout", G2L["9e"]);
G2L["a1"]["Padding"] = UDim.new(0, 10);
G2L["a1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Search.Scripts.UIPadding
G2L["a2"] = Instance.new("UIPadding", G2L["9e"]);
G2L["a2"]["PaddingTop"] = UDim.new(0, 12);
G2L["a2"]["PaddingRight"] = UDim.new(0, 14);
G2L["a2"]["PaddingLeft"] = UDim.new(0, 14);
G2L["a2"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Search.TextBox
G2L["a3"] = Instance.new("TextBox", G2L["9c"]);
G2L["a3"]["PlaceholderColor3"] = Color3.fromRGB(100, 100, 110);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["TextSize"] = 14;
G2L["a3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 35);
G2L["a3"]["FontFace"] = Font.new([[rbxassetid://16658246179]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a3"]["ClearTextOnFocus"] = false;
G2L["a3"]["PlaceholderText"] = [[Search]];
G2L["a3"]["Size"] = UDim2.new(0, 640, 0, 45);
G2L["a3"]["Position"] = UDim2.new(0, 0, 0.00368, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Text"] = [[]];
G2L["a3"]["LayoutOrder"] = -1;

-- 🟢 ADD THIS LINE
local SearchBox = G2L["a3"]  -- Create reference

-- 🟢 ADD CLEAR ICON INSIDE SEARCH BOX
local ClearIcon = Instance.new("TextButton", G2L["a3"])
ClearIcon.Name = "ClearIcon"
ClearIcon.Text = "✖"
ClearIcon.BackgroundTransparency = 1
ClearIcon.TextColor3 = Color3.fromRGB(150, 150, 150)
ClearIcon.Size = UDim2.new(0, 30, 1, 0)
ClearIcon.Position = UDim2.new(1, -35, 0, 0)
ClearIcon.Font = Enum.Font.GothamBold
ClearIcon.TextSize = 16
ClearIcon.Visible = false -- Hidden by default
ClearIcon.ZIndex = G2L["a3"].ZIndex + 1

-- Show/hide clear icon based on text
G2L["a3"]:GetPropertyChangedSignal("Text"):Connect(function()
	ClearIcon.Visible = (#G2L["a3"].Text > 0)
end)

-- Clear search when clicked
ClearIcon.MouseButton1Click:Connect(function()
	G2L["a3"].Text = ""
	Data.Search.CurrentFilter = "All"
	detectGame()
	updateUI()
	Update()
end)

-- StarterGui.ScreenGui.Main.Pages.Search.TextBox.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a3"]);
G2L["a4"]["CornerRadius"] = UDim.new(1, 0); -- Pill Shape


-- StarterGui.ScreenGui.Main.Pages.Search.TextBox.UIStroke1
G2L["a5"] = Instance.new("UIStroke", G2L["a3"]);
G2L["a5"]["Transparency"] = 0.8;
G2L["a5"]["Thickness"] = 1;
G2L["a5"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["a5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["a5"]["Name"] = [[UIStroke1]];


-- StarterGui.ScreenGui.Main.Pages.Search.UIPadding
G2L["a6"] = Instance.new("UIPadding", G2L["9c"]);
G2L["a6"]["PaddingRight"] = UDim.new(0, 2);
G2L["a6"]["PaddingLeft"] = UDim.new(0, 2);


-- StarterGui.ScreenGui.Main.Pages.Saved
G2L["a7"] = Instance.new("Frame", G2L["78"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[Saved]];
G2L["a7"]["LayoutOrder"] = 2;
G2L["a7"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Saved.UIListLayout
G2L["a8"] = Instance.new("UIListLayout", G2L["a7"]);
G2L["a8"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["a8"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["a8"]["Padding"] = UDim.new(0, 7);
G2L["a8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts
G2L["a9"] = Instance.new("ScrollingFrame", G2L["a7"]);
G2L["a9"]["Active"] = true;
G2L["a9"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["a9"]["Name"] = [[Scripts]];
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["a9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["a9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a9"]["Position"] = UDim2.new(0.00157, 0, 0.08058, 0);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["ScrollBarThickness"] = 1;
G2L["a9"]["BackgroundTransparency"] = 0.6;

-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts.UICorner1
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["Name"] = [[UICorner1]];
G2L["aa"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts.UIStroke1
G2L["ab"] = Instance.new("UIStroke", G2L["a9"]);
G2L["ab"]["Transparency"] = 0.8;
G2L["ab"]["Thickness"] = 1;
G2L["ab"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["ab"]["Name"] = [[UIStroke1]];


-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts.UIListLayout
G2L["ac"] = Instance.new("UIListLayout", G2L["a9"]);
G2L["ac"]["Padding"] = UDim.new(0, 10);
G2L["ac"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts.UIPadding
G2L["ad"] = Instance.new("UIPadding", G2L["a9"]);
G2L["ad"]["PaddingTop"] = UDim.new(0, 12);
G2L["ad"]["PaddingRight"] = UDim.new(0, 14);
G2L["ad"]["PaddingLeft"] = UDim.new(0, 14);
G2L["ad"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Saved.TextBox
G2L["ae"] = Instance.new("TextBox", G2L["a7"]);
G2L["ae"]["PlaceholderColor3"] = Color3.fromRGB(100, 100, 110);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["TextSize"] = 14;
G2L["ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 35);
G2L["ae"]["FontFace"] = Font.new([[rbxassetid://16658246179]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ae"]["ClearTextOnFocus"] = false;
G2L["ae"]["PlaceholderText"] = [[Search]];
G2L["ae"]["Size"] = UDim2.new(0, 640, 0, 45);
G2L["ae"]["Position"] = UDim2.new(0, 0, 0.00368, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Text"] = [[]];
G2L["ae"]["LayoutOrder"] = -1;


-- StarterGui.ScreenGui.Main.Pages.Saved.TextBox.UICorner
G2L["af"] = Instance.new("UICorner", G2L["ae"]);
G2L["af"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Saved.TextBox.UIStroke1
G2L["b0"] = Instance.new("UIStroke", G2L["ae"]);
G2L["b0"]["Transparency"] = 0.8;
G2L["b0"]["Thickness"] = 1;
G2L["b0"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["b0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b0"]["Name"] = [[UIStroke1]];


-- StarterGui.ScreenGui.Main.Pages.Saved.UIPadding
G2L["b1"] = Instance.new("UIPadding", G2L["a7"]);
G2L["b1"]["PaddingRight"] = UDim.new(0, 2);
G2L["b1"]["PaddingLeft"] = UDim.new(0, 2);


-- StarterGui.ScreenGui.Main.Pages.UIPadding
G2L["b2"] = Instance.new("UIPadding", G2L["78"]);
G2L["b2"]["PaddingRight"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Home
G2L["b3"] = Instance.new("Frame", G2L["78"]);
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b3"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Name"] = [[Home]];
G2L["b3"]["LayoutOrder"] = -1;
G2L["b3"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Home.UIListLayout
G2L["b4"] = Instance.new("UIListLayout", G2L["b3"]);
G2L["b4"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["b4"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["b4"]["Padding"] = UDim.new(0, 12);
G2L["b4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Home.Features
G2L["b5"] = Instance.new("Frame", G2L["b3"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["b5"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[Features]];
G2L["b5"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript
G2L["b6"] = Instance.new("CanvasGroup", G2L["b5"]);
G2L["b6"]["Visible"] = false;
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["b6"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["b6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Name"] = [[RScript]];


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.UICorner
G2L["b7"] = Instance.new("UICorner", G2L["b6"]);
G2L["b7"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.UIStroke
G2L["b8"] = Instance.new("UIStroke", G2L["b6"]);
G2L["b8"]["Transparency"] = 0.8;
G2L["b8"]["Thickness"] = 1;
G2L["b8"]["Color"] = Color3.fromRGB(160, 85, 255);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title
G2L["b9"] = Instance.new("Frame", G2L["b6"]);
G2L["b9"]["ZIndex"] = 2;
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["Size"] = UDim2.new(1, 0, 0.19242, 0);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Name"] = [[Title]];
G2L["b9"]["LayoutOrder"] = -1;
G2L["b9"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title.TextLabel
G2L["ba"] = Instance.new("TextLabel", G2L["b9"]);
G2L["ba"]["TextWrapped"] = true;
G2L["ba"]["ZIndex"] = 3;
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["TextSize"] = 16;
G2L["ba"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ba"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["ba"]["TextScaled"] = true;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ba"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["BackgroundTransparency"] = 1;
G2L["ba"]["Size"] = UDim2.new(1, 0, 1.61594, 0);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Text"] = [[Recently scripts]];
G2L["ba"]["Position"] = UDim2.new(0, 0, -0, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title.TextLabel.UIPadding
G2L["bb"] = Instance.new("UIPadding", G2L["ba"]);
G2L["bb"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title.UIListLayout
G2L["bc"] = Instance.new("UIListLayout", G2L["b9"]);
G2L["bc"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["bc"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["bc"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title.TextLabel1
G2L["bd"] = Instance.new("TextLabel", G2L["b9"]);
G2L["bd"]["TextWrapped"] = true;
G2L["bd"]["ZIndex"] = 3;
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["TextSize"] = 14;
G2L["bd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bd"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["bd"]["TextScaled"] = true;
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Light, Enum.FontStyle.Normal);
G2L["bd"]["TextColor3"] = Color3.fromRGB(145, 145, 145);
G2L["bd"]["BackgroundTransparency"] = 1;
G2L["bd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Text"] = [[See your activity scripts!]];
G2L["bd"]["Name"] = [[TextLabel1]];
G2L["bd"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title.TextLabel1.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bd"]);
G2L["be"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Title.UIPadding
G2L["bf"] = Instance.new("UIPadding", G2L["b9"]);
G2L["bf"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.UIListLayout
G2L["c0"] = Instance.new("UIListLayout", G2L["b6"]);
G2L["c0"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["c0"]["Padding"] = UDim.new(0, 12);
G2L["c0"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Misc
G2L["c1"] = Instance.new("Folder", G2L["b6"]);
G2L["c1"]["Name"] = [[Misc]];


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Misc.Fade
G2L["c2"] = Instance.new("Frame", G2L["c1"]);
G2L["c2"]["ZIndex"] = 2;
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["c2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Name"] = [[Fade]];


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Misc.Fade.UIGradient
G2L["c3"] = Instance.new("UIGradient", G2L["c2"]);
G2L["c3"]["Rotation"] = 270;
G2L["c3"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.394, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Misc.Fade.UICorner
G2L["c4"] = Instance.new("UICorner", G2L["c2"]);
G2L["c4"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists
G2L["c5"] = Instance.new("ScrollingFrame", G2L["b6"]);
G2L["c5"]["Active"] = true;
G2L["c5"]["ZIndex"] = 2;
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["c5"]["Name"] = [[Lists]];
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["c5"]["Size"] = UDim2.new(1, 0, 0.7, 0);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["ScrollBarThickness"] = 2;
G2L["c5"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists.A
G2L["c6"] = Instance.new("TextLabel", G2L["c5"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["TextSize"] = 14;
G2L["c6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40);
G2L["c6"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["Size"] = UDim2.new(0.9, 0, 0, 50);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["Text"] = [[i]];
G2L["c6"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["c6"]["Name"] = [[A]];
G2L["c6"]["Position"] = UDim2.new(0.05, 0, 0.25229, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists.A.UICorner
G2L["c7"] = Instance.new("UICorner", G2L["c6"]);
G2L["c7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists.A.UIStroke
G2L["c8"] = Instance.new("UIStroke", G2L["c6"]);
G2L["c8"]["Transparency"] = 0.9;
G2L["c8"]["Thickness"] = 1;
G2L["c8"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["c8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists.A.UIPadding
G2L["c9"] = Instance.new("UIPadding", G2L["c6"]);
G2L["c9"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists.UIListLayout
G2L["ca"] = Instance.new("UIListLayout", G2L["c5"]);
G2L["ca"]["Padding"] = UDim.new(0, 12);
G2L["ca"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Lists.UIPadding
G2L["cb"] = Instance.new("UIPadding", G2L["c5"]);
G2L["cb"]["PaddingTop"] = UDim.new(0, 5);
G2L["cb"]["PaddingRight"] = UDim.new(0, 12);
G2L["cb"]["PaddingLeft"] = UDim.new(0, 12);
G2L["cb"]["PaddingBottom"] = UDim.new(0, 24);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.UIPageLayout
G2L["cc"] = Instance.new("UIPageLayout", G2L["b5"]);
G2L["cc"]["Animated"] = false;
G2L["cc"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["cc"]["Padding"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.UIPadding
G2L["cd"] = Instance.new("UIPadding", G2L["b3"]);
G2L["cd"]["PaddingTop"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Home.Key
G2L["ce"] = Instance.new("Frame", G2L["b3"]);
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["ce"]["Size"] = UDim2.new(0, 628, 0, -25);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Name"] = [[Key]];
G2L["ce"]["LayoutOrder"] = -1;


-- StarterGui.ScreenGui.Main.Pages.Home.Key.UIListLayout
G2L["cf"] = Instance.new("UIListLayout", G2L["ce"]);
G2L["cf"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["cf"]["Wraps"] = true;
G2L["cf"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["cf"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["cf"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.Main.Pages.Home.Key.KeyText
G2L["d0"] = Instance.new("TextLabel", G2L["ce"]);
G2L["d0"]["TextWrapped"] = true;
G2L["d0"]["ZIndex"] = 3;
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["TextSize"] = 14;
G2L["d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d0"]["TextScaled"] = true;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["FontFace"] = Font.new([[rbxassetid://16658237174]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["d0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["BackgroundTransparency"] = 1;
G2L["d0"]["RichText"] = true;
G2L["d0"]["Size"] = UDim2.new(1, 0, 0.90405, 0);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["Text"] = [[Your key is currently <font color="rgb(160, 85, 255)">active</font> and will expire on...]];
G2L["d0"]["Name"] = [[KeyText]];
G2L["d0"]["Position"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.KeyText.UIPadding
G2L["d1"] = Instance.new("UIPadding", G2L["d0"]);
G2L["d1"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.UIPadding
G2L["d2"] = Instance.new("UIPadding", G2L["ce"]);
G2L["d2"]["PaddingTop"] = UDim.new(0, 12);
G2L["d2"]["PaddingRight"] = UDim.new(0, 12);
G2L["d2"]["PaddingLeft"] = UDim.new(0, 12);
G2L["d2"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.UICorner
G2L["d3"] = Instance.new("UICorner", G2L["ce"]);
G2L["d3"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.UIStroke
G2L["d4"] = Instance.new("UIStroke", G2L["ce"]);
G2L["d4"]["Thickness"] = 1;
G2L["d4"]["Color"] = Color3.fromRGB(160, 85, 255);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.Duration
G2L["d5"] = Instance.new("TextLabel", G2L["ce"]);
G2L["d5"]["TextWrapped"] = true;
G2L["d5"]["ZIndex"] = 3;
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["TextSize"] = 14;
G2L["d5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d5"]["TextScaled"] = true;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["FontFace"] = Font.new([[rbxassetid://16658246179]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d5"]["TextColor3"] = Color3.fromRGB(150, 150, 160);
G2L["d5"]["BackgroundTransparency"] = 1;
G2L["d5"]["Size"] = UDim2.new(1, 0, 0.36102, 0);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["Text"] = [[On 1/1/2000 At 00:00]];
G2L["d5"]["Name"] = [[Duration]];
G2L["d5"]["Position"] = UDim2.new(0, 0, 0.33333, 0);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.Duration.UIPadding
G2L["d6"] = Instance.new("UIPadding", G2L["d5"]);
G2L["d6"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.Folder
G2L["d7"] = Instance.new("Folder", G2L["ce"]);



-- StarterGui.ScreenGui.Main.Pages.Home.Key.Folder.Background
G2L["d8"] = Instance.new("ImageLabel", G2L["d7"]);
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["SliceCenter"] = Rect.new(65, 90, 335, 335);
G2L["d8"]["SliceScale"] = 0.12;
G2L["d8"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["ImageColor3"] = Color3.fromRGB(160, 85, 255);
G2L["d8"]["Image"] = [[rbxassetid://99306270294516]];
G2L["d8"]["Size"] = UDim2.new(1, 24, 1, 24);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["BackgroundTransparency"] = 1;
G2L["d8"]["Name"] = [[Background]];
G2L["d8"]["Position"] = UDim2.new(0, -12, 0, -12);


-- StarterGui.ScreenGui.Main.Pages.Settings
G2L["d9"] = Instance.new("Frame", G2L["78"]);
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Name"] = [[Settings]];
G2L["d9"]["LayoutOrder"] = 3;
G2L["d9"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Settings.UIListLayout
G2L["da"] = Instance.new("UIListLayout", G2L["d9"]);
G2L["da"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["da"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["da"]["Padding"] = UDim.new(0, 7);
G2L["da"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts
G2L["db"] = Instance.new("ScrollingFrame", G2L["d9"]);
G2L["db"]["Active"] = true;
G2L["db"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["db"]["BorderSizePixel"] = 0;
G2L["db"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["db"]["Name"] = [[Scripts]];
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 25);
G2L["db"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["db"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["db"]["Position"] = UDim2.new(0.00157, 0, 0.08058, 0);
G2L["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["db"]["ScrollBarThickness"] = 1;
G2L["db"]["BackgroundTransparency"] = 0.6;

-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UICorner1
G2L["dc"] = Instance.new("UICorner", G2L["db"]);
G2L["dc"]["Name"] = [[UICorner1]];
G2L["dc"]["CornerRadius"] = UDim.new(0, 24);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UIStroke1
G2L["dd"] = Instance.new("UIStroke", G2L["db"]);
G2L["dd"]["Transparency"] = 0.8;
G2L["dd"]["Thickness"] = 1;
G2L["dd"]["Color"] = Color3.fromRGB(160, 85, 255);
G2L["dd"]["Name"] = [[UIStroke1]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UIListLayout
G2L["de"] = Instance.new("UIListLayout", G2L["db"]);
G2L["de"]["Padding"] = UDim.new(0, 10);
G2L["de"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UIPadding
G2L["df"] = Instance.new("UIPadding", G2L["db"]);
G2L["df"]["PaddingTop"] = UDim.new(0, 12);
G2L["df"]["PaddingRight"] = UDim.new(0, 14);
G2L["df"]["PaddingLeft"] = UDim.new(0, 14);
G2L["df"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK
G2L["e0"] = Instance.new("CanvasGroup", G2L["db"]);
G2L["e0"]["Visible"] = false;
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40);
G2L["e0"]["Size"] = UDim2.new(1, 0, 0, 48);
G2L["e0"]["Position"] = UDim2.new(0, 0, -0.5793, 0);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Name"] = [[AFK]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.UICorner
G2L["e1"] = Instance.new("UICorner", G2L["e0"]);
G2L["e1"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.UIListLayout
G2L["e2"] = Instance.new("UIListLayout", G2L["e0"]);
G2L["e2"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["e2"]["Wraps"] = true;
G2L["e2"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["e2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.UIStroke
G2L["e3"] = Instance.new("UIStroke", G2L["e0"]);
G2L["e3"]["Transparency"] = 0.9;
G2L["e3"]["Thickness"] = 1;
G2L["e3"]["Color"] = Color3.fromRGB(160, 85, 255);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.UIPadding
G2L["e4"] = Instance.new("UIPadding", G2L["e0"]);
G2L["e4"]["PaddingTop"] = UDim.new(0, 6);
G2L["e4"]["PaddingRight"] = UDim.new(0, 12);
G2L["e4"]["PaddingLeft"] = UDim.new(0, 12);
G2L["e4"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Title
G2L["e5"] = Instance.new("TextLabel", G2L["e0"]);
G2L["e5"]["TextWrapped"] = true;
G2L["e5"]["Active"] = true;
G2L["e5"]["ZIndex"] = 3;
G2L["e5"]["BorderSizePixel"] = 0;
G2L["e5"]["TextSize"] = 14;
G2L["e5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e5"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["e5"]["TextScaled"] = true;
G2L["e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e5"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e5"]["BackgroundTransparency"] = 1;
G2L["e5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e5"]["Text"] = [[Anti AFK]];
G2L["e5"]["Name"] = [[Title]];
G2L["e5"]["Position"] = UDim2.new(0, 0, -0, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main
G2L["e6"] = Instance.new("CanvasGroup", G2L["e0"]);
G2L["e6"]["Active"] = true;
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["e6"]["Selectable"] = true;
G2L["e6"]["Size"] = UDim2.new(0.09939, 0, 0.75553, 0);
G2L["e6"]["Position"] = UDim2.new(0.90061, 0, 0.12223, 0);
G2L["e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e6"]["Name"] = [[Main]];
G2L["e6"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.UICorner
G2L["e7"] = Instance.new("UICorner", G2L["e6"]);
G2L["e7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.Button
G2L["e8"] = Instance.new("TextButton", G2L["e6"]);
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["TextSize"] = 14;
G2L["e8"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["e8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["Text"] = [[]];
G2L["e8"]["Name"] = [[Button]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.Button.UICorner
G2L["e9"] = Instance.new("UICorner", G2L["e8"]);
G2L["e9"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.Button.UIPadding
G2L["ea"] = Instance.new("UIPadding", G2L["e8"]);
G2L["ea"]["PaddingTop"] = UDim.new(0, 3);
G2L["ea"]["PaddingRight"] = UDim.new(0, 3);
G2L["ea"]["PaddingLeft"] = UDim.new(0, 3);
G2L["ea"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.Button.UIListLayout
G2L["eb"] = Instance.new("UIListLayout", G2L["e8"]);
G2L["eb"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["eb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.Button.Point
G2L["ec"] = Instance.new("ImageLabel", G2L["e8"]);
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["ec"]["Image"] = [[rbxassetid://5552526748]];
G2L["ec"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ec"]["ClipsDescendants"] = true;
G2L["ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ec"]["BackgroundTransparency"] = 1;
G2L["ec"]["Name"] = [[Point]];
G2L["ec"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.Button.Point.UIAspectRatioConstraint
G2L["ed"] = Instance.new("UIAspectRatioConstraint", G2L["ec"]);



-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.AFK.Main.UIAspectRatioConstraint
G2L["ee"] = Instance.new("UIAspectRatioConstraint", G2L["e6"]);
G2L["ee"]["AspectRatio"] = 1.90335;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency
G2L["ef"] = Instance.new("CanvasGroup", G2L["db"]);
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 40);
G2L["ef"]["Size"] = UDim2.new(1, 0, 0.07585, 48);
G2L["ef"]["Position"] = UDim2.new(0, 0, 0.20949, 0);
G2L["ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ef"]["Name"] = [[UITransparency]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.UICorner
G2L["f0"] = Instance.new("UICorner", G2L["ef"]);
G2L["f0"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.UIListLayout
G2L["f1"] = Instance.new("UIListLayout", G2L["ef"]);
G2L["f1"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["f1"]["Wraps"] = true;
G2L["f1"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["f1"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["f1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["f1"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.UIStroke
G2L["f2"] = Instance.new("UIStroke", G2L["ef"]);
G2L["f2"]["Transparency"] = 0.9;
G2L["f2"]["Thickness"] = 1;
G2L["f2"]["Color"] = Color3.fromRGB(160, 85, 255);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.UIPadding
G2L["f3"] = Instance.new("UIPadding", G2L["ef"]);
G2L["f3"]["PaddingTop"] = UDim.new(0, 6);
G2L["f3"]["PaddingRight"] = UDim.new(0, 12);
G2L["f3"]["PaddingLeft"] = UDim.new(0, 12);
G2L["f3"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Title
G2L["f4"] = Instance.new("TextLabel", G2L["ef"]);
G2L["f4"]["TextWrapped"] = true;
G2L["f4"]["Active"] = true;
G2L["f4"]["ZIndex"] = 3;
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["TextSize"] = 14;
G2L["f4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["f4"]["TextScaled"] = true;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["BackgroundTransparency"] = 1;
G2L["f4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["Text"] = [[UI Transparency]];
G2L["f4"]["Name"] = [[Title]];
G2L["f4"]["Position"] = UDim2.new(0, 0, -0, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main
G2L["f5"] = Instance.new("CanvasGroup", G2L["ef"]);
G2L["f5"]["Active"] = true;
G2L["f5"]["BorderSizePixel"] = 0;
G2L["f5"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["f5"]["Selectable"] = true;
G2L["f5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f5"]["Position"] = UDim2.new(0.90061, 0, 0.12223, 0);
G2L["f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f5"]["Name"] = [[Main]];
G2L["f5"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.UICorner
G2L["f6"] = Instance.new("UICorner", G2L["f5"]);
G2L["f6"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line
G2L["f7"] = Instance.new("Frame", G2L["f5"]);
G2L["f7"]["BorderSizePixel"] = 0;
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(100, 100, 110);
G2L["f7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f7"]["Size"] = UDim2.new(1, 0, 0.5, 0);
G2L["f7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["f7"]["Name"] = [[Line]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line.UICorner
G2L["f8"] = Instance.new("UICorner", G2L["f7"]);
G2L["f8"]["CornerRadius"] = UDim.new(0.3, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line.Interact
G2L["f9"] = Instance.new("TextButton", G2L["f7"]);
G2L["f9"]["BorderSizePixel"] = 0;
G2L["f9"]["TextSize"] = 14;
G2L["f9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f9"]["ZIndex"] = 2;
G2L["f9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f9"]["Size"] = UDim2.new(0, 10, 1.5, 0);
G2L["f9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["f9"]["Text"] = [[]];
G2L["f9"]["Name"] = [[Interact]];
G2L["f9"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line.Interact.UICorner
G2L["fa"] = Instance.new("UICorner", G2L["f9"]);
G2L["fa"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line.Percentage
G2L["fb"] = Instance.new("IntValue", G2L["f7"]);
G2L["fb"]["Name"] = [[Percentage]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line.Fill
G2L["fc"] = Instance.new("Frame", G2L["f7"]);
G2L["fc"]["BorderSizePixel"] = 0;
G2L["fc"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255);
G2L["fc"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["fc"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["fc"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fc"]["Name"] = [[Fill]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.Line.Fill.UICorner
G2L["fd"] = Instance.new("UICorner", G2L["fc"]);
G2L["fd"]["CornerRadius"] = UDim.new(0.3, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UITransparency.Main.UIPadding
G2L["fe"] = Instance.new("UIPadding", G2L["f5"]);
G2L["fe"]["PaddingRight"] = UDim.new(0, 5);
G2L["fe"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.Main.Pages.Settings.TextBox
G2L["ff"] = Instance.new("TextBox", G2L["d9"]);
G2L["ff"]["Visible"] = false;
G2L["ff"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["ff"]["BorderSizePixel"] = 0;
G2L["ff"]["TextSize"] = 14;
G2L["ff"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ff"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["ff"]["FontFace"] = Font.new([[rbxassetid://16658246179]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ff"]["ClearTextOnFocus"] = false;
G2L["ff"]["PlaceholderText"] = [[Search]];
G2L["ff"]["Size"] = UDim2.new(0, 640, 0, 40);
G2L["ff"]["Position"] = UDim2.new(0, 0, 0.00368, 0);
G2L["ff"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ff"]["Text"] = [[]];
G2L["ff"]["LayoutOrder"] = -1;


-- StarterGui.ScreenGui.Main.Pages.Settings.TextBox.UICorner
G2L["100"] = Instance.new("UICorner", G2L["ff"]);
G2L["100"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.TextBox.UIStroke1
G2L["101"] = Instance.new("UIStroke", G2L["ff"]);
G2L["101"]["Transparency"] = 0.95;
G2L["101"]["Thickness"] = 2;
G2L["101"]["Color"] = Color3.fromRGB(232, 229, 255);
G2L["101"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["101"]["Name"] = [[UIStroke1]];


-- StarterGui.ScreenGui.Main.Pages.Settings.UIPadding
G2L["102"] = Instance.new("UIPadding", G2L["d9"]);
G2L["102"]["PaddingRight"] = UDim.new(0, 2);
G2L["102"]["PaddingLeft"] = UDim.new(0, 2);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc
G2L["103"] = Instance.new("Folder", G2L["d9"]);
G2L["103"]["Name"] = [[Misc]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor
G2L["104"] = Instance.new("Frame", G2L["103"]);
G2L["104"]["Visible"] = false;
G2L["104"]["ZIndex"] = 4;
G2L["104"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["104"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["104"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["104"]["Name"] = [[ColorEditor]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ValueSelector
G2L["105"] = Instance.new("TextButton", G2L["104"]);
G2L["105"]["Active"] = false;
G2L["105"]["AutoButtonColor"] = false;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["Selectable"] = false;
G2L["105"]["ZIndex"] = 10;
G2L["105"]["Size"] = UDim2.new(0, 30, 1, 0);
G2L["105"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["105"]["Text"] = [[]];
G2L["105"]["Name"] = [[ValueSelector]];
G2L["105"]["Position"] = UDim2.new(0.03522, 0, 0, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ValueSelector.UIGradient
G2L["106"] = Instance.new("UIGradient", G2L["105"]);
G2L["106"]["Rotation"] = -90;
G2L["106"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ValueSelector.Cursor
G2L["107"] = Instance.new("Frame", G2L["105"]);
G2L["107"]["ZIndex"] = 10;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["107"]["Size"] = UDim2.new(1.25, 0, 0, 10);
G2L["107"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["107"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["107"]["Name"] = [[Cursor]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ValueSelector.Cursor.UICorner
G2L["108"] = Instance.new("UICorner", G2L["107"]);



-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ValueSelector.Cursor.UIStroke
G2L["109"] = Instance.new("UIStroke", G2L["107"]);
G2L["109"]["Thickness"] = 2;


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ValueSelector.UICorner
G2L["10a"] = Instance.new("UICorner", G2L["105"]);
G2L["10a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ColorWheel
G2L["10b"] = Instance.new("ImageButton", G2L["104"]);
G2L["10b"]["BackgroundTransparency"] = 1;
G2L["10b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10b"]["ZIndex"] = 10;
G2L["10b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10b"]["Image"] = [[rbxassetid://11224004075]];
G2L["10b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["10b"]["Name"] = [[ColorWheel]];
G2L["10b"]["Position"] = UDim2.new(0.34951, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ColorWheel.Cursor
G2L["10c"] = Instance.new("ImageLabel", G2L["10b"]);
G2L["10c"]["ZIndex"] = 11;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10c"]["Image"] = [[rbxassetid://11226149359]];
G2L["10c"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["10c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["10c"]["BackgroundTransparency"] = 1;
G2L["10c"]["Name"] = [[Cursor]];
G2L["10c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.ColorWheel.UIAspectRatioConstraint
G2L["10d"] = Instance.new("UIAspectRatioConstraint", G2L["10b"]);



-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Frame
G2L["10e"] = Instance.new("Frame", G2L["104"]);
G2L["10e"]["ZIndex"] = 11;
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10e"]["Size"] = UDim2.new(0, 91, 0, 91);
G2L["10e"]["Position"] = UDim2.new(0.71819, 0, 0.39056, 0);
G2L["10e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Frame.UICorner
G2L["10f"] = Instance.new("UICorner", G2L["10e"]);
G2L["10f"]["CornerRadius"] = UDim.new(0, 24);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Frame.TextLabel
G2L["110"] = Instance.new("TextLabel", G2L["10e"]);
G2L["110"]["TextWrapped"] = true;
G2L["110"]["TextStrokeTransparency"] = 0;
G2L["110"]["ZIndex"] = 13;
G2L["110"]["BorderSizePixel"] = 0;
G2L["110"]["TextSize"] = 14;
G2L["110"]["TextScaled"] = true;
G2L["110"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["110"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["110"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["110"]["BackgroundTransparency"] = 1;
G2L["110"]["Size"] = UDim2.new(2.1978, 0, 0.54945, 0);
G2L["110"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["110"]["Text"] = [[Preview]];
G2L["110"]["Position"] = UDim2.new(-0.6044, 0, -0.63736, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.UICorner
G2L["111"] = Instance.new("UICorner", G2L["104"]);
G2L["111"]["CornerRadius"] = UDim.new(0, 24);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.UIStroke
G2L["112"] = Instance.new("UIStroke", G2L["104"]);
G2L["112"]["Transparency"] = 0.95;
G2L["112"]["Thickness"] = 2;
G2L["112"]["Color"] = Color3.fromRGB(232, 229, 255);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.UIPadding
G2L["113"] = Instance.new("UIPadding", G2L["104"]);
G2L["113"]["PaddingTop"] = UDim.new(0, 12);
G2L["113"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Close
G2L["114"] = Instance.new("TextButton", G2L["104"]);
G2L["114"]["Active"] = false;
G2L["114"]["BorderSizePixel"] = 0;
G2L["114"]["BackgroundColor3"] = Color3.fromRGB(218, 15, 15);
G2L["114"]["Selectable"] = false;
G2L["114"]["ZIndex"] = 11;
G2L["114"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["114"]["BackgroundTransparency"] = 0.5;
G2L["114"]["Size"] = UDim2.new(0.07844, 0, 0.16286, 0);
G2L["114"]["LayoutOrder"] = 1;
G2L["114"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["114"]["Text"] = [[]];
G2L["114"]["Name"] = [[Close]];
G2L["114"]["Position"] = UDim2.new(0.945, 0, 0.075, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Close.UICorner
G2L["115"] = Instance.new("UICorner", G2L["114"]);
G2L["115"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Close.ImageLabel
G2L["116"] = Instance.new("ImageLabel", G2L["114"]);
G2L["116"]["ZIndex"] = 12;
G2L["116"]["BorderSizePixel"] = 0;
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["116"]["Image"] = [[rbxassetid://122962777517764]];
G2L["116"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["116"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["BackgroundTransparency"] = 1;
G2L["116"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Close.ImageLabel.UIScale
G2L["117"] = Instance.new("UIScale", G2L["116"]);
G2L["117"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Close.UIAspectRatioConstraint1
G2L["118"] = Instance.new("UIAspectRatioConstraint", G2L["114"]);
G2L["118"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["118"]["Name"] = [[UIAspectRatioConstraint1]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Confirm
G2L["119"] = Instance.new("TextButton", G2L["104"]);
G2L["119"]["Active"] = false;
G2L["119"]["BorderSizePixel"] = 0;
G2L["119"]["BackgroundColor3"] = Color3.fromRGB(82, 218, 67);
G2L["119"]["Selectable"] = false;
G2L["119"]["ZIndex"] = 11;
G2L["119"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["119"]["BackgroundTransparency"] = 0.5;
G2L["119"]["Size"] = UDim2.new(0.07844, 0, 0.16286, 0);
G2L["119"]["LayoutOrder"] = 1;
G2L["119"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["119"]["Text"] = [[]];
G2L["119"]["Name"] = [[Confirm]];
G2L["119"]["Position"] = UDim2.new(0.79131, 0, 0.88406, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Confirm.UICorner
G2L["11a"] = Instance.new("UICorner", G2L["119"]);
G2L["11a"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Confirm.UIAspectRatioConstraint1
G2L["11b"] = Instance.new("UIAspectRatioConstraint", G2L["119"]);
G2L["11b"]["DominantAxis"] = Enum.DominantAxis.Height;
G2L["11b"]["Name"] = [[UIAspectRatioConstraint1]];


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Confirm.ImageLabel
G2L["11c"] = Instance.new("TextLabel", G2L["119"]);
G2L["11c"]["TextWrapped"] = true;
G2L["11c"]["ZIndex"] = 12;
G2L["11c"]["BorderSizePixel"] = 0;
G2L["11c"]["TextScaled"] = true;
G2L["11c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11c"]["BackgroundTransparency"] = 1;
G2L["11c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11c"]["Text"] = [[âœ…]];
G2L["11c"]["Name"] = [[ImageLabel]];
G2L["11c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Settings.Misc.ColorEditor.Confirm.ImageLabel.UIScale
G2L["11d"] = Instance.new("UIScale", G2L["11c"]);
G2L["11d"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.EnableFrame
G2L["11e"] = Instance.new("Frame", G2L["3f"]);
G2L["11e"]["Visible"] = false;
G2L["11e"]["ZIndex"] = 2;
G2L["11e"]["BorderSizePixel"] = 0;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255); -- Changed from Blue to Purple
G2L["11e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11e"]["Name"] = [[EnableFrame]];


-- StarterGui.ScreenGui.Main.EnableFrame.UICorner
G2L["11f"] = Instance.new("UICorner", G2L["11e"]);
G2L["11f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.EnableFrame.Glow
G2L["120"] = Instance.new("ImageLabel", G2L["11e"]);
G2L["120"]["ZIndex"] = 2;
G2L["120"]["BorderSizePixel"] = 0;
G2L["120"]["BackgroundColor3"] = Color3.fromRGB(160, 85, 255); -- Changed from Blue to Purple
G2L["120"]["ImageColor3"] = Color3.fromRGB(160, 85, 255); -- Changed to Purple
G2L["120"]["Image"] = [[rbxassetid://84915499533164]];
G2L["120"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["120"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["BackgroundTransparency"] = 1;
G2L["120"]["Name"] = [[Glow]];


-- StarterGui.ScreenGui.Icon
G2L["121"] = Instance.new("ImageLabel", G2L["1"]);
G2L["121"]["Visible"] = false; -- [[ ADD THIS ]]
G2L["121"]["ZIndex"] = 2;
G2L["121"]["BorderSizePixel"] = 0;
G2L["121"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["121"]["Image"] = [[rbxassetid://109798560145884]];
G2L["121"]["Size"] = UDim2.new(0.10232, 0, 0.19133, 0);
G2L["121"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["BackgroundTransparency"] = 1;
G2L["121"]["Name"] = [[Icon]];
G2L["121"]["Position"] = UDim2.new(0.05907, 0, 0.10225, 0);




-- StarterGui.ScreenGui.Full
G2L["123"] = Instance.new("Frame", G2L["1"]);
G2L["123"]["ZIndex"] = 0;
G2L["123"]["BorderSizePixel"] = 0;
G2L["123"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["123"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["123"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["123"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["123"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["123"]["Name"] = [[Full]];
G2L["123"]["BackgroundTransparency"] = 0.3;


-- StarterGui.ScreenGui.Open
G2L["138"] = Instance.new("ImageButton", G2L["1"]);
G2L["138"]["BorderSizePixel"] = 0;
G2L["138"]["Visible"] = false;
G2L["138"]["BackgroundTransparency"] = 1;
G2L["138"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["138"]["ImageColor3"] = Color3.fromRGB(26, 27, 32);
G2L["138"]["Selectable"] = false;
G2L["138"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["138"]["Image"] = [[rbxassetid://5552526748]];
G2L["138"]["Size"] = UDim2.new(0.06821, 0, 0.12755, 0);
G2L["138"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["138"]["Name"] = [[Open]];
G2L["138"]["Position"] = UDim2.new(0.5, 0, 0.15, 0);


-- StarterGui.ScreenGui.Open.Icon
G2L["139"] = Instance.new("ImageLabel", G2L["138"]);
G2L["139"]["ZIndex"] = 2;
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["139"]["Image"] = [[rbxassetid://109798560145884]];
G2L["139"]["Size"] = UDim2.new(0.75, 0, 0.75, 0);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["BackgroundTransparency"] = 1;
G2L["139"]["Name"] = [[Icon]];
G2L["139"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Open.Outline
G2L["13a"] = Instance.new("Frame", G2L["138"]);
G2L["13a"]["Interactable"] = false;
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["Name"] = [[Outline]];
G2L["13a"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Open.Outline.UICorner
G2L["13b"] = Instance.new("UICorner", G2L["13a"]);
G2L["13b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Open.Outline.UIStroke
G2L["13c"] = Instance.new("UIStroke", G2L["13a"]);
G2L["13c"]["Transparency"] = 0.95;
G2L["13c"]["Thickness"] = 2;
G2L["13c"]["Color"] = Color3.fromRGB(232, 229, 255);


-- StarterGui.ScreenGui.Open.UIAspectRatioConstraint
G2L["13d"] = Instance.new("UIAspectRatioConstraint", G2L["138"]);



-- StarterGui.ScreenGui.Popups
G2L["13e"] = Instance.new("Frame", G2L["1"]);
G2L["13e"]["Visible"] = false;
G2L["13e"]["ZIndex"] = 999999999;
G2L["13e"]["BorderSizePixel"] = 0;
G2L["13e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13e"]["Name"] = [[Popups]];
G2L["13e"]["BackgroundTransparency"] = 0.25;


-- StarterGui.ScreenGui.Popups.Main
G2L["13f"] = Instance.new("Frame", G2L["13e"]);
G2L["13f"]["ZIndex"] = 999999999;
G2L["13f"]["BorderSizePixel"] = 0;
G2L["13f"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["13f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13f"]["Size"] = UDim2.new(0.5, 0, 0.42481, 0);
G2L["13f"]["Position"] = UDim2.new(0.5, 0, 0.46241, 0);
G2L["13f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13f"]["Name"] = [[Main]];


-- StarterGui.ScreenGui.Popups.Main.UICorner
G2L["140"] = Instance.new("UICorner", G2L["13f"]);
G2L["140"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Popups.Main.UIListLayout
G2L["141"] = Instance.new("UIListLayout", G2L["13f"]);
G2L["141"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["141"]["Padding"] = UDim.new(0, 12);
G2L["141"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Popups.Main.TextLabel
G2L["142"] = Instance.new("TextLabel", G2L["13f"]);
G2L["142"]["TextWrapped"] = true;
G2L["142"]["ZIndex"] = 999999999;
G2L["142"]["BorderSizePixel"] = 0;
G2L["142"]["TextSize"] = 14;
G2L["142"]["TextScaled"] = true;
G2L["142"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["142"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["142"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["142"]["BackgroundTransparency"] = 1;
G2L["142"]["Size"] = UDim2.new(0.9, 0, 0.13776, 0);
G2L["142"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["142"]["Text"] = [[Rename Tab]];
G2L["142"]["LayoutOrder"] = -1;
G2L["142"]["Position"] = UDim2.new(0.2195, 0, 0, 0);


-- StarterGui.ScreenGui.Popups.Main.UIPadding
G2L["143"] = Instance.new("UIPadding", G2L["13f"]);
G2L["143"]["PaddingTop"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Popups.Main.Input
G2L["144"] = Instance.new("TextBox", G2L["13f"]);
G2L["144"]["CursorPosition"] = -1;
G2L["144"]["Name"] = [[Input]];
G2L["144"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["144"]["ZIndex"] = 999999999;
G2L["144"]["BorderSizePixel"] = 0;
G2L["144"]["TextSize"] = 18;
G2L["144"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["144"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["144"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["144"]["ClearTextOnFocus"] = false;
G2L["144"]["PlaceholderText"] = [[Enter script name...]];
G2L["144"]["Size"] = UDim2.new(0.9, 0, 0.34888, 0);
G2L["144"]["Position"] = UDim2.new(0.05, 0, 0.21541, 0);
G2L["144"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["144"]["Text"] = [[]];
G2L["144"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Popups.Main.Input.UIStroke
G2L["145"] = Instance.new("UIStroke", G2L["144"]);
G2L["145"]["Transparency"] = 0.95;
G2L["145"]["Thickness"] = 3;
G2L["145"]["Color"] = Color3.fromRGB(232, 229, 255);
G2L["145"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.Popups.Main.Input.UICorner
G2L["146"] = Instance.new("UICorner", G2L["144"]);
G2L["146"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.Popups.Main.Button
G2L["147"] = Instance.new("Frame", G2L["13f"]);
G2L["147"]["BorderSizePixel"] = 0;
G2L["147"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["147"]["Size"] = UDim2.new(1, 0, 0.25717, 0);
G2L["147"]["Position"] = UDim2.new(0, 0, 0.67973, 0);
G2L["147"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["147"]["Name"] = [[Button]];


-- StarterGui.ScreenGui.Popups.Main.Button.UIListLayout
G2L["148"] = Instance.new("UIListLayout", G2L["147"]);
G2L["148"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["148"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["148"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["148"]["Padding"] = UDim.new(0, 12);
G2L["148"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["148"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.Popups.Main.Button.Cancel
G2L["149"] = Instance.new("TextButton", G2L["147"]);
G2L["149"]["BorderSizePixel"] = 0;
G2L["149"]["TextSize"] = 14;
G2L["149"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["149"]["BackgroundColor3"] = Color3.fromRGB(159, 62, 64);
G2L["149"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["149"]["ZIndex"] = 999999999;
G2L["149"]["Size"] = UDim2.new(0.32721, 0, 0.17347, 0);
G2L["149"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["149"]["Text"] = [[Cancel]];
G2L["149"]["Name"] = [[Cancel]];
G2L["149"]["Position"] = UDim2.new(0.22715, 0, 0.50288, 0);


-- StarterGui.ScreenGui.Popups.Main.Button.Cancel.UICorner
G2L["14a"] = Instance.new("UICorner", G2L["149"]);
G2L["14a"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.Popups.Main.Button.Cancel.UIStroke
G2L["14b"] = Instance.new("UIStroke", G2L["149"]);
G2L["14b"]["Transparency"] = 0.9;
G2L["14b"]["Thickness"] = 3;
G2L["14b"]["Color"] = Color3.fromRGB(255, 0, 0);
G2L["14b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.Popups.Main.Button.UIPadding
G2L["14c"] = Instance.new("UIPadding", G2L["147"]);
G2L["14c"]["PaddingRight"] = UDim.new(0, 18);
G2L["14c"]["PaddingLeft"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.Popups.Main.Button.Confirm
G2L["14d"] = Instance.new("TextButton", G2L["147"]);
G2L["14d"]["BorderSizePixel"] = 0;
G2L["14d"]["TextSize"] = 14;
G2L["14d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14d"]["BackgroundColor3"] = Color3.fromRGB(77, 159, 59);
G2L["14d"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["14d"]["ZIndex"] = 999999999;
G2L["14d"]["Size"] = UDim2.new(0.32721, 0, 0.17347, 0);
G2L["14d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14d"]["Text"] = [[Confirm]];
G2L["14d"]["Name"] = [[Confirm]];
G2L["14d"]["Position"] = UDim2.new(0.22715, 0, 0.50288, 0);


-- StarterGui.ScreenGui.Popups.Main.Button.Confirm.UICorner
G2L["14e"] = Instance.new("UICorner", G2L["14d"]);
G2L["14e"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.Popups.Main.Button.Confirm.UIStroke
G2L["14f"] = Instance.new("UIStroke", G2L["14d"]);
G2L["14f"]["Transparency"] = 0.9;
G2L["14f"]["Thickness"] = 3;
G2L["14f"]["Color"] = Color3.fromRGB(14, 255, 0);
G2L["14f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.LocalScript
local function C_2()
local script = G2L["2"];
	if not game:IsLoaded() then game.Loaded:Wait() end
	
	local ps = pcall(function()
    script.Parent.Parent = gethui and gethui() or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end)

-- 🟢 ADD THIS SAFE THEME GETTER
local function getSafeTheme()
    local success, theme = pcall(function()
        return getgenv().CurrentTheme
    end)
    if success and theme then
        return theme
    end
    return Color3.fromRGB(160, 85, 255)
end
	
-- 🔴 FIX #17: CLIPBOARD PROTECTION
local safeGetClipboard = function()
    local success, result = pcall(function()
        return (getclipboard and getclipboard()) or ""
    end)
    return success and result or ""
end

local safeSetClipboard = function(text)
    pcall(function()
        if setclipboard then
            setclipboard(text)
        end
    end)
end

local function deepCopy(tbl)
		if (type(tbl) ~= "table") then
			return tbl;
		end
		local copy = {};
		for key, value in pairs(tbl) do
			copy[key] = deepCopy(value);
		end
		return copy;
	end
	-- 🛡️ STEALTH: FORCED CLONEREF
	local cloneref = cloneref or function(o) return o end
	local Services = setmetatable({}, {
    __index = function(self, name)
        local success, service = pcall(function()
            return cloneref(game:GetService(name))
        end)
        if not success or not service then
            service = game:GetService(name)
        end
        rawset(self, name, service)
        return service
    end
})
	local clonefunction = clonefunction or function(func)
		return func
	end
	--local loadstring = clonefunction(loadstring);
-- 🛡️ FIX: Fake PlayerInfo to prevent HTTP detection (Stops the Kick)
	local PlayerInfo = {
		ip = "127.0.0.1",
		country = "Hidden",
		city = "Hidden"
	}
local InvisTriggerOpen = false;

	-- [[ 🛡️ FIX: SAFE SERVICE GETTER WITH ANTI-HOOK CHECK ]] 
local function GetServiceSafe(name)
    local success, service = pcall(function() return game:GetService(name) end)
    
    if not success then
        warn("[PUNK X] Failed to get service:", name)
        return nil
    end
    
    -- Verify it's a real service (detects anti-cheat hooks)
    if typeof(service) ~= "Instance" then
        warn("[PUNK X] Service returned invalid type:", name)
        return nil
    end
    
    return cloneref and cloneref(service) or service
end

	-- [[ 🛡️ FIX: FAKE HTTP SERVICE ]] 
	-- This fixes the errors in 'createTab' and 'SaveTheme'
	local MockHttpService = {
		JSONEncode = function(self, data) return "{}" end,
		JSONDecode = function(self, data) return {} end,
		GenerateGUID = function(self) return tostring(math.random(100000, 999999)) end
	}

	-- Load Services Safely (Returns nil instead of crashing if missing)
	local TweenService = GetServiceSafe("TweenService")
	local UserInputService = GetServiceSafe("UserInputService")
	local StarterGui = GetServiceSafe("StarterGui")
	local GuiService = GetServiceSafe("GuiService")
	local Lighting = GetServiceSafe("Lighting")
	local ReplicatedStorage = GetServiceSafe("ReplicatedStorage")
	local RunService = GetServiceSafe("RunService")
	local Players = GetServiceSafe("Players")
	
	-- Handle HttpService specifically for your Theme/Tabs error
	local RealHttp = GetServiceSafe("HttpService")
	local HttpService = RealHttp or MockHttpService

	-- [[ 🛡️ FIX: CRITICAL WAIT ]]
	-- If services are missing (because of lag or ban), wait safely instead of erroring
	if not Players or not TweenService then
		if not game:IsLoaded() then game.Loaded:Wait() end
		-- Try one last fetch
		Players = GetServiceSafe("Players")
		TweenService = GetServiceSafe("TweenService")
	end
	local Main = script.Parent:WaitForChild("Main");
	local Leftside = Main:WaitForChild("Leftside");
	local Nav = Leftside:WaitForChild("Nav");
	local Pages = Main:WaitForChild("Pages");
	local EnableFrame = Main:WaitForChild("EnableFrame");
	local Player = Players.LocalPlayer;
	local KeyVailded = true;
	local function hideUI(bool, forKey)
		if (not bool and InvisTriggerOpen) then
			script.Parent.Enabled = false;
		end
		for _, v in ipairs(script.Parent:GetChildren()) do
if v.Name == "Popups" then v.Visible = false return end
			if (v.Name == "EnableFrame") then
				continue;
			end
			if (v:IsA("Frame") or v:IsA("ImageLabel")) then
				v.Visible = bool;
			elseif v:IsA("ImageButton") then
				v.Visible = not bool;
			end
		end
	end
hideUI(false);
	-- 🛡️ REMOVED: _PULL_INT (Detected Trigger)

-- 🟢 FIX: Connect to Real Executor Functions
	local CLONED_Detectedly = {}
	
	-- Map the script's names to your Executor's Globals
	CLONED_Detectedly.writefile = writefile
	CLONED_Detectedly.readfile = readfile
	CLONED_Detectedly.appendfile = appendfile
	CLONED_Detectedly.isfile = isfile
	CLONED_Detectedly.listfiles = listfiles
	CLONED_Detectedly.delfile = delfile
	CLONED_Detectedly.isfolder = isfolder
	CLONED_Detectedly.delfolder = delfolder
	
	-- Handle different names (makedir vs makefolder)
	CLONED_Detectedly.makedir = makefolder or makedir
	CLONED_Detectedly.deldir = delfolder or deldir
	
	-- Misc
	CLONED_Detectedly.setclipboard = setclipboard or toclipboard
	CLONED_Detectedly.runcode = function(code) return loadstring(code) end
	CLONED_Detectedly.pushautoexec = (queue_on_teleport or queueonteleport or syn.queue_on_teleport) or function() end

	local BASE_WIDTH = 733;
	local BASE_HEIGHT = 392;
-- 🟢 1. HELPER: STRIP SYNTAX (Decodes & Cleans)
local function StripSyntax(text)
    -- A. Remove basic XML tags <...>
    local clean = string.gsub(text, "<[^>]+>", "")
    
    -- B. Decode HTML Entities (Turn &lt; back into <)
    -- This fixes the "Growing Text" bug
    clean = clean:gsub("&lt;", "<")
    clean = clean:gsub("&gt;", ">")
    clean = clean:gsub("&quot;", '"')
    clean = clean:gsub("&apos;", "'")
    clean = clean:gsub("&amp;", "&")
    
    return clean
end
-- 🟢 2. CONNECT REAL EXECUTOR FUNCTIONS
CLONED_Detectedly.writefile = writefile
CLONED_Detectedly.readfile = readfile
CLONED_Detectedly.appendfile = appendfile
CLONED_Detectedly.isfile = isfile
CLONED_Detectedly.listfiles = listfiles
CLONED_Detectedly.delfile = delfile
CLONED_Detectedly.isfolder = isfolder
CLONED_Detectedly.delfolder = delfolder
CLONED_Detectedly.makedir = makefolder or makedir
CLONED_Detectedly.deldir = delfolder or deldir
CLONED_Detectedly.setclipboard = setclipboard or toclipboard
CLONED_Detectedly.runcode = function(code) return loadstring(code) end
CLONED_Detectedly.pushautoexec = (queue_on_teleport or queueonteleport or (syn and syn.queue_on_teleport)) or function() end

-- 🟢 3. DELAYED FOLDER CREATION (Called after key validation)
local function initializeFileSystem()
    local function SafeMakeDir(dir)
        if CLONED_Detectedly.isfolder and CLONED_Detectedly.makedir then
            if not CLONED_Detectedly.isfolder(dir) then
                pcall(function() CLONED_Detectedly.makedir(dir) end)
            end
        end
    end

    SafeMakeDir("Punk-X-Files")
    SafeMakeDir("Punk-X-Files/scripts")
    SafeMakeDir("Punk-X-Files/saves")
    SafeMakeDir("Punk-X-Files/autoexec")
    SafeMakeDir("Punk-X-Files/rconsole")
   --print("[PUNK X] File system initialized")
end
-- Note: This function is called later, NOT immediately
	local OriginalProperties = {};
	local function scaleUIElement(element, storeOnly)
		if not OriginalProperties[element] then
			if element:IsA("UIListLayout") then
				OriginalProperties[element] = {
					Padding = element.Padding
				};
			elseif element:IsA("UIPadding") then
				OriginalProperties[element] = {
					PaddingTop = element.PaddingTop,
					PaddingBottom = element.PaddingBottom,
					PaddingLeft = element.PaddingLeft,
					PaddingRight = element.PaddingRight
				};
			elseif element:IsA("UICorner") then
				OriginalProperties[element] = {
					CornerRadius = element.CornerRadius
				};
			else
				OriginalProperties[element] = {
					Size = element.Size,
					Position = element.Position
				};
			end
		end
		if storeOnly then
			return;
		end
		local ViewportSize = workspace.CurrentCamera.ViewportSize;
		local ScaleX = ViewportSize.X / BASE_WIDTH;
		local ScaleY = ViewportSize.Y / BASE_HEIGHT;
		local Scale = math.min(ScaleX, ScaleY);
		if element:IsA("UIListLayout") then
			element.Padding = UDim.new(OriginalProperties[element].Padding.Scale * Scale, OriginalProperties[element].Padding.Offset * Scale);
		elseif element:IsA("UIPadding") then
			element.PaddingTop = UDim.new(OriginalProperties[element].PaddingTop.Scale * Scale, OriginalProperties[element].PaddingTop.Offset * Scale);
			element.PaddingBottom = UDim.new(OriginalProperties[element].PaddingBottom.Scale * Scale, OriginalProperties[element].PaddingBottom.Offset * Scale);
			element.PaddingLeft = UDim.new(OriginalProperties[element].PaddingLeft.Scale * Scale, OriginalProperties[element].PaddingLeft.Offset * Scale);
			element.PaddingRight = UDim.new(OriginalProperties[element].PaddingRight.Scale * Scale, OriginalProperties[element].PaddingRight.Offset * Scale);
		elseif element:IsA("UICorner") then
			element.CornerRadius = UDim.new(OriginalProperties[element].CornerRadius.Scale * Scale, OriginalProperties[element].CornerRadius.Offset * Scale);
		else
			local OriginalSize = OriginalProperties[element].Size;
			local OriginalPosition = OriginalProperties[element].Position;
			element.Size = UDim2.new(OriginalSize.X.Scale * Scale, OriginalSize.X.Offset * Scale, OriginalSize.Y.Scale * Scale, OriginalSize.Y.Offset * Scale);
			local hasUIList = element.Parent and element.Parent:FindFirstChildOfClass("UIListLayout");
			if not hasUIList then
				element.Position = UDim2.new(OriginalPosition.X.Scale * Scale, OriginalPosition.X.Offset * Scale, OriginalPosition.Y.Scale * Scale, OriginalPosition.Y.Offset * Scale);
			end
		end
	end
	local createNotification;
	do
		local NScript = {};
		NScript["1"] = Instance.new("ScreenGui", script.Parent.Parent);
		NScript["1"]['DisplayOrder'] = 9999;
		NScript["1"]['ZIndexBehavior'] = Enum.ZIndexBehavior.Sibling;
		NScript["2"] = Instance.new("CanvasGroup", NScript["1"]);
		NScript["2"]['Interactable'] = false;
		NScript["2"]['BorderSizePixel'] = 0;
		NScript["2"]['BackgroundColor3'] = Color3.fromRGB(255, 255, 255);
		NScript["2"]['Size'] = UDim2.new(1, 0, 1, 0);
		NScript["2"]['BorderColor3'] = Color3.fromRGB(0, 0, 0);
		NScript["2"]['BackgroundTransparency'] = 1;
		NScript["3"] = Instance.new("UIListLayout", NScript["2"]);
		NScript["3"]['HorizontalAlignment'] = Enum.HorizontalAlignment.Center;
		NScript["3"]['Padding'] = UDim.new(0, 5);
		NScript["3"]['SortOrder'] = Enum.SortOrder.LayoutOrder;
		NScript["4"] = Instance.new("UIPadding", NScript["2"]);
		NScript["4"]['PaddingTop'] = UDim.new(0, 12);
		NScript["5"] = Instance.new("UIGradient", NScript["2"]);
		NScript["5"]['Rotation'] = 90;
		NScript["5"]['Transparency'] = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(0.705, 0),
			NumberSequenceKeypoint.new(0.823, 1),
			NumberSequenceKeypoint.new(1, 1)
		});
		NScript["6"] = Instance.new("LocalScript", NScript["1"]);
		NScript["6"]['Name'] = [[LocalScript1]];
		local function C_6()
			local Types = {
				Success = {
					"3aff89",
					"rbxassetid://112710982192332"
				},
				Info = {
					"46c4ff",
					"rbxassetid://110233303954611"
				},
				Error = {
					"ff5757",
					"rbxassetid://112489485508417"
				},
				Warn = {
					"ffc849",
					"rbxassetid://140599696565012"
				}
			};
			function createNotification(text, type, dur)
				task.spawn(function()
					local Noification = {};
					do
						local G2L = Noification;
						G2L["7"] = Instance.new("CanvasGroup", G2L["6"]);
						G2L["7"]['BorderSizePixel'] = 0;
						G2L["7"]['BackgroundColor3'] = Color3.fromRGB(26, 27, 32);
						G2L["7"]['AutomaticSize'] = Enum.AutomaticSize.X;
						G2L["7"]['Size'] = UDim2.new(0.09141, 0, 0.12755, 0);
						G2L["7"]['Position'] = UDim2.new(0.24441, 0, 0.03774, 0);
						G2L["7"]['BorderColor3'] = Color3.fromRGB(0, 0, 0);
						G2L["7"]['Name'] = [[N]];
						G2L['Animator'] = Instance.new("UIScale", G2L["7"]);
						G2L["8"] = Instance.new("UICorner", G2L["7"]);
						G2L["8"]['CornerRadius'] = UDim.new(0, 12);
						G2L["9"] = Instance.new("UIListLayout", G2L["7"]);
						G2L["9"]['HorizontalAlignment'] = Enum.HorizontalAlignment.Center;
						G2L["9"]['VerticalFlex'] = Enum.UIFlexAlignment.Fill;
						G2L["9"]['SortOrder'] = Enum.SortOrder.LayoutOrder;
						G2L['a'] = Instance.new("Frame", G2L["7"]);
						G2L['a']['BorderSizePixel'] = 0;
						G2L['a']['BackgroundColor3'] = Color3.fromRGB(118, 255, 108);
						G2L['a']['AutomaticSize'] = Enum.AutomaticSize.X;
						G2L['a']['Size'] = UDim2.new(0, 0, 1, 0);
						G2L['a']['BorderColor3'] = Color3.fromRGB(0, 0, 0);
						G2L['a']['Name'] = [[Bypass]];
						G2L['a']['BackgroundTransparency'] = 1;
						G2L['b'] = Instance.new("UIListLayout", G2L['a']);
						G2L['b']['HorizontalAlignment'] = Enum.HorizontalAlignment.Center;
						G2L['b']['Wraps'] = true;
						G2L['b']['Padding'] = UDim.new(0, 8);
						G2L['b']['SortOrder'] = Enum.SortOrder.LayoutOrder;
						G2L['c'] = Instance.new("ImageLabel", G2L['a']);
						G2L['c']['BorderSizePixel'] = 0;
						G2L['c']['BackgroundColor3'] = Color3.fromRGB(255, 255, 255);
						G2L['c']['Size'] = UDim2.new(1, 0, 1, 0);
						G2L['c']['BorderColor3'] = Color3.fromRGB(0, 0, 0);
						G2L['c']['BackgroundTransparency'] = 1;
						G2L['c']['Name'] = [[Icon]];
						G2L['d'] = Instance.new("UIAspectRatioConstraint", G2L['c']);
						G2L['e'] = Instance.new("UIPadding", G2L['a']);
						G2L['e']['PaddingTop'] = UDim.new(0, 10);
						G2L['e']['PaddingRight'] = UDim.new(0, 10);
						G2L['e']['PaddingLeft'] = UDim.new(0, 10);
						G2L['e']['PaddingBottom'] = UDim.new(0, 12);
						G2L['f'] = Instance.new("TextLabel", G2L['a']);
						G2L['f']['TextWrapped'] = true;
						G2L['f']['ZIndex'] = 5;
						G2L['f']['BorderSizePixel'] = 0;
						G2L['f']['TextSize'] = 18;
						G2L['f']['TextScaled'] = true;
						G2L['f']['BackgroundColor3'] = Color3.fromRGB(255, 255, 255);
						G2L['f']['FontFace'] = Font.new([[rbxassetid://12187371324]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
						G2L['f']['TextColor3'] = Color3.fromRGB(255, 255, 255);
						G2L['f']['BackgroundTransparency'] = 1;
						G2L['f']['RichText'] = true;
						G2L['f']['AnchorPoint'] = Vector2.new(0.5, 0.5);
						G2L['f']['Size'] = UDim2.new(0, 0, 1, 0);
						G2L['f']['BorderColor3'] = Color3.fromRGB(0, 0, 0);
						G2L['f']['Text'] = [[?]];
						G2L['f']['AutomaticSize'] = Enum.AutomaticSize.X;
						G2L['f']['Name'] = [[Title]];
						G2L['f']['Position'] = UDim2.new(0.375, 0, 0.06207, 0);
						G2L["10"] = Instance.new("UIStroke", G2L["7"]);
						G2L["10"]['Transparency'] = 0.9;
						G2L["10"]['Thickness'] = 2;
						G2L["10"]['Color'] = Color3.fromRGB(255, 255, 255);
						G2L["11"] = Instance.new("Folder", G2L["7"]);
						G2L["11"]['Name'] = [[Misc]];
						G2L["12"] = Instance.new("Frame", G2L["11"]);
						G2L["12"]['BorderSizePixel'] = 0;
						G2L["12"]['BackgroundColor3'] = Color3.fromRGB(255, 255, 255);
						G2L["12"]['AnchorPoint'] = Vector2.new(0, 1);
						G2L["12"]['Size'] = UDim2.new(1, 0, 0, 4);
						G2L["12"]['Position'] = UDim2.new(0, 0, 1, 0);
						G2L["12"]['BorderColor3'] = Color3.fromRGB(0, 0, 0);
						G2L["12"]['Name'] = [[Fill]];
					end
					dur = dur or 5;
					text = text or "Hello World!";
					type = type or "Info";
					local TypeData = Types[type];
					if not TypeData then
						TypeData = Types['Info'];
					end
				scaleUIElement(Noification.e);
					Noification["7"].GroupColor3 = Color3.fromHex(TypeData[1]);
					Noification.a.Icon.Image = TypeData[2];
					Noification.a.Title.Text = text;
					Noification["7"].Parent = NScript["2"];
					Noification.Animator:GetPropertyChangedSignal("Scale"):Connect(function()
						Noification["7"].GroupTransparency = math.clamp(1 - Noification.Animator.Scale, 0, 1);
					end);
					Noification.Animator.Scale = 0;
					
					-- Safety check for TweenService
					if TweenService then
						local ATween = TweenService:Create(Noification.Animator, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
							Scale = 1
						});
						ATween:Play();
						ATween.Completed:Wait();
						ATween = TweenService:Create(Noification["7"].Misc.Fill, TweenInfo.new(dur, Enum.EasingStyle.Linear), {
							Size = UDim2.new(0, 0, 0, 4)
						});
						ATween:Play();
						ATween.Completed:Wait();
						ATween = TweenService:Create(Noification.Animator, TweenInfo.new(0.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
							Scale = 0
						});
						ATween:Play();
						ATween.Completed:Wait();
					else
						-- Fallback: Show notification without animations
						warn("[PUNK X] TweenService unavailable - notification shown without animation")
						Noification.Animator.Scale = 1
						task.wait(dur)
						Noification.Animator.Scale = 0
					end
					
					Noification["7"]:Destroy();
					table.clear(Noification);
				end);
			end
		end
		task.spawn(C_6);
	end

-- 🟢 AUTO-GENERATE THEME SHADES (Moved up to fix nil value error)
local function getThemeShades(baseColor)
    baseColor = baseColor or Color3.fromRGB(160, 85, 255) -- Default purple
    
    return {
        -- 🟢 CHANGE: Set to 0.625 (62.5% White)
        light = baseColor:Lerp(Color3.new(1, 1, 1), 0.625),
        
        base = baseColor,
        
        -- Mix 30% Black to get a Darker look
        dark = baseColor:Lerp(Color3.new(0, 0, 0), 0.3)
    }
end

-- 🟢 DYNAMIC SYNTAX COLORS
local function getSyntaxColors()
    local currentTheme = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    local shades = getThemeShades(currentTheme) -- Now works because function is defined above
    
    local function toRGB(color)
        return string.format("rgb(%d,%d,%d)", 
            math.floor(color.R * 255), 
            math.floor(color.G * 255), 
            math.floor(color.B * 255))
    end
    
    return {
        -- Keywords use dark shade
        ["local"] = toRGB(shades.dark),
        ["function"] = toRGB(shades.dark),
        ["end"] = toRGB(shades.dark),
        ["while"] = toRGB(shades.dark),
        ["for"] = toRGB(shades.dark),
        ["do"] = toRGB(shades.dark),
        ["and"] = toRGB(shades.dark),
        ["or"] = toRGB(shades.dark),
        ["not"] = toRGB(shades.dark),
        
        -- Control flow uses base shade
        ["if"] = toRGB(shades.base),
        ["then"] = toRGB(shades.base),
        ["else"] = toRGB(shades.base),
        ["elseif"] = toRGB(shades.base),
        ["return"] = toRGB(shades.base),
        ["break"] = toRGB(shades.base),
        ["continue"] = toRGB(shades.base),
        ["repeat"] = toRGB(shades.base),
        ["until"] = toRGB(shades.base),
        
        -- Built-ins use base shade
        ["game"] = toRGB(shades.base),
        ["workspace"] = toRGB(shades.base),
        ["script"] = toRGB(shades.base),
        ["print"] = toRGB(shades.base),
        ["wait"] = toRGB(shades.base),
        ["task"] = toRGB(shades.base),
        ["pairs"] = toRGB(shades.base),
        ["ipairs"] = toRGB(shades.base),
        
       -- Important functions use DARK shade (as requested)
        ["loadstring"] = toRGB(shades.dark),
    }
end
-- 🟢 HELPER: GENERATE SAFE TOKEN (No numbers allowed!)
local function GenerateToken(i, prefix)
    local s = ""
    while i > 0 do
        local rem = (i-1) % 26
        s = string.char(65 + rem) .. s
        i = math.floor((i-1) / 26)
    end
    return prefix .. s .. "_"
end

-- 🟢 SIMPLE HIGHLIGHTER (Keywords + Strings Only)
local function ApplySyntax(text)
    text = StripSyntax(text)
    if #text > 50000 then return text end

    -- 🟢 GET DYNAMIC STRING COLOR (Light Shade)
    local currentTheme = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    local shades = getThemeShades(currentTheme)
    local stringColor = string.format("rgb(%d,%d,%d)", 
        math.floor(shades.light.R * 255), 
        math.floor(shades.light.G * 255), 
        math.floor(shades.light.B * 255))

    -- Highlight strings FIRST (before escaping)
    local strings = {}
    local sCount = 0
    text = text:gsub('(".-")', function(s)
        sCount = sCount + 1
        local token = "XSTRX" .. sCount .. "X"
        strings[token] = "<font color='" .. stringColor .. "'>" .. s .. "</font>"
        return token
    end)
    text = text:gsub("('.-')", function(s)
        sCount = sCount + 1
        local token = "XSTRX" .. sCount .. "X"
        strings[token] = "<font color='" .. stringColor .. "'>" .. s .. "</font>"
        return token
    end)

    -- Escape HTML
    text = text:gsub("<", "&lt;"):gsub(">", "&gt;")

    -- 🟢 CHANGED: Get fresh colors based on current theme
    local SyntaxColors = getSyntaxColors()
    
    -- Highlight keywords
    for k, c in pairs(SyntaxColors) do
        text = text:gsub("(%f[%w]"..k.."%f[%W])", "<font color='"..c.."'>%1</font>")
    end

    -- Restore strings
    for token, colored in pairs(strings) do
        text = text:gsub(token, function() return colored end)
    end

    return text
end

	local function hash(str: string): number
		local hash = 2166136261
	
		for i = 1, #str do
			local c = str:sub(i, i)
			local byte = string.byte(c)
			hash = bit32.bxor(hash, byte)
			hash = (hash * 16777619) % 2 ^ 32
		end
	
		return hash
	end;
	
local function UpdateLineNumbers(editor, linesFrame)
    local lines = #editor.Text:split("\n")
    local lineText = ""
    
    for i = 1, lines do
        lineText = lineText .. i .. "\n"
    end
    
    linesFrame.Text = lineText
end

local Data = {
    Editor = {
        CurrentTab = nil,
        CurrentOrder = 0,
        Tabs = {},
        IsEditing = false -- Added this line
    },
    Saves = {
        Scripts = {}
    },
    Search = {
        CurrentFilter = "All"  -- 🟢 ADD THIS
    }
};
	
	local InitTabs = {};
local function sanitizeFilename(name)
    name = string.gsub(name, '[<>:"/\\|?*]', "")
    name = string.gsub(name, "^%.+", "")
    name = string.gsub(name, "%.+$", "")
    if name == "" then name = "Script" end
    return name
end
	-- [[ UPDATED UI EVENTS & LOGIC ]]
local UIEvents = {};

-- 🟢 PRE-INITIALIZE UIEvents.Search (Prevents nil error)
UIEvents.Search = {
    Refresh = function() 
        -- Placeholder - Will be replaced when Search tab loads
    end
}

	UIEvents = {
		EditorTabs = {
			getDuplicatedName = function(baseName, existingNames)
				if not existingNames[baseName] then return baseName; end
				local counter = 1;
				local newName;
				repeat
					newName = baseName .. " " .. counter;
					counter = counter + 1;
				until not existingNames[newName]
				return newName;
			end,

			getHighestOrder = function()
				local HighestOrder = -1;
				for _, v in pairs(Data.Editor.Tabs) do
					if (v[2] > HighestOrder) then HighestOrder = v[2]; end
				end
				return HighestOrder;
			end,

			createTab = function(TabName, Content, isTemp)
				local HighestOrder = UIEvents.EditorTabs.getHighestOrder();
				Content = Content or "";
				
				if not isTemp then
					TabName = sanitizeFilename(TabName)
					TabName = UIEvents.EditorTabs.getDuplicatedName(TabName, Data.Editor.Tabs or {});
					-- 🟢 PATH: Punk-X-Files/scripts/
					-- ✅ FIXED: Use safe HttpService
					if HttpService then
						pcall(function()
							CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. TabName .. ".lua", HttpService:JSONEncode({
								Name = TabName, Content = Content, Order = (HighestOrder + 1)
							}));
						end)
					else
						warn("[PUNK X] Cannot save tab - HttpService unavailable")
					end
				end

				if Data.Editor.Tabs then
					Data.Editor.Tabs[TabName] = { Content, (HighestOrder + 1) };
				end
				UIEvents.EditorTabs.switchTab(TabName);
				UIEvents.EditorTabs.updateUI();
			end,

			saveTab = function(tabName, Content, isExplicitSave)
				tabName = tabName or Data.Editor.CurrentTab;
				if not tabName then return end
				Content = StripSyntax(Content or "")

				if Data.Editor.EditingSavedFile == tabName then
					if isExplicitSave then
						UIEvents.Saved.SaveFile(tabName, Content, true) 
						createNotification("File Saved: " .. tabName, "Success", 3)
					else
						local TabData = Data.Editor.Tabs[tabName];
						if TabData then
							-- 🟢 PATH: Punk-X-Files/scripts/
							-- ✅ FIXED: Use safe HttpService
							if HttpService then
								pcall(function()
									CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. tabName .. ".lua", HttpService:JSONEncode({
										Name = tabName, Content = Content, Order = TabData[2]
									}));
								end)
							else
								warn("[PUNK X] Cannot save tab - HttpService unavailable")
							end
							Data.Editor.Tabs[tabName] = { Content, TabData[2] };
						end
					end
					return
				end

				if isExplicitSave then
					UIEvents.Saved.SaveFile(tabName, Content, true) 
					createNotification("Saved to: " .. tabName, "Success", 3)
				else
					local TabData = Data.Editor.Tabs[tabName];
					if (TabData) then
						-- 🟢 PATH: Punk-X-Files/scripts/
						-- ✅ FIXED: Use safe HttpService
						if HttpService then
							pcall(function()
								CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. tabName .. ".lua", HttpService:JSONEncode({
									Name = tabName, Content = Content, Order = TabData[2]
								}));
							end)
						else
							warn("[PUNK X] Cannot save tab - HttpService unavailable")
						end
						Data.Editor.Tabs[tabName] = { Content, TabData[2] };
					end
				end
			end,

			switchTab = function(ToTab)
				if Data.Editor.EditingSavedFile and Data.Editor.EditingSavedFile ~= ToTab then
					local editingName = Data.Editor.EditingSavedFile
					createNotification("Editing Cancelled", "Warn", 3)
					-- 🟢 PATH: Punk-X-Files/scripts/
					CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. editingName .. ".lua");
					Data.Editor.Tabs[editingName] = nil;
					Data.Editor.EditingSavedFile = nil
					UIEvents.EditorTabs.updateUI()
				end

				if Data.Editor.Tabs[ToTab] then
					local Editor = Pages:WaitForChild("Editor");
					local EditorFrame = Editor:WaitForChild("Editor").Input; -- This is the TextBox
					local OldTab = Data.Editor.CurrentTab;

					-- 1. Save the old tab as RAW text before leaving it
					if (OldTab and Data.Editor.Tabs[OldTab] and OldTab ~= Data.Editor.EditingSavedFile) then
						Data.Editor.Tabs[OldTab][1] = StripSyntax(EditorFrame.Text)
					end

					Data.Editor.CurrentTab = ToTab;
					local TabContent = Data.Editor.Tabs[ToTab][1] or "";
					
					-- 2. CLEAN the new content (remove any leftover HTML tags)
					TabContent = StripSyntax(TabContent)

					-- 3. APPLY to the TextBox (View mode = RichText ON)
					if #TabContent > 50000 then -- Reduced limit slightly for better mobile speed
						EditorFrame.RichText = false 
						EditorFrame.Text = TabContent
					else
						EditorFrame.RichText = true
						EditorFrame.Text = ApplySyntax(TabContent)
					end

					UIEvents.EditorTabs.updateUI();
				end
			end,

			delTab = function(Name)
				local total = 0;
				for i, v in pairs(Data.Editor.Tabs) do total = total + 1; end
				
				local isEditing = (Data.Editor.EditingSavedFile == Name)
				if ((total - 1) <= 0) and not isEditing then
					createNotification("Cannot delete last tab!", "Error", 5)
					return;
				end
				
				local HighestOrder = UIEvents.EditorTabs.getHighestOrder();
				for i, v in pairs(Data.Editor.Tabs) do
					if (i ~= Name) then UIEvents.EditorTabs.switchTab(i); end
				end
				
				-- 🟢 PATH: Punk-X-Files/scripts/
				if not isEditing then CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. Name .. ".lua"); end
				Data.Editor.Tabs[Name] = nil;
				
				if isEditing then
					createNotification("Editing Cancelled", "Warn", 3)
					Data.Editor.EditingSavedFile = nil
					UIEvents.Nav.goTo("Saved") 
				end
				UIEvents.EditorTabs.updateUI();
			end,

			updateUI = function()
				for _, v in pairs(Pages.Editor.Tabs:GetChildren()) do
					if v:GetAttribute("no") then continue end
					if v:IsA("TextButton") then v:Destroy() end
				end
				
				if Pages.Editor.Tabs:FindFirstChild("Create") then
					-- Hides "+" button if editing
					Pages.Editor.Tabs.Create.Visible = (Data.Editor.EditingSavedFile == nil and Data.Editor.IsEditing == false)
				end

				local total = 0;
				for i, v in pairs(Data.Editor.Tabs) do
					-- Isolation: If editing, only show the active tab
					if (Data.Editor.EditingSavedFile and i ~= Data.Editor.EditingSavedFile) or (Data.Editor.IsEditing and i ~= Data.Editor.CurrentTab) then 
						continue 
					end
					
					total = total + 1;
					local new = script.Yo:Clone();
					new.Parent = Pages.Editor.Tabs;
					new.Title.Text = i;
					new.Name = i;
					new.MouseButton1Click:Connect(function() UIEvents.EditorTabs.switchTab(i); end);
					new.Delete.MouseButton1Click:Connect(function() UIEvents.EditorTabs.delTab(i); end);
					new.LayoutOrder = v[2];
					if (Data.Editor.CurrentTab == i) then
						new.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255);
					end
				end
				
				local Editor = Pages:WaitForChild("Editor");
				local Panel = Editor:WaitForChild("Panel");
				local EditorFrame = Editor:WaitForChild("Editor");
				
				if ((total <= 0) or (Data.Editor.CurrentTab == nil)) then
					EditorFrame.Visible = false; Panel.Visible = false;
				else
					EditorFrame.Visible = true; Panel.Visible = true;
				end
			end,

			RenameFile = function(NewName, TargetTab)
				if Data.Editor.EditingSavedFile == TargetTab then
					NewName = UIEvents.EditorTabs.getDuplicatedName(NewName, Data.Saves.Scripts or {});
					if not Data.Saves.Scripts[NewName] then
						UIEvents.Saved.SaveFile(NewName, Data.Editor.Tabs[TargetTab][1], false);
						UIEvents.Saved.DelFile(TargetTab);
						Data.Editor.EditingSavedFile = NewName
						Data.Editor.Tabs[NewName] = Data.Editor.Tabs[TargetTab]
						Data.Editor.Tabs[TargetTab] = nil
						Data.Editor.CurrentTab = NewName
						UIEvents.EditorTabs.updateUI()
						createNotification("Saved Script Renamed", "Success", 3)
					end
					return
				end
				NewName = UIEvents.EditorTabs.getDuplicatedName(NewName, Data.Editor.Tabs or {});
				if not Data.Editor.Tabs[NewName] then
					if Data.Editor.Tabs then Data.Editor.Tabs[NewName] = Data.Editor.Tabs[TargetTab] end
					-- 🟢 PATH: Punk-X-Files/scripts/
					-- ✅ FIXED: Use safe HttpService
					if HttpService then
						pcall(function()
							CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. NewName .. ".lua", HttpService:JSONEncode({
								Name = NewName, Content = Data.Editor.Tabs[TargetTab][1], Order = Data.Editor.Tabs[TargetTab][2]
							}));
						end)
					else
						warn("[PUNK X] Cannot rename file - HttpService unavailable")
					end
					CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. TargetTab .. ".lua");
					Data.Editor.Tabs[TargetTab] = nil
					Data.Editor.CurrentTab = NewName
					UIEvents.EditorTabs.updateUI();
				end
			end
		},

		Saved = {
			SaveFile = function(Name, Content, Overwrite)
				Name = sanitizeFilename(Name)
				if not Overwrite then 
					Name = UIEvents.EditorTabs.getDuplicatedName(Name, Data.Saves.Scripts or {}); 
				end
				-- 🟢 PATH: Punk-X-Files/saves/
				-- ✅ FIXED: Use safe HttpService
				if HttpService then
					pcall(function()
						CLONED_Detectedly.writefile("Punk-X-Files/saves/" .. Name .. ".lua", HttpService:JSONEncode({
							Name = Name, Content = Content
						}));
					end)
				else
					warn("[PUNK X] Cannot save file - HttpService unavailable")
					return
				end
				Data.Saves.Scripts[Name] = Content;
				UIEvents.Saved.UpdateUI();
				if not Overwrite then createNotification("Saved to: " .. Name, "Success", 3) end
			end,

			DelFile = function(Name)
				-- 🟢 PATH: Punk-X-Files/saves/
				if CLONED_Detectedly.isfile("Punk-X-Files/saves/" .. Name .. ".lua") then
					CLONED_Detectedly.delfile("Punk-X-Files/saves/" .. Name .. ".lua");
				end
				Data.Saves.Scripts[Name] = nil;
				UIEvents.Saved.UpdateUI();
			end,

			UpdateUI = function()
    for _, v in pairs(Pages.Saved.Scripts:GetChildren()) do
        if v:GetAttribute("no") then continue end
        if v:IsA("CanvasGroup") then v:Destroy() end
    end
    
    -- 🟢 GET CURRENT THEME
    local currentTheme = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    
    for i, v in pairs(Data.Saves.Scripts) do
        local new = script.SaveTemplate:Clone();
        new.Parent = Pages.Saved.Scripts;
        new.Name = i;
        new.Title.Text = i;
        
        -- 🟢 APPLY THEME TO SPACER
        if new.Misc.Panel:FindFirstChild("Spacer") then
            new.Misc.Panel.Spacer.BackgroundColor3 = currentTheme
        end
	-- 🟢 APPLY THEME TO EXECUTE ICON
        if new.Misc.Panel:FindFirstChild("Execute") and new.Misc.Panel.Execute:FindFirstChild("Icon") then
            new.Misc.Panel.Execute.Icon.ImageColor3 = getSafeTheme()
        end
        
        new.Misc.Panel.Execute.MouseButton1Click:Connect(function()
						UIEvents.Executor.RunCode(v)();
					end)

					new.Misc.Panel.Delete.MouseButton1Click:Connect(function()
						UIEvents.Saved.DelFile(i);
					end);

					new.Misc.Panel.Edit.MouseButton1Click:Connect(function()
						if Data.Editor.EditingSavedFile == i then
							UIEvents.Nav.goTo("Editor")
							return
						end
						if Data.Editor.EditingSavedFile then
							local old = Data.Editor.EditingSavedFile
							-- 🟢 PATH: Punk-X-Files/scripts/
							CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. old .. ".lua")
							Data.Editor.Tabs[old] = nil
							Data.Editor.EditingSavedFile = nil
						end
						Data.Editor.EditingSavedFile = i
						UIEvents.EditorTabs.createTab(i, v, true)
						UIEvents.Nav.goTo("Editor")
						createNotification("Editing: " .. i, "Info", 3)
					end)

					-- 🟢 PATH: Punk-X-Files/autoexec/
					local autoExecPath = "Punk-X-Files/autoexec/" .. i .. ".lua"
					local isAutoOn = CLONED_Detectedly.isfile(autoExecPath)
					
					if isAutoOn then
						new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(85, 255, 85)
					else
						new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(200, 200, 200)
					end
					
					new.Misc.Panel.AutoExec.MouseButton1Click:Connect(function()
						if CLONED_Detectedly.isfile(autoExecPath) then
							CLONED_Detectedly.delfile(autoExecPath)
							new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(200, 200, 200)
							createNotification("AutoExec Deactivated", "Error", 3)
						else
							CLONED_Detectedly.writefile(autoExecPath, v)
							new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(85, 255, 85)
							createNotification("AutoExec Activated", "Success", 3)
						end
					end)

					new.Title.FocusLost:Connect(function(press)
						local newName = new.Title.Text;
						newName = string.gsub(newName, "^%s*(.-)%s*$", "%1")
						local isEmpty = #newName <= 0;
						if (not press or isEmpty or (newName == i)) then
							new.Title.Text = i;
							return;
						end
						UIEvents.Saved.RenameFile(newName, i);
					end);
				end
			end,

			RenameFile = function(NewName, TargetTab)
				NewName = UIEvents.EditorTabs.getDuplicatedName(NewName, Data.Saves.Scripts or {});
				if not Data.Saves.Scripts[NewName] then
					UIEvents.Saved.SaveFile(NewName, Data.Saves.Scripts[TargetTab], false);
					UIEvents.Saved.DelFile(TargetTab);
					createNotification("Renamed to: " .. NewName, "Success", 3)
				end
			end
		},

Executor = {
    RunCode = function(content)
        local func, x = loadstring(content);
        if not func then
            -- ✅ FIXED: Silent error handling, no console spam
            createNotification("Syntax Error: " .. tostring(x), "Error", 5);
            warn("[PUNK X] Script error:", x)
            return function() end;
        end
        -- Show success notification only if code is valid
        createNotification("Executed!", "Success", 5);
        -- 🟢 STANDARD EXECUTION (Executed scripts land in Workspace Root)
        return func
    end
},
		Key = {
			Save = function(Key)
				-- 🟢 PATH: Punk-X-Files/punk-x-key.txt
				CLONED_Detectedly.writefile("Punk-X-Files/punk-x-key.txt", Key);
			end
		},
	Nav = {
    goTo = function(Name)
        for _, page in pairs(Pages:GetChildren()) do
            if page:IsA("Frame") and page ~= Pages.UIPageLayout then page.Visible = false end
        end
        if Pages:FindFirstChild(Name) then
            Pages[Name].Visible = true
            Pages.UIPageLayout:JumpTo(Pages[Name])
        end
        local Button = nil
        for _, frame in ipairs(Nav:GetChildren()) do
            if frame:IsA("Frame") then
                for _, btn in ipairs(frame:GetChildren()) do
                    if btn.Name == Name then Button = btn; break; end
                end
            end
        end
        if Button then
            EnableFrame.Visible = true
            Pages.Visible = true 
            local TargetSize = UDim2.new(0, Button.AbsoluteSize.X, 0, Button.AbsoluteSize.Y)
            local TargetPosition = Button.AbsolutePosition - EnableFrame.Parent.AbsolutePosition
            local TargetPos = UDim2.new(0, TargetPosition.X, 0, TargetPosition.Y)
            
            -- ✅ FIXED: Use safe TweenService variable
            if TweenService then
                TweenService:Create(EnableFrame, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Position = TargetPos, Size = TargetSize, BackgroundTransparency = 0
                }):Play()
            end
        end
    end
}
	};

 -- 🟢 UI FIX: PREVENT CLICK-THROUGH
    local Popups = script.Parent:WaitForChild("Popups")
    Popups.Active = true          -- Blocks clicks from going behind
    Popups.Selectable = true
    Popups.Main.Active = true     -- Blocks clicks inside the box
    Popups.Main.Selectable = true

	

-- 🟢 REPLACE THE ENTIRE InitTabs.Settings FUNCTION WITH THIS FIXED VERSION

InitTabs.Settings = function()
    -- 🟢 SETTINGS PERSISTENCE SYSTEM
    local SETTINGS_FILE = "Punk-X-Files/punk-x-settings.json"
    
    -- Default Settings Structure
    local function getDefaultSettings()
        return {
            -- APPEARANCE
            uiTransparency = 0.3,
            censorName = false,
            
            -- PRIVACY & SECURITY
            scamProtection = false,
            advancedSettings = false,
            purchaseGuard = false,
            teleportGuard = false,
            uiClickGuard = false,
            scriptDetection = false,
            disableRobux = false,
            verifyTeleports = false,
            
            -- PERFORMANCE
            antiAFK = false,
			lowGraphics = false,
            potatoMode = false,
            blankScreen = false,
            fpsBoostEnabled = false,
            fpsBoostPreset = "Light",
            forceFOVEnabled = false,
            fovValue = 70,
            
            -- ADVANCED
            autoRejoin = false
        }
    end
    
    -- Save Settings to File
   local function saveSettings(settings)
    pcall(function()
        if not CLONED_Detectedly.isfolder("Punk-X-Files") then
            CLONED_Detectedly.makedir("Punk-X-Files")
        end
        
        -- ✅ Use safe HttpService variable
        if not HttpService then
            warn("[PUNK X] Cannot save settings - HttpService unavailable")
            return
        end
        
        CLONED_Detectedly.writefile(SETTINGS_FILE, HttpService:JSONEncode(settings))
       --print("[SETTINGS] ✅ Settings saved successfully")
    end)
end
    
    -- Load Settings from File (with corruption protection)
local function loadSettings()
    -- ✅ Wait for file system to initialize
    local maxWait = 5
    local waited = 0
    while not CLONED_Detectedly.isfolder("Punk-X-Files") and waited < maxWait do
        task.wait(0.1)
        waited = waited + 0.1
    end
    
    local success, data = pcall(function()
        if not CLONED_Detectedly.isfile(SETTINGS_FILE) then
            return nil
        end
        if not HttpService then
            warn("[PUNK X] HttpService unavailable for settings loading")
            return nil
        end
        local content = CLONED_Detectedly.readfile(SETTINGS_FILE)
        return HttpService:JSONDecode(content)
    end)
    
    if not success or type(data) ~= "table" then
        -- Only show "corrupted" warning if file exists but failed to load
        if CLONED_Detectedly.isfile(SETTINGS_FILE) then
            createNotification("Settings corrupted, resetting to defaults", "Warn", 3)
        end
        local defaults = getDefaultSettings()
        saveSettings(defaults)
        return defaults
    end
        
        -- Merge with defaults (in case new settings were added)
        local defaults = getDefaultSettings()
        for key, value in pairs(defaults) do
            if data[key] == nil then
                data[key] = value
            end
        end
        
        return data
    end
    
    -- Global Settings Table
    local PunkXSettings = getDefaultSettings()
    
    -- 🟢 1. CLEANUP (Root Path)
    if CLONED_Detectedly.isfile("Punk-X-Files/theme.json") then
        -- Don't delete! We need to read it first
        -- CLONED_Detectedly.delfile("Punk-X-Files/theme.json") -- REMOVED
    end
    
    local Settings = Pages:WaitForChild("Settings")
    local Scripts = Settings.Scripts
    
    -- Clear old UI
    for _, child in pairs(Scripts:GetChildren()) do
        if not child:IsA("UIListLayout") and not child:IsA("UIPadding") and not child:IsA("UICorner") and not child:IsA("UIStroke") then
            child:Destroy()
        end
    end
    
    -- 🟢 2. THEME SYSTEM (Root Path)
    local Themes = {
        {name = "Neon Purple", color = Color3.fromRGB(160, 85, 255)},
        {name = "Neon Pink", color = Color3.fromRGB(255, 20, 147)},
        {name = "Fluorescent Cyan", color = Color3.fromRGB(0, 255, 255)},
        {name = "Neon Green", color = Color3.fromRGB(57, 255, 20)},
        {name = "Bright Yellow", color = Color3.fromRGB(255, 255, 0)},
        {name = "Neon Scarlet", color = Color3.fromRGB(255, 36, 0)},
        {name = "Vibrant Coral", color = Color3.fromRGB(255, 127, 80)},
        {name = "Neon Blue", color = Color3.fromRGB(0, 191, 255)}
    }
    
    -- 🔴 FIX: Initialize with default first, then load saved
    getgenv().CurrentTheme = Color3.fromRGB(160, 85, 255)
    
    -- 🟢 PATH: Punk-X-Files/theme.json
  local function LoadTheme()
    -- ✅ Wait for file system to initialize
    local maxWait = 5
    local waited = 0
    while not CLONED_Detectedly.isfolder("Punk-X-Files") and waited < maxWait do
        task.wait(0.1)
        waited = waited + 0.1
    end
    
    if CLONED_Detectedly.isfile("Punk-X-Files/theme.json") then
        local success, data = pcall(function()
            if not HttpService then
                warn("[PUNK X] HttpService unavailable for theme loading")
                return nil
            end
            return HttpService:JSONDecode(CLONED_Detectedly.readfile("Punk-X-Files/theme.json"))
        end)
        if success and data and data.r and data.g and data.b then
            local loadedColor = Color3.fromRGB(data.r, data.g, data.b)
            getgenv().CurrentTheme = loadedColor
           -- print("[THEME] ✅ Loaded saved theme:", loadedColor)
            return loadedColor
        end
    end
   -- print("[THEME] No saved theme, using default purple")
    return Color3.fromRGB(160, 85, 255)
end
    
   local function SaveTheme(color)
    -- Ensure folder exists
    if not CLONED_Detectedly.isfolder("Punk-X-Files") then 
        CLONED_Detectedly.makedir("Punk-X-Files") 
    end
    
    -- ✅ ADD SAFETY CHECK
    if not HttpService then
        warn("[PUNK X] Cannot save theme - HttpService unavailable")
        return
    end
    
    pcall(function()
        CLONED_Detectedly.writefile("Punk-X-Files/theme.json", HttpService:JSONEncode({
            r = math.floor(color.R * 255),
            g = math.floor(color.G * 255),
            b = math.floor(color.B * 255)
        }))
    end)
end

 local function ApplyTheme(color)
        local oldTheme = getgenv().CurrentTheme
        getgenv().CurrentTheme = color
        SaveTheme(color)
        
        -- [[ FIX: FORCE SEARCH PAGE TO UPDATE ]]
        if UIEvents.Search and UIEvents.Search.Refresh then
            task.spawn(UIEvents.Search.Refresh)
        end
        
        -- 1. UPDATE STROKES
        for _, obj in pairs(script.Parent:GetDescendants()) do
            if obj:IsA("UIStroke") then
                local isThemeStroke = (
                    obj.Color == Color3.fromRGB(160, 85, 255) or 
                    obj.Color == oldTheme or
                    obj.Thickness <= 2
                )
                if isThemeStroke then obj.Color = color end
            end
        end
        
        -- 2. UPDATE TOGGLES/CARDS
        if Pages.Settings and Pages.Settings:FindFirstChild("Scripts") then
            for _, card in pairs(Pages.Settings.Scripts:GetChildren()) do
                if card:IsA("Frame") or card:IsA("CanvasGroup") then
                    local stroke = card:FindFirstChild("UIStroke")
                    if stroke then stroke.Color = color end
                    local toggleContainer = card:FindFirstChild("ToggleContainer")
                    if toggleContainer then
                        local toggleBg = toggleContainer:FindFirstChild("ToggleBg")
                        if toggleBg and toggleBg:GetAttribute("IsToggleOn") then
                            toggleBg.BackgroundColor3 = color
                        end
                    end
                end
            end
        end

        -- 3. UPDATE SLIDERS
        for _, slider in pairs(Scripts:GetDescendants()) do
            if slider.Name == "sliderFill" and slider:IsA("Frame") then
                slider.BackgroundColor3 = color
            end
        end
        
        -- 4. UPDATE ENABLEFRAME
        if Main:FindFirstChild("EnableFrame") then
            Main.EnableFrame.BackgroundColor3 = color
            if Main.EnableFrame:FindFirstChild("Glow") then
                Main.EnableFrame.Glow.BackgroundColor3 = color
                Main.EnableFrame.Glow.ImageColor3 = color
            end
        end
        
        -- 5. UPDATE EDITOR TABS
        if Pages.Editor and Pages.Editor:FindFirstChild("Tabs") then
            for _, tab in pairs(Pages.Editor.Tabs:GetChildren()) do
                if tab:IsA("TextButton") and tab.Name == Data.Editor.CurrentTab then
                    tab.BackgroundColor3 = color
                end
            end
        end
        
        -- 6. UPDATE EDITOR ICONS
        if Pages.Editor and Pages.Editor:FindFirstChild("Panel") then
            local panel = Pages.Editor.Panel
            if panel:FindFirstChild("Execute") and panel.Execute:FindFirstChild("Icon") then
                panel.Execute.Icon.ImageColor3 = color
            end
            if panel:FindFirstChild("Spacer1") then panel.Spacer1.BackgroundColor3 = color end
            if panel:FindFirstChild("Spacer2") then panel.Spacer2.BackgroundColor3 = color end
        end

        -- 7. UPDATE SEARCH RESULTS (Icons + Spacers)
        if Pages.Search and Pages.Search:FindFirstChild("Scripts") then
            for _, card in pairs(Pages.Search.Scripts:GetChildren()) do
                if card:IsA("CanvasGroup") and card:FindFirstChild("Misc") then
                    local panel = card.Misc:FindFirstChild("Panel")
                    if panel then
                        if panel:FindFirstChild("Execute") and panel.Execute:FindFirstChild("Icon") then
                            panel.Execute.Icon.ImageColor3 = color
                        end
                        if panel:FindFirstChild("Spacer1") then
                            panel.Spacer1.BackgroundColor3 = color
                        end
                    end
                end
            end
        end

        -- 8. UPDATE SAVED SCRIPTS (Icons + Spacers)
        if Pages.Saved and Pages.Saved:FindFirstChild("Scripts") then
            for _, card in pairs(Pages.Saved.Scripts:GetChildren()) do
                if card:IsA("CanvasGroup") and card:FindFirstChild("Misc") then
                    local panel = card.Misc:FindFirstChild("Panel")
                    if panel then
                        if panel:FindFirstChild("Execute") and panel.Execute:FindFirstChild("Icon") then
                            panel.Execute.Icon.ImageColor3 = color
                        end
                        if panel:FindFirstChild("Spacer") then
                            panel.Spacer.BackgroundColor3 = color
                        end
                    end
                end
            end
        end
        
        -- 9. UPDATE HOME KEY
        if Pages.Home and Pages.Home:FindFirstChild("Key") then
            local keyBox = Pages.Home.Key
            if keyBox:FindFirstChild("UIStroke") then keyBox.UIStroke.Color = color end
            if keyBox.Folder and keyBox.Folder:FindFirstChild("Background") then
                keyBox.Folder.Background.ImageColor3 = color
            end
            if keyBox:FindFirstChild("KeyText") then
                keyBox.KeyText.Text = string.gsub(
                    keyBox.KeyText.Text,
                    '<font color="rgb%(%d+, %d+, %d+%)">',
                    '<font color="rgb(' .. math.floor(color.R * 255) .. ', ' .. math.floor(color.G * 255) .. ', ' .. math.floor(color.B * 255) .. ')">'
                )
            end
        end
        
        -- 10. UPDATE CLOSE BTN
        if Leftside and Leftside:FindFirstChild("Close") then
            Leftside.Close.BackgroundColor3 = color
        end
        
        -- 11. UPDATE NAV
        if Nav and Nav:FindFirstChild("Page1") then
            for _, btn in pairs(Nav.Page1:GetChildren()) do
                if btn:IsA("TextButton") and btn.BackgroundColor3 == oldTheme then
                    btn.BackgroundColor3 = color
                end
            end
        end
        
        -- 12. UPDATE GRADIENT
        for _, obj in pairs(script.Parent:GetDescendants()) do
            if obj:IsA("UIGradient") and obj.Parent.Name == "Main" then
                local r1 = math.clamp(math.floor(color.R * 255 * 0.8), 0, 255)
                local g1 = math.clamp(math.floor(color.G * 255 * 0.5), 0, 255)
                local b1 = math.clamp(math.floor(color.B * 255 * 1.2), 0, 255)
                
                local r2 = math.clamp(math.floor(color.R * 255 * 0.4), 0, 255)
                local g2 = math.clamp(math.floor(color.G * 255 * 0.25), 0, 255)
                local b2 = math.clamp(math.floor(color.B * 255 * 0.7), 0, 255)
                
                local newColorSeq = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(r1, g1, b1)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(r2, g2, b2))
                }
                obj.Color = newColorSeq
            end
        end
        
        -- 13. UPDATE DROPDOWN STROKES & SEPARATORS
        for _, obj in pairs(Scripts:GetDescendants()) do
            if obj.Name == "ThemeStroke" and obj:IsA("UIStroke") then
                obj.Color = color
            elseif obj.Name == "ThemeSeparator" and obj:IsA("Frame") then
                obj.BackgroundColor3 = color
            end
        end
        
       -- 🟢 NEW: Re-highlight editor text with new theme
        if Pages.Editor and Pages.Editor:FindFirstChild("Editor") then
            local editor = Pages.Editor.Editor:FindFirstChild("Input")
            if editor then
                -- 1. Strip tags to get raw text
                local raw = StripSyntax(editor.Text)
                
                -- 2. Toggle RichText to force a visual reset
                editor.RichText = false
                editor.Text = raw
                
                -- 3. Re-apply syntax with NEW theme colors
                task.spawn(function()
                    task.wait() -- Single frame wait to allow renderer to catch up
                    editor.RichText = true
                    editor.Text = ApplySyntax(raw)
                end)
            end
        end
        
       -- print("[THEME] Theme applied successfully!")
    end
    
    -- 🔴 CRITICAL FIX: Load theme FIRST before building UI
    local savedTheme = LoadTheme()
    getgenv().CurrentTheme = savedTheme

    -- Helper Functions (createSectionHeader, createCard, etc. - KEEP AS IS)
    local function createSectionHeader(text, order)
        local header = Instance.new("TextLabel", Scripts)
        header.BackgroundTransparency = 1
        header.Size = UDim2.new(1, 0, 0, 35)
        header.Font = Enum.Font.GothamBold
        header.TextSize = 16
        header.TextColor3 = Color3.fromRGB(255, 255, 255)
        header.TextXAlignment = Enum.TextXAlignment.Left
        header.Text = text
        header.LayoutOrder = order
        return header
    end
    
    local function createCard(title, description, order)
        local card = Instance.new("Frame", Scripts)
        card.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
        card.Size = UDim2.new(1, 0, 0, 60)
        card.BorderSizePixel = 0
        card.LayoutOrder = order
        card.Name = title
        
        local corner = Instance.new("UICorner", card)
        corner.CornerRadius = UDim.new(0, 12)
        
        local stroke = Instance.new("UIStroke", card)
        stroke.Transparency = 0.8
        stroke.Color = savedTheme -- 🔴 USE LOADED THEME
        stroke.Thickness = 1
        
        local layout = Instance.new("UIListLayout", card)
        layout.HorizontalFlex = Enum.UIFlexAlignment.Fill
        layout.Wraps = true
        layout.VerticalAlignment = Enum.VerticalAlignment.Center
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        
        local padding = Instance.new("UIPadding", card)
        padding.PaddingTop = UDim.new(0, 8)
        padding.PaddingRight = UDim.new(0, 12)
        padding.PaddingLeft = UDim.new(0, 12)
        padding.PaddingBottom = UDim.new(0, 8)
        
        local titleLabel = Instance.new("TextLabel", card)
        titleLabel.BackgroundTransparency = 1
        titleLabel.Size = UDim2.new(0.7, 0, 0.5, 0)
        titleLabel.Font = Enum.Font.GothamBold
        titleLabel.TextSize = 14
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        titleLabel.TextXAlignment = Enum.TextXAlignment.Left
        titleLabel.TextYAlignment = Enum.TextYAlignment.Top
        titleLabel.Text = title
        titleLabel.TextWrapped = true
        titleLabel.TextScaled = true
        titleLabel.LayoutOrder = -2
        
        if description then
            local descLabel = Instance.new("TextLabel", card)
            descLabel.BackgroundTransparency = 1
            descLabel.Size = UDim2.new(0.7, 0, 0.4, 0)
            descLabel.Font = Enum.Font.Gotham
            descLabel.TextSize = 11
            descLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
            descLabel.TextXAlignment = Enum.TextXAlignment.Left
            descLabel.TextYAlignment = Enum.TextYAlignment.Top
            descLabel.Text = description
            descLabel.TextWrapped = true
            descLabel.LayoutOrder = -1
        end
        return card
    end
    
    local function createButton(card, btnText, color, callback)
        local btn = Instance.new("TextButton", card)
        btn.BackgroundColor3 = color
        btn.Size = UDim2.new(0.25, 0, 0.7, 0)
        btn.Text = btnText
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 12
        btn.BorderSizePixel = 0
        
        local btnCorner = Instance.new("UICorner", btn)
        btnCorner.CornerRadius = UDim.new(0, 8)
        
        btn.MouseButton1Click:Connect(callback)
        return btn
    end

    local function createToggle(card, callback)
        local toggleContainer = Instance.new("CanvasGroup", card)
        toggleContainer.BackgroundTransparency = 1
        toggleContainer.Size = UDim2.new(0.12, 0, 0.8, 0)
        toggleContainer.Position = UDim2.new(0.88, 0, 0.1, 0)
        toggleContainer.Name = "ToggleContainer"
        
        local toggleBg = Instance.new("Frame", toggleContainer)
        toggleBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        toggleBg:SetAttribute("IsToggleOn", false) 
        toggleBg.Size = UDim2.new(1, 0, 0.7, 0)
        toggleBg.AnchorPoint = Vector2.new(0.5, 0.5)
        toggleBg.Position = UDim2.new(0.5, 0, 0.5, 0)
        toggleBg.BorderSizePixel = 0
        toggleBg.Name = "ToggleBg"
        
        local toggleCorner = Instance.new("UICorner", toggleBg)
        toggleCorner.CornerRadius = UDim.new(1, 0)
        
        local toggleBtn = Instance.new("TextButton", toggleBg)
        toggleBtn.BackgroundTransparency = 1
        toggleBtn.Size = UDim2.new(1, 0, 1, 0)
        toggleBtn.Text = ""
        
        local toggleLayout = Instance.new("UIListLayout", toggleBtn)
        toggleLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        toggleLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        toggleLayout.Padding = UDim.new(0, 3)
        
        local togglePadding = Instance.new("UIPadding", toggleBtn)
        togglePadding.PaddingLeft = UDim.new(0, 3)
        togglePadding.PaddingRight = UDim.new(0, 3)
        
        local circle = Instance.new("ImageLabel", toggleBtn)
        circle.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
        circle.ImageColor3 = Color3.fromRGB(232, 229, 255)
        circle.Image = "rbxassetid://5552526748"
        circle.Size = UDim2.new(0, 20, 0, 20)
        circle.BackgroundTransparency = 1
        circle.ScaleType = Enum.ScaleType.Fit
        
        local isEnabled = false
        toggleBtn.MouseButton1Click:Connect(function()
            isEnabled = not isEnabled
            toggleBg:SetAttribute("IsToggleOn", isEnabled)
            toggleLayout.HorizontalAlignment = isEnabled and Enum.HorizontalAlignment.Right or Enum.HorizontalAlignment.Left
            toggleBg.BackgroundColor3 = isEnabled and (getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)) or Color3.fromRGB(50, 50, 60)
            callback(isEnabled)
        end)
        return toggleContainer, toggleBg
    end
    
    local function createSlider(card, callback)
        local sliderContainer = Instance.new("Frame", card)
        sliderContainer.BackgroundTransparency = 1
        sliderContainer.Size = UDim2.new(0.3, 0, 0.6, 0)
        sliderContainer.Position = UDim2.new(0.65, 0, 0.2, 0)
        
        local sliderBg = Instance.new("Frame", sliderContainer)
        sliderBg.BackgroundColor3 = Color3.fromRGB(100, 100, 110)
        sliderBg.AnchorPoint = Vector2.new(0.5, 0.5)
        sliderBg.Size = UDim2.new(1, 0, 0.4, 0)
        sliderBg.Position = UDim2.new(0.5, 0, 0.5, 0)
        sliderBg.BorderSizePixel = 0
        
        local sliderCorner = Instance.new("UICorner", sliderBg)
        sliderCorner.CornerRadius = UDim.new(0.3, 0)
        
        local sliderFill = Instance.new("Frame", sliderBg)
        sliderFill.BackgroundColor3 = savedTheme -- 🔴 USE LOADED THEME
        sliderFill.Name = "sliderFill"
        sliderFill.Size = UDim2.new(0, 0, 1, 0)
        sliderFill.Position = UDim2.new(0, 0, 0, 0)
        sliderFill.BorderSizePixel = 0
        
        local fillCorner = Instance.new("UICorner", sliderFill)
        fillCorner.CornerRadius = UDim.new(0.3, 0)
        
        local sliderBtn = Instance.new("TextButton", sliderBg)
        sliderBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        sliderBtn.AnchorPoint = Vector2.new(0.5, 0.5)
        sliderBtn.Size = UDim2.new(0, 12, 1.5, 0)
        sliderBtn.Position = UDim2.new(0, 0, 0.5, 0)
        sliderBtn.Text = ""
        sliderBtn.BorderSizePixel = 0
        
        local btnCorner = Instance.new("UICorner", sliderBtn)
        btnCorner.CornerRadius = UDim.new(0, 4)
        
        local dragging = false
        local UIS = game:GetService("UserInputService")
        
        sliderBtn.MouseButton1Down:Connect(function() dragging = true end)
        
        UIS.InputChanged:Connect(function()
            if dragging then
                local MousePos = UIS:GetMouseLocation() + Vector2.new(0, -36)
                local RelPos = MousePos - sliderBg.AbsolutePosition
                local Percent = math.clamp(RelPos.X / sliderBg.AbsoluteSize.X, 0, 1)
                sliderBtn.Position = UDim2.new(Percent, 0, 0.5, 0)
                sliderFill.Size = UDim2.new(Percent, 0, 1, 0)
                callback(Percent)
            end
        end)
        
        UIS.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)
        return sliderContainer
    end
    
    -- ========================================
    -- APPEARANCE SECTION
    -- ========================================
    
    createSectionHeader("📱 APPEARANCE", -100)
    
    -- Theme Changer
    local themeCard = Instance.new("Frame", Scripts)
    themeCard.Name = "ThemeChangerCard"
    themeCard.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    themeCard.Size = UDim2.new(1, 0, 0, 110)
    themeCard.BorderSizePixel = 0
    themeCard.LayoutOrder = -99

    local themeCorner = Instance.new("UICorner", themeCard)
    themeCorner.CornerRadius = UDim.new(0, 12)

    local themeStroke = Instance.new("UIStroke", themeCard)
    themeStroke.Name = "ThemeStroke"
    themeStroke.Transparency = 0.8
    themeStroke.Color = savedTheme -- 🔴 USE LOADED THEME
    themeStroke.Thickness = 1

    local themeLayout = Instance.new("UIListLayout", themeCard)
    themeLayout.Padding = UDim.new(0, 6)
    
    local themePadding = Instance.new("UIPadding", themeCard)
    themePadding.PaddingTop = UDim.new(0, 10)
    themePadding.PaddingRight = UDim.new(0, 10)
    themePadding.PaddingLeft = UDim.new(0, 10)
    themePadding.PaddingBottom = UDim.new(0, 10)
    
    local themeTitle = Instance.new("TextLabel", themeCard)
    themeTitle.BackgroundTransparency = 1
    themeTitle.Size = UDim2.new(1, 0, 0, 18)
    themeTitle.Font = Enum.Font.GothamBold
    themeTitle.TextSize = 14
    themeTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    themeTitle.TextXAlignment = Enum.TextXAlignment.Left
    themeTitle.Text = "🎨 Theme Changer"
    
    local pillContainer = Instance.new("Frame", themeCard)
    pillContainer.BackgroundTransparency = 1
    pillContainer.Size = UDim2.new(1, 0, 0, 65)
    pillContainer.Name = "pillContainer"
    
    local pillLayout = Instance.new("UIListLayout", pillContainer)
    pillLayout.FillDirection = Enum.FillDirection.Horizontal
    pillLayout.Padding = UDim.new(0, 6)
    pillLayout.Wraps = true
    
    for _, theme in ipairs(Themes) do
        local pill = Instance.new("TextButton", pillContainer)
        pill.BackgroundColor3 = theme.color
        pill.Size = UDim2.new(0, 65, 0, 26)
        pill.Text = ""
        pill.BorderSizePixel = 0
        
        local pillCorner = Instance.new("UICorner", pill)
        pillCorner.CornerRadius = UDim.new(0, 8)
        
pill.MouseButton1Click:Connect(function()
    ApplyTheme(theme.color)
   -- print("[THEME] Theme changed to:", theme.name)
    
    -- 🟢 If already viewing Search, update buttons now
    if Pages.UIPageLayout.CurrentPage == Pages.Search then
        if Pages.Search:FindFirstChild("FilterBar") then
            for _, btn in pairs(Pages.Search.FilterBar:GetChildren()) do
                if btn:IsA("TextButton") then
                    if btn.Name == Data.Search.CurrentFilter then
                        btn.BackgroundColor3 = theme.color
                        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
                    else
                        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
                        btn.TextColor3 = Color3.fromRGB(200, 200, 200)
                    end
                end
            end
            
            local stroke = Pages.Search.FilterBar:FindFirstChild("FilterBarStroke")
            if stroke then stroke.Color = theme.color end
        end
    end
end)
    end
    
   -- UI Transparency
    local transCard = createCard("UI Transparency", "Adjust background opacity", -98)
    transCard.Size = UDim2.new(1, 0, 0, 55)
    local transSlider = createSlider(transCard, function(v)
        script.Parent.Full.Transparency = v
        PunkXSettings.uiTransparency = v
        saveSettings(PunkXSettings)
    end)
    
-- Censored Name
    local nameCard = createCard("Censor Name", "Hide your username from the UI", -97)
    local nameToggle, nameToggleBg = createToggle(nameCard, function(enabled)
        if enabled then
            Main.Title.TextLabel.Text = "Hello, User!"
        else
            Main.Title.TextLabel.Text = "Hello, " .. game.Players.LocalPlayer.DisplayName .. "!"
        end
        PunkXSettings.censorName = enabled
        saveSettings(PunkXSettings)
    end)
    
 -- ========================================
    -- PRIVACY SECTION (FIXED SYNC)
    -- ========================================
    
    createSectionHeader("🔒 PRIVACY & SECURITY", -50)

    -- [NEW] Smart Toggle Function (Allows External Control)
    -- This replaces the standard createToggle just for this section to fix the sync bug.
    local function createSmartToggle(card, callback)
        local toggleContainer = Instance.new("CanvasGroup", card)
        toggleContainer.BackgroundTransparency = 1
        toggleContainer.Size = UDim2.new(0.12, 0, 0.8, 0)
        toggleContainer.Position = UDim2.new(0.88, 0, 0.1, 0)
        toggleContainer.Name = "ToggleContainer"
        
        local toggleBg = Instance.new("Frame", toggleContainer)
        toggleBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        toggleBg:SetAttribute("IsToggleOn", false) 
        toggleBg.Size = UDim2.new(1, 0, 0.7, 0)
        toggleBg.AnchorPoint = Vector2.new(0.5, 0.5)
        toggleBg.Position = UDim2.new(0.5, 0, 0.5, 0)
        toggleBg.BorderSizePixel = 0
        toggleBg.Name = "ToggleBg"
        
        local toggleCorner = Instance.new("UICorner", toggleBg)
        toggleCorner.CornerRadius = UDim.new(1, 0)
        
        local toggleBtn = Instance.new("TextButton", toggleBg)
        toggleBtn.BackgroundTransparency = 1
        toggleBtn.Size = UDim2.new(1, 0, 1, 0)
        toggleBtn.Text = ""
        
        local toggleLayout = Instance.new("UIListLayout", toggleBtn)
        toggleLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        toggleLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        toggleLayout.Padding = UDim.new(0, 3)
        
        local togglePadding = Instance.new("UIPadding", toggleBtn)
        togglePadding.PaddingLeft = UDim.new(0, 3)
        togglePadding.PaddingRight = UDim.new(0, 3)
        
        local circle = Instance.new("ImageLabel", toggleBtn)
        circle.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
        circle.ImageColor3 = Color3.fromRGB(232, 229, 255)
        circle.Image = "rbxassetid://5552526748"
        circle.Size = UDim2.new(0, 20, 0, 20)
        circle.BackgroundTransparency = 1
        circle.ScaleType = Enum.ScaleType.Fit
        
        -- INTERNAL STATE
        local isEnabled = false

        -- EXTERNAL CONTROL FUNCTION
        local function setState(newState, silent)
            isEnabled = newState
            
            -- Update Visuals
            toggleBg.BackgroundColor3 = isEnabled and (getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)) or Color3.fromRGB(50, 50, 60)
            toggleLayout.HorizontalAlignment = isEnabled and Enum.HorizontalAlignment.Right or Enum.HorizontalAlignment.Left
            toggleBg:SetAttribute("IsToggleOn", isEnabled)
            
            -- Run Logic (if not silent)
            if not silent then
                callback(isEnabled)
            end
        end
        
        toggleBtn.MouseButton1Click:Connect(function()
            setState(not isEnabled, false)
        end)
        
        return toggleContainer, toggleBg, setState
    end
    
    -- Variables
    local ScamProtectionEnabled = false
    local PurchaseGuard = false
    local TeleportGuard = false
    local UIClickGuard = false
    local ScriptDetection = false

    -- Cards
    local scamCard = createCard("Scam Protection", "Blocks common client-side scams and forced actions", -49)
    local advancedCard = createCard("Advanced Settings", "Customize Scam Protection behavior for specific game scenarios", -48)
    advancedCard.Visible = false

    local purchaseCard = createCard("Purchase Guard", "Blocks forced Robux purchase prompts", -47)
    purchaseCard.Visible = false

    local teleportCard = createCard("Teleport Guard", "Blocks suspicious forced teleports", -46)
    teleportCard.Visible = false

    local uiClickCard = createCard("UI Click Guard", "Prevents scripted auto-click confirmations", -45)
    uiClickCard.Visible = false

    local scriptDetectCard = createCard("Script Detection", "Warns about suspicious local scripts", -44)
    scriptDetectCard.Visible = false

  -- CREATE TOGGLES (Capturing the 'SetState' function)
    local _, _, setPurchase = createSmartToggle(purchaseCard, function(enabled)
        PurchaseGuard = enabled
        PunkXSettings.purchaseGuard = enabled
        saveSettings(PunkXSettings)
        if enabled then createNotification("Purchase Guard Enabled", "Success", 2)
        else createNotification("Purchase Guard Disabled", "Warn", 2) end
    end)

    local _, _, setTeleport = createSmartToggle(teleportCard, function(enabled)
        TeleportGuard = enabled
        PunkXSettings.teleportGuard = enabled
        saveSettings(PunkXSettings)
        if enabled then createNotification("Teleport Guard Enabled", "Success", 2)
        else createNotification("Teleport Guard Disabled", "Warn", 2) end
    end)

    local _, _, setUIClick = createSmartToggle(uiClickCard, function(enabled)
        UIClickGuard = enabled
        PunkXSettings.uiClickGuard = enabled
        saveSettings(PunkXSettings)
        game:GetService("UserInputService").ModalEnabled = (ScamProtectionEnabled and enabled)
        if enabled then createNotification("UI Click Guard Enabled", "Success", 2)
        else createNotification("UI Click Guard Disabled", "Warn", 2) end
    end)

    local _, _, setScriptDetect = createSmartToggle(scriptDetectCard, function(enabled)
        ScriptDetection = enabled
        PunkXSettings.scriptDetection = enabled
        saveSettings(PunkXSettings)
        if enabled then createNotification("Script Detection Enabled", "Success", 2)
        else createNotification("Script Detection Disabled", "Warn", 2) end
    end)

-- ADVANCED TOGGLE
    local _, advancedToggleBg, setAdvanced = createSmartToggle(advancedCard, function(enabled)
        PunkXSettings.advancedSettings = enabled
        saveSettings(PunkXSettings)
        
        if ScamProtectionEnabled then
            purchaseCard.Visible = enabled
            teleportCard.Visible = enabled
            uiClickCard.Visible = enabled
            scriptDetectCard.Visible = enabled
            
            if enabled then
                createNotification("Advanced Settings Shown", "Info", 2)
            else
                -- When turning OFF Advanced Settings, reset all guards to ON
                createNotification("Guards Reset to Default (All ON)", "Info", 2)
                
                -- Silently update visual + internal state
                setPurchase(true, true)
                setTeleport(true, true)
                setUIClick(true, true)
                setScriptDetect(true, true)
                
                -- Manually update logic variables
                PurchaseGuard = true
                TeleportGuard = true
                UIClickGuard = true
                ScriptDetection = true
                
                -- Save to JSON
                PunkXSettings.purchaseGuard = true
                PunkXSettings.teleportGuard = true
                PunkXSettings.uiClickGuard = true
                PunkXSettings.scriptDetection = true
                saveSettings(PunkXSettings)
            end
        else
            purchaseCard.Visible = false
            teleportCard.Visible = false
            uiClickCard.Visible = false
            scriptDetectCard.Visible = false
        end
    end)

-- MASTER TOGGLE
    local scamMasterToggle, scamMasterBg, setScamMaster = createSmartToggle(scamCard, function(enabled)
        ScamProtectionEnabled = enabled
        advancedCard.Visible = enabled
        
        PunkXSettings.scamProtection = enabled
        
        if enabled then
            createNotification("Scam Protection Enabled", "Success", 3)
            
            -- 1. Reset Advanced Settings to hidden
            setAdvanced(false, true) -- Silent update (Visual OFF + Internal OFF)
            
            -- 2. Enable all sub-features (Silently update UI + Internal State)
            setPurchase(true, true) -- Silent = true (No notification spam)
            setTeleport(true, true)
            setUIClick(true, true)
            setScriptDetect(true, true)
            
            -- 3. Manually update logic variables (since we silenced the callback)
            PurchaseGuard = true
            TeleportGuard = true
            UIClickGuard = true
            ScriptDetection = true
            
            -- 4. Save to JSON (since silent mode didn't trigger save)
            PunkXSettings.advancedSettings = false
            PunkXSettings.purchaseGuard = true
            PunkXSettings.teleportGuard = true
            PunkXSettings.uiClickGuard = true
            PunkXSettings.scriptDetection = true
            saveSettings(PunkXSettings)
            
            -- 5. Hide them initially (Advanced mode controls visibility)
            purchaseCard.Visible = false
            teleportCard.Visible = false
            uiClickCard.Visible = false
            scriptDetectCard.Visible = false
            
        else
            createNotification("Scam Protection Disabled", "Info", 3)
            
            -- 1. Reset Advanced
            setAdvanced(false, true)
            
            -- 2. Disable all sub-features
            setPurchase(false, true)
            setTeleport(false, true)
            setUIClick(false, true)
            setScriptDetect(false, true)
            
            -- 3. Update logic variables
            PurchaseGuard = false
            TeleportGuard = false
            UIClickGuard = false
            ScriptDetection = false
            
            -- 4. Save to JSON
            PunkXSettings.advancedSettings = false
            PunkXSettings.purchaseGuard = false
            PunkXSettings.teleportGuard = false
            PunkXSettings.uiClickGuard = false
            PunkXSettings.scriptDetection = false
            saveSettings(PunkXSettings)
            
            -- 5. Hide cards
            purchaseCard.Visible = false
            teleportCard.Visible = false
            uiClickCard.Visible = false
            scriptDetectCard.Visible = false
        end
    end)

    -- Hook Purchase Methods
    for _, method in ipairs({"PromptPurchase", "PromptProductPurchase", "PromptGamePassPurchase", "PromptPremiumPurchase"}) do
        if game:GetService("MarketplaceService")[method] then
            local old
            old = hookfunction(game:GetService("MarketplaceService")[method], function(...)
                if ScamProtectionEnabled and PurchaseGuard then
                    warn("[Scam Protection] Purchase blocked")
                    createNotification("Purchase Blocked", "Warn", 3)
                    return
                end
                return old(...)
            end)
        end
    end

    -- Hook Teleport
    local allowedPlaceId = game.PlaceId
    local oldTeleport
    oldTeleport = hookfunction(game:GetService("TeleportService").Teleport, function(self, placeId, ...)
        if ScamProtectionEnabled and TeleportGuard then
            if placeId ~= allowedPlaceId then
                warn("[Scam Protection] Teleport blocked:", placeId)
                createNotification("Teleport Blocked", "Warn", 3)
                return
            end
        end
        return oldTeleport(self, placeId, ...)
    end)
    
    -- Script Detection Loop
    task.spawn(function()
        while task.wait(5) do
            if ScamProtectionEnabled and ScriptDetection then
                for _, obj in ipairs(game:GetDescendants()) do
                    if obj:IsA("LocalScript") then
                        local success, src = pcall(function() return obj.Source:lower() end)
                        if success and src then
                            if src:find("trade") or src:find("purchase") then
                                -- Detection logic
                            end
                        end
                    end
                end
            end
        end
    end)

-- Disable Robux (Standalone)
    local disableRobuxCard = createCard("Disable Robux", "Completely blocks all Robux spending prompts", -43)
    local disableRobuxToggle, disableRobuxBg, setDisableRobux = createSmartToggle(disableRobuxCard, function(enabled)
        PunkXSettings.disableRobux = enabled
        saveSettings(PunkXSettings)
        
        if enabled then
            for _, method in ipairs({"PromptPurchase", "PromptProductPurchase", "PromptGamePassPurchase", "PromptPremiumPurchase"}) do
                if game:GetService("MarketplaceService")[method] then
                    local old
                    old = hookfunction(game:GetService("MarketplaceService")[method], function(...)
                        warn("[Disable Robux] All purchases blocked")
                        createNotification("Purchase Blocked (Global)", "Error", 3)
                        return
                    end)
                end
            end
            createNotification("Robux Spending Disabled", "Success", 3)
        else
            createNotification("Robux Spending Enabled", "Info", 3)
        end
    end)

-- Verify Teleports (Standalone)
    local verifyTeleportCard = createCard("Verify Teleports", "Allows teleports only to current game place", -42)
    local verifyTeleportToggle, verifyTeleportBg, setVerifyTeleport = createSmartToggle(verifyTeleportCard, function(enabled)
        PunkXSettings.verifyTeleports = enabled
        saveSettings(PunkXSettings)
        
        if enabled then
            local currentPlaceId = game.PlaceId
            local oldTeleport2
            oldTeleport2 = hookfunction(game:GetService("TeleportService").Teleport, function(self, placeId, ...)
                if placeId ~= currentPlaceId then
                    warn("[Verify Teleports] Blocked teleport to:", placeId)
                    createNotification("Teleport Blocked (Verification)", "Warn", 3)
                    return
                end
                return oldTeleport2(self, placeId, ...)
            end)
            createNotification("Teleport Verification Enabled", "Success", 3)
        else
            createNotification("Teleport Verification Disabled", "Info", 3)
        end
    end)

-- Invisible Open Trigger (Moved to bottom of Privacy section)
local invisCard = createCard("Hidden Mode", "Hide UI and reopen by typing '/e open' in chat", -41)
-- ✅ FIXED: Make it global so /e open handler can access it
local hiddenModeToggle, hiddenModeBg
_G.setHiddenModeState = nil  -- Initialize global variable

hiddenModeToggle, hiddenModeBg, _G.setHiddenModeState = createSmartToggle(invisCard, function(enabled)
    InvisTriggerOpen = enabled
    if enabled then
        createNotification('Chat "/e open" to open UI', "Info", 5)
    end
end)
    

    -- ========================================
    -- PERFORMANCE SECTION
    -- ========================================
    
    createSectionHeader("⚡ PERFORMANCE", 0)
    
    -- Anti AFK (Hybrid + Auto-Rearm)
    -- Anti AFK (Passive Mode - Stealth)
    -- VirtualUser variable removed to fix BAC-3205
    local player = Players.LocalPlayer
    local antiAFKConn
    local charConn

    local function armAntiAFK()
        -- 🛡️ STEALTH ANTI-AFK: PASSIVE SIGNAL DISABLE
        -- Instead of faking inputs (Detected), we just cut the wire.
        if antiAFKConn then antiAFKConn:Disconnect() end
        
        -- Loop through connections and disable them
        if getconnections then
            for _, conn in pairs(getconnections(player.Idled)) do
                pcall(function() conn:Disable() end)
            end
        end
        
        -- Fallback: Create a dummy connection that does nothing
        antiAFKConn = player.Idled:Connect(function() end)
    end

    local afkCard = createCard("Anti AFK", "Prevents disconnection from idling", 1)
    local afkToggle, afkToggleBg = createToggle(afkCard, function(enabled)
        PunkXSettings.antiAFK = enabled
        saveSettings(PunkXSettings)
        
        if enabled then
            -- Try to disable Roblox's AFK listeners (executor-supported only)
            if getconnections then
                for _, c in pairs(getconnections(player.Idled)) do
                    pcall(function()
                        if c.Disable then c:Disable()
                        elseif c.Disconnect then c:Disconnect() end
                    end)
                end
            end

            -- Arm immediately
            armAntiAFK()

            -- Auto-rearm after character respawn
            if not charConn then
                charConn = player.CharacterAdded:Connect(function()
                    task.wait(1) -- wait for Roblox to fully rebuild character
                    armAntiAFK()
                end)
            end
            createNotification("Anti AFK Enabled", "Success", 3)
        else
            -- Cleanup
            if antiAFKConn then
                antiAFKConn:Disconnect()
                antiAFKConn = nil
            end
            if charConn then
                charConn:Disconnect()
                charConn = nil
            end
            createNotification("Anti AFK Disabled", "Info", 3)
        end
    end)

	-- [[ 1. LOW GRAPHICS ]] --
    local lowGfxCard = createCard("Low Graphics", "Removes surface images for smoother performance", 2)
    local lowGfxToggle, lowGfxBg = createToggle(lowGfxCard, function(enabled)
        PunkXSettings.lowGraphics = enabled
        saveSettings(PunkXSettings)
        
        for _, v in pairs(game:GetDescendants()) do 
            if v:IsA("Texture") or v:IsA("Decal") then 
                v.Transparency = enabled and 1 or 0 
            end 
        end
        
        if enabled then createNotification("Low Graphics Enabled", "Success", 2)
        else createNotification("Low Graphics Disabled", "Info", 2) end
    end)

    -- [[ 2. POTATO MODE ]] --
    local potatoCard = createCard("Potato Mode", "Converts models to basic shapes - major FPS boost", 3)
    local potatoToggle, potatoBg = createToggle(potatoCard, function(enabled)
        PunkXSettings.potatoMode = enabled
        saveSettings(PunkXSettings)
        
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("MeshPart") then
                v.Transparency = enabled and 1 or 0
            elseif v:IsA("SpecialMesh") then
                if enabled then v.MeshId = "" else v.MeshId = "rbxassetid://..." end -- Note: Restoring meshes perfectly requires complex caching, this is a basic toggle
            end
        end
        
        if enabled then createNotification("Potato Mode Enabled", "Success", 2)
        else createNotification("Potato Mode Disabled", "Info", 2) end
    end)

    -- [[ 3. BLANK SCREEN MODE ]] --
    local blankCard = createCard("Blank Screen Mode", "Hides everything for max FPS - best for AFK farming", 4)
    local blankToggle, blankBg = createToggle(blankCard, function(enabled)
        PunkXSettings.blankScreen = enabled
        saveSettings(PunkXSettings)
        
        game:GetService("RunService"):Set3dRenderingEnabled(not enabled)
        
        if enabled then createNotification("3D Rendering Disabled", "Success", 2)
        else createNotification("3D Rendering Restored", "Info", 2) end
    end)

    -- FPS Boost System logic
    local FPS = { Enabled = false, Preset = "Light", Saved = {}, Connections = {} }
    local HitboxKeywords = { "hitbox", "damage", "hurt", "collider", "weapon", "attack" }

    local function isSafeObject(obj)
        if obj:FindFirstAncestorOfClass("Humanoid") then return true end
        if obj:FindFirstAncestorOfClass("Tool") then return true end
        if obj:IsA("BasePart") and not obj.Anchored then return true end
        local n = obj.Name:lower()
        for _, k in ipairs(HitboxKeywords) do if n:find(k) then return true end end
        return false
    end

    local function save(obj, prop)
        FPS.Saved[obj] = FPS.Saved[obj] or {}
        if FPS.Saved[obj][prop] == nil then FPS.Saved[obj][prop] = obj[prop] end
    end

    local function optimize(obj)
        if not FPS.Enabled or not obj or not obj.Parent then return end
        if isSafeObject(obj) then return end
        if obj:IsA("BasePart") then save(obj, "CastShadow"); obj.CastShadow = false end
        if obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then save(obj, "Enabled"); obj.Enabled = false end
        if FPS.Preset ~= "Light" and obj:IsA("Beam") then save(obj, "Enabled"); obj.Enabled = false end
        if FPS.Preset ~= "Light" and obj:IsA("SurfaceAppearance") then obj:Destroy() end
    end

    local function enableFPS(preset)
        if FPS.Enabled then return end
        FPS.Enabled = true
        FPS.Preset = preset
        if preset == "Extreme" then settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end
        for _, obj in ipairs(workspace:GetDescendants()) do optimize(obj) end
        FPS.Connections.Descendant = workspace.DescendantAdded:Connect(optimize)
        if preset == "Extreme" then
            local cam = workspace.CurrentCamera
            if cam then
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v:IsA("BasePart") and not v:IsDescendantOf(Players.LocalPlayer.Character) and not isSafeObject(v) then
                        local dist = (v.Position - cam.CFrame.Position).Magnitude
                        save(v, "LocalTransparencyModifier")
                        if dist > 300 then v.LocalTransparencyModifier = 1 end
                    end
                end
            end
        end
    end

    local function disableFPS()
        FPS.Enabled = false
        for _, c in pairs(FPS.Connections) do pcall(function() c:Disconnect() end) end
        FPS.Connections = {}
        for obj, props in pairs(FPS.Saved) do
            if obj and obj.Parent then
                for prop, val in pairs(props) do pcall(function() obj[prop] = val end) end
            end
        end
        FPS.Saved = {}
    end

    -- FPS Boost Card
    local fpsCard = createCard("FPS Boost", "Enable performance optimizations", 2)
    fpsCard.Size = UDim2.new(1, 0, 0, 55)

    -- FPS Dropdown
    local fpsDropdown = Instance.new("Frame", fpsCard)
    fpsDropdown.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    -- [FIXED] Narrower size (0.2) and Positioned (0.65) to create a GAP
    fpsDropdown.Size = UDim2.new(0.2, 0, 0.7, 0)
    fpsDropdown.Position = UDim2.new(0.65, 0, 0.15, 0)
    fpsDropdown.BorderSizePixel = 0

    local fpsCorner = Instance.new("UICorner", fpsDropdown)
    fpsCorner.CornerRadius = UDim.new(0, 12)

    local fpsStroke = Instance.new("UIStroke", fpsDropdown)
    fpsStroke.Name = "ThemeStroke"
    fpsStroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    fpsStroke.Thickness = 1
    fpsStroke.Transparency = 0.8

    local fpsLabel = Instance.new("TextLabel", fpsDropdown)
    fpsLabel.BackgroundTransparency = 1
    fpsLabel.Size = UDim2.new(0.7, 0, 1, 0)
    fpsLabel.Font = Enum.Font.GothamBold
    fpsLabel.TextSize = 12
    fpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    fpsLabel.Text = "Light"
    fpsLabel.TextXAlignment = Enum.TextXAlignment.Left
    fpsLabel.Position = UDim2.new(0.15, 0, 0, 0)

    local fpsBtn = Instance.new("TextButton", fpsDropdown)
    fpsBtn.BackgroundTransparency = 1
    fpsBtn.Size = UDim2.new(1, 0, 1, 0)
    fpsBtn.Text = ""

    local fpsList = Instance.new("ScrollingFrame", fpsDropdown)
    fpsList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    fpsList.Size = UDim2.new(1, 0, 0, 0)
    fpsList.Position = UDim2.new(0, 0, 1, 5)
    fpsList.BorderSizePixel = 0
    fpsList.Visible = false
    fpsList.ZIndex = 10
    fpsList.ScrollBarThickness = 2
    fpsList.CanvasSize = UDim2.new(0, 0, 0, 0)
    fpsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
    fpsList.ClipsDescendants = true

    local fpsListCorner = Instance.new("UICorner", fpsList)
    fpsListCorner.CornerRadius = UDim.new(0, 10)

    local fpsListStroke = Instance.new("UIStroke", fpsList)
    fpsListStroke.Name = "ThemeStroke"
    fpsListStroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    fpsListStroke.Thickness = 1
    fpsListStroke.Transparency = 0.8
    
    local fpsListPadding = Instance.new("UIPadding", fpsList)
    fpsListPadding.PaddingTop = UDim.new(0, 4)
    fpsListPadding.PaddingBottom = UDim.new(0, 4)
    fpsListPadding.PaddingLeft = UDim.new(0, 4)
    fpsListPadding.PaddingRight = UDim.new(0, 4)

    local fpsListLayout = Instance.new("UIListLayout", fpsList)
    fpsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    fpsListLayout.Padding = UDim.new(0, 2)

local fpsOptions = {"Light", "Medium", "Extreme"}
    for i, preset in ipairs(fpsOptions) do
        local opt = Instance.new("TextButton", fpsList)
        opt.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        opt.Size = UDim2.new(1, 0, 0, 26)
        opt.Text = preset
        opt.Font = Enum.Font.Gotham
        opt.TextSize = 11
        opt.TextColor3 = Color3.fromRGB(200, 200, 200)
        opt.BorderSizePixel = 0
        opt.ZIndex = 11
        
        local optCorner = Instance.new("UICorner", opt)
        optCorner.CornerRadius = UDim.new(0, 6)
        
        opt.MouseButton1Click:Connect(function()
            fpsLabel.Text = preset
            currentFOV = FOV_PRESETS[fov]
            fpsList.Visible = false
            
            PunkXSettings.fpsBoostPreset = preset
            saveSettings(PunkXSettings)
            
            if FPS.Enabled then
                disableFPS()
                enableFPS(preset)
                createNotification("FPS Preset: " .. preset, "Info", 2)
            end
        end)
    end

    fpsBtn.MouseButton1Click:Connect(function()
        fpsList.Visible = not fpsList.Visible
        fpsList.Size = UDim2.new(1, 0, 0, math.min(#fpsOptions * 30 + 10, 140))
    end)

    -- FPS Toggle
    local fpsToggleContainer = Instance.new("CanvasGroup", fpsCard)
    fpsToggleContainer.BackgroundTransparency = 1
    fpsToggleContainer.Size = UDim2.new(0.12, 0, 0.7, 0)
    -- [UPDATED] Right Aligned (0.88)
    fpsToggleContainer.Position = UDim2.new(0.88, 0, 0.15, 0)

    local fpsToggleBg = Instance.new("Frame", fpsToggleContainer)
    fpsToggleBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    fpsToggleBg.Size = UDim2.new(1, 0, 1, 0)
    fpsToggleBg.AnchorPoint = Vector2.new(0.5, 0.5)
    fpsToggleBg.Position = UDim2.new(0.5, 0, 0.5, 0)
    fpsToggleBg.BorderSizePixel = 0

    local fpsToggleCorner = Instance.new("UICorner", fpsToggleBg)
    fpsToggleCorner.CornerRadius = UDim.new(1, 0)

    local fpsToggleBtn = Instance.new("TextButton", fpsToggleBg)
    fpsToggleBtn.BackgroundTransparency = 1
    fpsToggleBtn.Size = UDim2.new(1, 0, 1, 0)
    fpsToggleBtn.Text = ""

    local fpsToggleLayout = Instance.new("UIListLayout", fpsToggleBtn)
    fpsToggleLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    fpsToggleLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    fpsToggleLayout.Padding = UDim.new(0, 3)

    local fpsTogglePadding = Instance.new("UIPadding", fpsToggleBtn)
    fpsTogglePadding.PaddingLeft = UDim.new(0, 3)
    fpsTogglePadding.PaddingRight = UDim.new(0, 3)

    local fpsCircle = Instance.new("ImageLabel", fpsToggleBtn)
    fpsCircle.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
    fpsCircle.ImageColor3 = Color3.fromRGB(232, 229, 255)
    fpsCircle.Image = "rbxassetid://5552526748"
    fpsCircle.Size = UDim2.new(0, 20, 0, 20)
    fpsCircle.BackgroundTransparency = 1
    fpsCircle.ScaleType = Enum.ScaleType.Fit

   local fpsEnabled = false
    fpsToggleBtn.MouseButton1Click:Connect(function()
        fpsEnabled = not fpsEnabled
        fpsToggleLayout.HorizontalAlignment = fpsEnabled and Enum.HorizontalAlignment.Right or Enum.HorizontalAlignment.Left
        fpsToggleBg.BackgroundColor3 = fpsEnabled and (getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)) or Color3.fromRGB(50, 50, 60)
        
        PunkXSettings.fpsBoostEnabled = fpsEnabled
        saveSettings(PunkXSettings)
        
        if fpsEnabled then
            enableFPS(fpsLabel.Text)
            createNotification("FPS Boost Enabled", "Success", 2)
        else
            disableFPS()
            createNotification("FPS Boost Disabled", "Info", 2)
        end
    end)

    -- FOV Control
    local FOV_PRESETS = { ["40"]=40, ["60"]=60, ["70"]=70, ["80"]=80, ["90"]=90, ["100"]=100, ["120"]=120 }
    local currentFOV = 70; local fovConn
    local fovCard = createCard("FOV", "Field of view control", 5)
    fovCard.Size = UDim2.new(1, 0, 0, 55)

    -- FOV Dropdown
    local fovDropdown = Instance.new("Frame", fovCard)
    fovDropdown.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    -- [FIXED] Narrower size (0.2) and Positioned (0.65)
    fovDropdown.Size = UDim2.new(0.2, 0, 0.7, 0)
    fovDropdown.Position = UDim2.new(0.65, 0, 0.15, 0)
    fovDropdown.BorderSizePixel = 0

    local fovCorner = Instance.new("UICorner", fovDropdown)
    fovCorner.CornerRadius = UDim.new(0, 12)

    local fovStroke = Instance.new("UIStroke", fovDropdown)
    fovStroke.Name = "ThemeStroke"
    fovStroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    fovStroke.Thickness = 1
    fovStroke.Transparency = 0.8

    local fovLabel = Instance.new("TextLabel", fovDropdown)
    fovLabel.BackgroundTransparency = 1
    fovLabel.Size = UDim2.new(0.7, 0, 1, 0)
    fovLabel.Font = Enum.Font.GothamBold
    fovLabel.TextSize = 12
    fovLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    fovLabel.Text = "70"
    fovLabel.TextXAlignment = Enum.TextXAlignment.Left
    fovLabel.Position = UDim2.new(0.15, 0, 0, 0)

    local fovBtn = Instance.new("TextButton", fovDropdown)
    fovBtn.BackgroundTransparency = 1
    fovBtn.Size = UDim2.new(1, 0, 1, 0)
    fovBtn.Text = ""

    local fovList = Instance.new("ScrollingFrame", fovDropdown)
    fovList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    fovList.Size = UDim2.new(1, 0, 0, 0)
    fovList.Position = UDim2.new(0, 0, 1, 5)
    fovList.BorderSizePixel = 0
    fovList.Visible = false
    fovList.ZIndex = 10
    fovList.ScrollBarThickness = 2
    fovList.CanvasSize = UDim2.new(0, 0, 0, 0)
    fovList.AutomaticCanvasSize = Enum.AutomaticSize.Y
    fovList.ClipsDescendants = true

    local fovListCorner = Instance.new("UICorner", fovList)
    fovListCorner.CornerRadius = UDim.new(0, 10)

    local fovListStroke = Instance.new("UIStroke", fovList)
    fovListStroke.Name = "ThemeStroke"
    fovListStroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    fovListStroke.Thickness = 1
    fovListStroke.Transparency = 0.8
    
    local fovListPadding = Instance.new("UIPadding", fovList)
    fovListPadding.PaddingTop = UDim.new(0, 4)
    fovListPadding.PaddingBottom = UDim.new(0, 4)
    fovListPadding.PaddingLeft = UDim.new(0, 4)
    fovListPadding.PaddingRight = UDim.new(0, 4)

    local fovListLayout = Instance.new("UIListLayout", fovList)
    fovListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    fovListLayout.Padding = UDim.new(0, 2)

   local fovOptions = {"40", "60", "70", "80", "90", "100", "120"}
    for i, fov in ipairs(fovOptions) do
        local opt = Instance.new("TextButton", fovList)
        opt.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        opt.Size = UDim2.new(1, 0, 0, 26)
        opt.Text = fov
        opt.Font = Enum.Font.Gotham
        opt.TextSize = 11
        opt.TextColor3 = Color3.fromRGB(200, 200, 200)
        opt.BorderSizePixel = 0
        opt.ZIndex = 11
        
        local optCorner = Instance.new("UICorner", opt)
        optCorner.CornerRadius = UDim.new(0, 6)
        
        opt.MouseButton1Click:Connect(function()
            fovLabel.Text = fov
            currentFOV = FOV_PRESETS[fov]
            fovList.Visible = false
            
            PunkXSettings.fovValue = tonumber(fov)
            saveSettings(PunkXSettings)
        end)
    end

    fovBtn.MouseButton1Click:Connect(function()
        fovList.Visible = not fovList.Visible
        fovList.Size = UDim2.new(1, 0, 0, math.min(#fovOptions * 30 + 10, 140))
    end)

    -- Force FOV Toggle
    local fovToggleContainer = Instance.new("CanvasGroup", fovCard)
    fovToggleContainer.BackgroundTransparency = 1
    fovToggleContainer.Size = UDim2.new(0.12, 0, 0.7, 0)
    -- [UPDATED] Right Aligned (0.88)
    fovToggleContainer.Position = UDim2.new(0.88, 0, 0.15, 0)

    local fovToggleBg = Instance.new("Frame", fovToggleContainer)
    fovToggleBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    fovToggleBg.Size = UDim2.new(1, 0, 1, 0)
    fovToggleBg.AnchorPoint = Vector2.new(0.5, 0.5)
    fovToggleBg.Position = UDim2.new(0.5, 0, 0.5, 0)
    fovToggleBg.BorderSizePixel = 0

    local fovToggleCorner = Instance.new("UICorner", fovToggleBg)
    fovToggleCorner.CornerRadius = UDim.new(1, 0)

    local fovToggleBtn = Instance.new("TextButton", fovToggleBg)
    fovToggleBtn.BackgroundTransparency = 1
    fovToggleBtn.Size = UDim2.new(1, 0, 1, 0)
    fovToggleBtn.Text = ""

    local fovToggleLayout = Instance.new("UIListLayout", fovToggleBtn)
    fovToggleLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    fovToggleLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    fovToggleLayout.Padding = UDim.new(0, 3)

    local fovTogglePadding = Instance.new("UIPadding", fovToggleBtn)
    fovTogglePadding.PaddingLeft = UDim.new(0, 3)
    fovTogglePadding.PaddingRight = UDim.new(0, 3)

    local fovCircle = Instance.new("ImageLabel", fovToggleBtn)
    fovCircle.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
    fovCircle.ImageColor3 = Color3.fromRGB(232, 229, 255)
    fovCircle.Image = "rbxassetid://5552526748"
    fovCircle.Size = UDim2.new(0, 20, 0, 20)
    fovCircle.BackgroundTransparency = 1
    fovCircle.ScaleType = Enum.ScaleType.Fit

  local fovEnabled = false
    fovToggleBtn.MouseButton1Click:Connect(function()
        fovEnabled = not fovEnabled
        fovToggleLayout.HorizontalAlignment = fovEnabled and Enum.HorizontalAlignment.Right or Enum.HorizontalAlignment.Left
        fovToggleBg.BackgroundColor3 = fovEnabled and (getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)) or Color3.fromRGB(50, 50, 60)
        
        PunkXSettings.forceFOVEnabled = fovEnabled
        saveSettings(PunkXSettings)
        
        if fovEnabled then
            fovConn = RunService.RenderStepped:Connect(function()
                local cam = workspace.CurrentCamera
                if cam then cam.FieldOfView = currentFOV end
            end)
            createNotification("Force FOV Enabled", "Success", 2)
        else
            if fovConn then fovConn:Disconnect(); fovConn = nil end
            createNotification("Force FOV Disabled", "Info", 2)
        end
    end)
    
    -- ========================================
    -- ADVANCED SECTION
    -- ========================================
    
createSectionHeader("🌐 ADVANCED / NETWORK", 40)

-- Rejoin Server Button
local rejoinCard = createCard("Rejoin Server", "Rejoins the current server session", 41)
rejoinCard.Size = UDim2.new(1, 0, 0, 55)
createButton(rejoinCard, "REJOIN", Color3.fromRGB(70, 130, 255), function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(
        game.PlaceId,
        game.JobId,
        game:GetService("Players").LocalPlayer
    )
end)

-- Auto Rejoin Toggle
local autoRejoinEnabled = false
local queued = false
local placeId = game.PlaceId
local jobId = game.JobId

local autoRejoinCard = createCard("Auto Rejoin (Beta)", "Attempts to rejoin after disconnect when supported", 42)
local autoRejoinToggle, autoRejoinBg = createToggle(autoRejoinCard, function(enabled)
    autoRejoinEnabled = enabled
    
    PunkXSettings.autoRejoin = enabled
    saveSettings(PunkXSettings)
    
    if enabled and not queued and queue_on_teleport then
        queued = true
        queue_on_teleport(string.format([[
            task.wait(5)
            local Players = game:GetService("Players")
            local TeleportService = game:GetService("TeleportService")
            local player = Players.LocalPlayer
            
            if player then
                pcall(function()
                    TeleportService:TeleportToPlaceInstance(%d, "%s", player)
                end)
            end
        ]], placeId, jobId))
        createNotification("Auto Rejoin Armed", "Success", 3)
    elseif enabled then
        createNotification("Auto Rejoin Enabled (Fallback)", "Info", 3)
    else
        createNotification("Auto Rejoin Disabled", "Info", 3)
    end
end)

game:GetService("Players").PlayerRemoving:Connect(function(plr)
    if not autoRejoinEnabled then return end
    if plr ~= game:GetService("Players").LocalPlayer then return end
    if queue_on_teleport then return end
    
    task.delay(3, function()
        pcall(function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, jobId, plr)
        end)
    end)
end)

-- Small Server Button
local smallServerCard = createCard("Small Server", "Joins a server with fewer players", 43)
smallServerCard.Size = UDim2.new(1, 0, 0, 55)
createButton(smallServerCard, "JOIN", Color3.fromRGB(70, 200, 120), function()
    local success, data = pcall(function()
        return game:GetService("HttpService"):JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                game.PlaceId ..
                "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
    end)
    
    if success and data and data.data then
        for _, server in ipairs(data.data) do
            if server.playing and server.playing < 10 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(
                    game.PlaceId,
                    server.id,
                    game:GetService("Players").LocalPlayer
                )
                break
            end
        end
    else
        createNotification("Failed to find small server", "Error", 3)
    end
end)

-- Serverhop Button
local serverhopCard = createCard("Serverhop", "Joins a different public server", 44)
serverhopCard.Size = UDim2.new(1, 0, 0, 55)
createButton(serverhopCard, "HOP", Color3.fromRGB(255, 150, 50), function()
    local success, data = pcall(function()
        return game:GetService("HttpService"):JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                game.PlaceId ..
                "/servers/Public?limit=100"
            )
        )
    end)
    
    if success and data and data.data then
        for _, server in ipairs(data.data) do
            if server.id ~= game.JobId then
                game:GetService("TeleportService"):TeleportToPlaceInstance(
                    game.PlaceId,
                    server.id,
                    game:GetService("Players").LocalPlayer
                )
                break
            end
        end
    else
        createNotification("Failed to serverhop", "Error", 3)
    end
end)

createSectionHeader("🔧 ADVANCED", 50)

    -- [[ PUNK X DEBUGGER INTEGRATION ]] --
    local activeConsoleCleanup = nil

    local function LaunchConsole()
        -- Tracking for Clean Cleanup
        local _Conns = {}
        local _Objs = {}
        
        -- Helper to track connections automatically
        local function Track(con) table.insert(_Conns, con); return con end
        local function TrackObj(obj) table.insert(_Objs, obj); return obj end

        --========================================
        -- USER CODE START (Wrapped for Cleanup)
        --========================================

        -- Services
        local LogService = game:GetService("LogService")
        local Players = game:GetService("Players")
        local CoreGui = game:GetService("CoreGui")
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Stats = game:GetService("Stats")
        local HttpService = game:GetService("HttpService")
        local TweenService = game:GetService("TweenService")

        -- Config
        local LOG_FILE_NAME = "Punk-X-Files/PunkX_Logs.txt"
        local MAX_LOGS = 1000

        -- Forward Declarations
        local ExcludeBtn, PinBtn, ExportBtn, ThemeBtn, HistoryBtn, HighlightBtn
        local refreshVirtualScroll, applyTheme

        -- State
        local isMinimized = false
        local isFilterActive = true
        local autoScrollEnabled = true
        local showTimestamps = true
        local showLineNumbers = true
        local logCount = 0
        local logHistory = {}
        local virtualLogData = {}
        local groupedLogs = {}
        local userHasScrolled = false
        local expandedGroups = {}
        local pinnedSearchTerms = {}
        local excludePatterns = {}
        local currentTheme = "dark"
        local fontSize = 14
        local useRegex = false
        local searchHistory = {}
        local selectedLogKey = nil
        local actionBarVisible = false
        local currentHighlights = {}
        local highlightConnections = {} 
        local isHighlighting = false

        -- Type filters
        local typeFilters = { INFO = true, WARN = true, ERROR = true }

        -- Performance
        local searchDebounce = nil
        local fps = 0
        local memoryUsage = 0
        local ping = 0
        local logRateCounter = 0

        -- Theme System
        local themes = {
            dark = { bg = Color3.fromRGB(20, 20, 20), logBg1 = Color3.fromRGB(35, 35, 35), logBg2 = Color3.fromRGB(45, 45, 45), selected = Color3.fromRGB(65, 65, 65), text = Color3.new(1, 1, 1), search = Color3.fromRGB(50, 50, 50) },
            light = { bg = Color3.fromRGB(240, 240, 240), logBg1 = Color3.fromRGB(255, 255, 255), logBg2 = Color3.fromRGB(250, 250, 250), selected = Color3.fromRGB(220, 220, 220), text = Color3.new(0, 0, 0), search = Color3.fromRGB(230, 230, 230) },
            blue = { bg = Color3.fromRGB(15, 25, 35), logBg1 = Color3.fromRGB(25, 35, 50), logBg2 = Color3.fromRGB(30, 45, 60), selected = Color3.fromRGB(50, 70, 90), text = Color3.fromRGB(200, 220, 255), search = Color3.fromRGB(35, 50, 70) }
        }

        -- GUI SETUP
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "PunkX_Console"
        ScreenGui.ResetOnSpawn = false
        -- Safe Parenting
        if gethui then ScreenGui.Parent = gethui() else ScreenGui.Parent = CoreGui end
        TrackObj(ScreenGui)

        -- MAIN FRAME
        local MainFrame = Instance.new("Frame")
        MainFrame.Size = UDim2.new(0.8, 0, 0.7, 0)
        MainFrame.Position = UDim2.new(0.1, 0, 0.1, 0)
        MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        MainFrame.BorderSizePixel = 0
        MainFrame.ClipsDescendants = true
        MainFrame.Active = true
        MainFrame.Parent = ScreenGui
        MainFrame.Visible = true -- [CHANGED] Visible immediately
        Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)

        -- Toast Container
        local ToastContainer = Instance.new("Frame")
        ToastContainer.Size = UDim2.new(1, 0, 1, 0)
        ToastContainer.BackgroundTransparency = 1
        ToastContainer.ZIndex = 500
        ToastContainer.Parent = MainFrame

        local function showToast(text, color)
            local t = Instance.new("TextLabel")
            t.Size = UDim2.new(0, 0, 0, 25)
            t.AutomaticSize = Enum.AutomaticSize.X
            t.Position = UDim2.new(0.5, 0, 0.9, 0)
            t.AnchorPoint = Vector2.new(0.5, 1)
            t.BackgroundColor3 = color or Color3.fromRGB(40, 40, 40)
            t.Text = "  " .. text .. "  "
            t.TextColor3 = Color3.new(1, 1, 1)
            t.Font = Enum.Font.GothamBold
            t.TextSize = 12
            t.Parent = ToastContainer
            Instance.new("UICorner", t).CornerRadius = UDim.new(0, 6)
            t.Position = UDim2.new(0.5, 0, 0.95, 0)
            TweenService:Create(t, TweenInfo.new(0.3), {Position = UDim2.new(0.5, 0, 0.9, 0)}):Play()
            task.delay(1.5, function() local tw = TweenService:Create(t, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}); tw:Play(); tw.Completed:Connect(function() t:Destroy() end) end)
        end

        -- Stats Bar
        local StatsBar = Instance.new("TextLabel")
        StatsBar.Size = UDim2.new(1, -20, 0.06, 0)
        StatsBar.Position = UDim2.new(0, 10, 0, 0)
        StatsBar.BackgroundTransparency = 1
        StatsBar.Text = "FPS: 0 | Mem: 0 | Logs: 0"
        StatsBar.TextColor3 = Color3.new(1, 1, 1)
        StatsBar.TextXAlignment = Enum.TextXAlignment.Left
        StatsBar.Font = Enum.Font.GothamBold
        StatsBar.TextSize = 12
        StatsBar.Parent = MainFrame

        -- Title Bar
        local TitleBar = Instance.new("TextLabel")
        TitleBar.Size = UDim2.new(1, -40, 0.06, 0)
        TitleBar.Position = UDim2.new(0, 0, 0.06, 0)
        TitleBar.BackgroundTransparency = 1
        TitleBar.Text = "  Punk X Debugger"
        TitleBar.TextColor3 = Color3.fromRGB(100, 200, 255)
        TitleBar.TextXAlignment = Enum.TextXAlignment.Left
        TitleBar.Font = Enum.Font.GothamBold
        TitleBar.TextSize = 16
        TitleBar.Parent = MainFrame

 -- Performance Loop
local lastUpdate = tick()
local frameCount = 0
Track(RunService.RenderStepped:Connect(function()  -- CHANGED: Heartbeat → RenderStepped
    frameCount = frameCount + 1
    local now = tick()
    if now - lastUpdate >= 1 then
        fps = frameCount
        frameCount = 0
        lastUpdate = now
        memoryUsage = math.floor(Stats:GetTotalMemoryUsageMb())
        local player = Players.LocalPlayer
        if player then ping = math.floor(player:GetNetworkPing() * 1000) end
        local width = MainFrame.AbsoluteSize.X
        if width < 450 then 
            StatsBar.Text = string.format("FPS:%d | Mem:%d | P:%d | L:%d", fps, memoryUsage, ping, #virtualLogData)
        else 
            StatsBar.Text = string.format("FPS: %d | Memory: %d MB | Ping: %dms | Logs: %d", fps, memoryUsage, ping, #virtualLogData) 
        end
    end
end))

        -- Main Frame Drag
        local dragging, dragInput, dragStart, startPos
        local function updateDrag(input)
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        Track(TitleBar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true; dragStart = input.Position; startPos = MainFrame.Position
                input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
            end
        end))
        Track(TitleBar.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end end))
        Track(UserInputService.InputChanged:Connect(function(input) if input == dragInput and dragging then updateDrag(input) end end))

        -- Search Box
        local SearchBox = Instance.new("TextBox")
        SearchBox.Size = UDim2.new(0.86, -5, 0.05, 0)
        SearchBox.Position = UDim2.new(0.02, 0, 0.13, 0)
        SearchBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        SearchBox.PlaceholderText = "Search logs... (Regex: OFF)"
        SearchBox.Text = ""
        SearchBox.ClearTextOnFocus = false
        SearchBox.TextColor3 = Color3.new(1, 1, 1)
        SearchBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
        SearchBox.Font = Enum.Font.Gotham
        SearchBox.TextSize = 12
        SearchBox.TextXAlignment = Enum.TextXAlignment.Left
        SearchBox.Parent = MainFrame
        Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 6)
        local SearchPadding = Instance.new("UIPadding", SearchBox); SearchPadding.PaddingLeft = UDim.new(0, 8)

        -- Eye Button
        HighlightBtn = Instance.new("TextButton")
        HighlightBtn.Size = UDim2.new(0.08, 0, 0.05, 0)
        HighlightBtn.Position = UDim2.new(0.9, 0, 0.13, 0)
        HighlightBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        HighlightBtn.Text = "👁️"
        HighlightBtn.TextColor3 = Color3.new(1, 1, 1)
        HighlightBtn.TextSize = 14
        HighlightBtn.Parent = MainFrame
        Instance.new("UICorner", HighlightBtn).CornerRadius = UDim.new(0, 6)

        -- Scroll Frame
        local ScrollFrame = Instance.new("ScrollingFrame")
        ScrollFrame.Position = UDim2.new(0.02, 0, 0.19, 0)
        ScrollFrame.Size = UDim2.new(0.96, 0, 0.51, 0)
        ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollFrame.ScrollBarThickness = 4
        ScrollFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ScrollFrame.BorderSizePixel = 0
        ScrollFrame.Parent = MainFrame
        Instance.new("UICorner", ScrollFrame)
        local UIListLayout = Instance.new("UIListLayout"); UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder; UIListLayout.Parent = ScrollFrame

        -- Resize Handle
        local ResizeHandle = Instance.new("TextButton")
        ResizeHandle.Size = UDim2.new(0, 30, 0, 30)
        ResizeHandle.Position = UDim2.new(1, -30, 1, -30)
        ResizeHandle.BackgroundTransparency = 1
        ResizeHandle.Text = "↗"
        ResizeHandle.TextColor3 = Color3.fromRGB(180, 180, 180)
        ResizeHandle.Font = Enum.Font.GothamBold
        ResizeHandle.TextSize = 18
        ResizeHandle.ZIndex = 10
        ResizeHandle.Parent = MainFrame
        local resizing = false
        Track(ResizeHandle.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then resizing = true end end))
        Track(UserInputService.InputChanged:Connect(function(input) if resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then local mousePos = input.Position; local framePos = MainFrame.AbsolutePosition; MainFrame.Size = UDim2.new(0, math.max(300, mousePos.X - framePos.X), 0, math.max(180, mousePos.Y - framePos.Y)) end end))
        Track(UserInputService.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then resizing = false end end))

        -- Toggle Button
        local ToggleButton = Instance.new("ImageButton")
        ToggleButton.Name = "DebugToggle"
        ToggleButton.Size = UDim2.new(0, 45, 0, 45)
        ToggleButton.Position = UDim2.new(0, 10, 0.5, -22)
        ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ToggleButton.BackgroundTransparency = 0.3
        ToggleButton.BorderSizePixel = 0
        ToggleButton.Image = "rbxthumb://type=Asset&id=121884098955130&w=420&h=420"
        ToggleButton.ScaleType = Enum.ScaleType.Fit
        ToggleButton.Parent = ScreenGui
        Instance.new("UICorner", ToggleButton).CornerRadius = UDim.new(1, 0)
        Track(ToggleButton.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end))

        -- TOGGLE DRAG LOGIC (Restored)
        local toggleDragging, toggleDragStart, toggleStartPos
        Track(ToggleButton.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                toggleDragging = true
                toggleDragStart = input.Position
                toggleStartPos = ToggleButton.Position
                input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then toggleDragging = false end end)
            end
        end))
        Track(UserInputService.InputChanged:Connect(function(input)
            if toggleDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - toggleDragStart
                ToggleButton.Position = UDim2.new(toggleStartPos.X.Scale, toggleStartPos.X.Offset + delta.X, toggleStartPos.Y.Scale, toggleStartPos.Y.Offset + delta.Y)
            end
        end))

        -- Helpers
        local function sanitize(t) return t:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;") end
        local function escapePattern(t) return t:gsub("([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1") end
        local function isSpam(msg) msg = msg:lower(); return msg:find("invocation queue exhausted") or msg:find("discarded event") or msg:find("did you forget to implement onclientevent") end
        local function isExcluded(msg) if not msg then return false end; msg = tostring(msg):lower(); for _, pattern in ipairs(excludePatterns) do if msg:find(pattern:lower(), 1, true) then return true end end; return false end
        local function isPinned(msg) if #pinnedSearchTerms == 0 then return false end; msg = tostring(msg):lower(); for _, term in ipairs(pinnedSearchTerms) do if msg:find(term:lower(), 1, true) then return true end end; return false end
        local function highlightText(text, searchTerm)
            if searchTerm == "" then return sanitize(text) end
            local sanitizedText = sanitize(text)
            if useRegex then local s, r = pcall(function() return sanitizedText:gsub("(" .. searchTerm .. ")", '<font color="rgb(255,255,0)"><b>%1</b></font>') end); if s then return r end end
            local result, lastPos, lowerText, lowerSearch, startPos = "", 1, text:lower(), searchTerm:lower(), 1
            while true do
                local foundStart, foundEnd = lowerText:find(escapePattern(lowerSearch), startPos, true)
                if not foundStart then break end
                result = result .. sanitize(text:sub(lastPos, foundStart - 1)) .. '<font color="rgb(255,255,0)"><b>' .. sanitize(text:sub(foundStart, foundEnd)) .. '</b></font>'
                lastPos, startPos = foundEnd + 1, foundEnd + 1
            end
            return result .. sanitize(text:sub(lastPos))
        end

        -- Function Definitions
        applyTheme = function(name)
            local t = themes[name] or themes.dark
            MainFrame.BackgroundColor3 = t.bg
            ScrollFrame.BackgroundColor3 = t.bg
            SearchBox.BackgroundColor3 = t.search
            SearchBox.TextColor3 = t.text
            currentTheme = name
            if refreshVirtualScroll then refreshVirtualScroll() end
        end

        -- Logging & Export
        pcall(function() if writefile then writefile(LOG_FILE_NAME, "-- Session Start --\n") end end)
        local function saveLog(text) pcall(function() if appendfile then appendfile(LOG_FILE_NAME, text .. "\n") elseif writefile and readfile then local c = ""; pcall(function() c = readfile(LOG_FILE_NAME) end); writefile(LOG_FILE_NAME, c .. text .. "\n") end end) end
        local function exportToJSON() local data = { session = os.date("%Y-%m-%d %H:%M:%S"), logs = {} }; for _, log in ipairs(virtualLogData) do table.insert(data.logs, { index = log.index, time = log.time, type = log.type, message = log.message, count = log.count }) end; pcall(function() if writefile then writefile("PunkX_Logs.json", HttpService:JSONEncode(data)) end end) end
        local function exportToCSV() local csv = "Index,Time,Type,Message,Count\n"; for _, log in ipairs(virtualLogData) do csv = csv .. string.format('%d,"%s","%s","%s",%d\n', log.index, log.time, log.type, log.message:gsub('"', '""'), log.count) end; pcall(function() if writefile then writefile("PunkX_Logs.csv", csv) end end) end

        -- Add Log
        local function getLogKey(message, messageType) return string.format("%s|%s", tostring(messageType), message) end
        local function addLog(message, messageType)
            logRateCounter = logRateCounter + 1
            if isExcluded(message) then return end
            local logKey = getLogKey(message, messageType)
            if groupedLogs[logKey] then
                groupedLogs[logKey].count = groupedLogs[logKey].count + 1
                groupedLogs[logKey].lastTime = os.date("%X")
                groupedLogs[logKey].isPinned = isPinned(message)
                task.spawn(function() task.wait(0.05); refreshVirtualScroll() end)
                return
            end
            logCount = logCount + 1
            local color, prefix, logType = Color3.fromRGB(220, 220, 220), "[INFO]", "INFO"
            if messageType == Enum.MessageType.MessageWarning then color, prefix, logType = Color3.fromRGB(255, 200, 0), "[WARN]", "WARN"
            elseif messageType == Enum.MessageType.MessageError then color, prefix, logType = Color3.fromRGB(255, 80, 80), "[ERR]", "ERROR" end
            local time = os.date("%X"); local full = string.format("[%s] %s %s", time, prefix, message)
            local logData = { index = logCount, time = time, prefix = prefix, message = message, full = full, color = color, type = logType, isSpam = isSpam(message), count = 1, key = logKey, isPinned = isPinned(message), isExpanded = false }
            table.insert(virtualLogData, logData); groupedLogs[logKey] = logData; table.insert(logHistory, full); saveLog(full)
            if #virtualLogData > MAX_LOGS then local removed = table.remove(virtualLogData, 1); groupedLogs[removed.key] = nil end
            refreshVirtualScroll()
            if autoScrollEnabled then task.spawn(function() task.wait(0.15); ScrollFrame.CanvasPosition = Vector2.new(0, ScrollFrame.CanvasSize.Y.Offset) end) end
        end

        -- Refresh Scroll
        refreshVirtualScroll = function()
            local term, visibleLogs, theme = SearchBox.Text, {}, themes[currentTheme] or themes.dark
            for _, logData in ipairs(virtualLogData) do if logData.isPinned then table.insert(visibleLogs, logData) end end
            for _, logData in ipairs(virtualLogData) do
                if not logData.isPinned then
                    local show = true
                    if not typeFilters[logData.type] then show = false end
                    if show and isFilterActive and logData.isSpam then show = false end
                    if show and isExcluded(logData.message) then show = false end
                    if show and term ~= "" then
                        if useRegex then local s = pcall(function() return logData.full:find(term) end); if not s then show = false end
                        else if not logData.full:lower():find(escapePattern(term:lower()), 1, true) then show = false end end
                    end
                    if show then table.insert(visibleLogs, logData) end
                end
            end
            for _, child in ipairs(ScrollFrame:GetChildren()) do if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("Frame") then child:Destroy() end end
            
            for i, logData in ipairs(visibleLogs) do
                local baseOrder = i * 2
                local isGrouped = logData.count > 1
                local element = Instance.new("TextButton")
                element.LayoutOrder = baseOrder
                element.Size = UDim2.new(1, 0, 0, 0)
                element.AutomaticSize = Enum.AutomaticSize.Y
                element.TextWrapped = true; element.RichText = true; element.Font = Enum.Font.Code; element.TextSize = fontSize; element.TextXAlignment = Enum.TextXAlignment.Left; element.TextYAlignment = Enum.TextYAlignment.Top; element.Parent = ScrollFrame
                local pad = Instance.new("UIPadding", element); pad.PaddingLeft = UDim.new(0, 6); pad.PaddingRight = UDim.new(0, 6); pad.PaddingTop = UDim.new(0, 4); pad.PaddingBottom = UDim.new(0, 4)
                local displayText = (logData.isPinned and "📌 " or "") .. (isGrouped and (expandedGroups[logData.key] and "▼ " or "▶ ") or "") .. (showLineNumbers and string.format("[%d] ", logData.index) or "") .. (showTimestamps and string.format("[%s] ", logData.time) or "") .. string.format("%s %s", logData.prefix, logData.message) .. (logData.count > 1 and string.format(" <b>(x%d)</b>", logData.count) or "")
                element.Text = highlightText(displayText, term)
                element.TextColor3 = logData.color
                element.BackgroundColor3 = (selectedLogKey == logData.key) and theme.selected or ((i % 2 == 0) and theme.logBg2 or theme.logBg1)
                
                element.MouseButton1Click:Connect(function()
                    if isGrouped then
                        expandedGroups[logData.key] = not expandedGroups[logData.key]
                        selectedLogKey = (selectedLogKey == logData.key) and nil or logData.key 
                        actionBarVisible = (selectedLogKey ~= nil)
                    else
                        selectedLogKey = (selectedLogKey == logData.key) and nil or logData.key
                        actionBarVisible = (selectedLogKey ~= nil)
                    end
                    refreshVirtualScroll()
                end)
                
                if selectedLogKey == logData.key and actionBarVisible then
                    local actionBar = Instance.new("Frame")
                    actionBar.LayoutOrder = baseOrder + 1; actionBar.Size = UDim2.new(1, 0, 0, 35); actionBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35); actionBar.BorderSizePixel = 0; actionBar.Parent = ScrollFrame
                    Instance.new("UICorner", actionBar).CornerRadius = UDim.new(0, 4)
                    local function mkActionBtn(txt, icon, x, callback)
                        local b = Instance.new("TextButton", actionBar); b.Size = UDim2.new(0.25, 0, 1, 0); b.Position = UDim2.new(x, 0, 0, 0); b.BackgroundColor3 = Color3.fromRGB(55, 55, 55); b.BackgroundTransparency = 1; b.Text = icon .. " " .. txt; b.TextColor3 = Color3.new(1, 1, 1); b.Font = Enum.Font.GothamBold; b.TextSize = 10
                        b.MouseButton1Click:Connect(function() callback(); if txt ~= "Close" then selectedLogKey = nil; actionBarVisible = false end; refreshVirtualScroll() end)
                    end
                    mkActionBtn("Pin", "📌", 0.0, function() 
                        local p = logData.message
                        if not table.find(pinnedSearchTerms, p) then table.insert(pinnedSearchTerms, p) end
                        for _, l in ipairs(virtualLogData) do if l.message == p then l.isPinned = true end end
                        showToast("📌 Pinned (x"..logData.count..")") 
                    end)
                    mkActionBtn("Exclude", "🚫", 0.25, function() 
                        local p = logData.message
                        if not table.find(excludePatterns, p) then table.insert(excludePatterns, p); if ExcludeBtn then ExcludeBtn.Text = "Exclude (" .. #excludePatterns .. ")" end end
                        showToast("🚫 Excluded (x"..logData.count..")")
                    end)
                    mkActionBtn("Copy", "📋", 0.50, function() 
                        local textToCopy = logData.full
                        if logData.count > 1 then textToCopy = textToCopy .. " (Occurred " .. logData.count .. " times)" end
                        pcall(function() if setclipboard then setclipboard(textToCopy) elseif toclipboard then toclipboard(textToCopy) end end) 
                        showToast("📋 Copied")
                    end)
                    mkActionBtn("Close", "X", 0.75, function() selectedLogKey = nil; actionBarVisible = false end)
                end
                if isGrouped and expandedGroups[logData.key] then
                    local detail = Instance.new("TextLabel"); detail.LayoutOrder = baseOrder + 1; detail.Size = UDim2.new(1, 0, 0, 0); detail.AutomaticSize = Enum.AutomaticSize.Y
                    detail.Text = string.format("  └─ Occurred %d times\n  └─ Last: %s", logData.count, logData.lastTime); detail.TextColor3 = Color3.fromRGB(180, 180, 180); detail.BackgroundColor3 = Color3.fromRGB(30, 30, 30); detail.Font = Enum.Font.Code; detail.TextSize = fontSize - 2; detail.TextXAlignment = Enum.TextXAlignment.Left; detail.Parent = ScrollFrame
                    local dp = Instance.new("UIPadding", detail); dp.PaddingLeft = UDim.new(0, 20); dp.PaddingTop = UDim.new(0, 2); dp.PaddingBottom = UDim.new(0, 4)
                end
            end
            RunService.Heartbeat:Wait()
            ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
        end

        Track(SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
            if searchDebounce then task.cancel(searchDebounce) end
            searchDebounce = task.delay(0.3, function() local t = SearchBox.Text; if t ~= "" and not table.find(searchHistory, t) then table.insert(searchHistory, 1, t); if #searchHistory > 10 then table.remove(searchHistory) end end; refreshVirtualScroll() end)
        end))

        task.spawn(function()
            local ok, h = pcall(LogService.GetLogHistory, LogService)
            if ok then addLog("--- DEBUGGER LOADED ---", Enum.MessageType.MessageInfo); for _, v in ipairs(h) do addLog(v.message, v.messageType) end; addLog("--- LIVE LOGS BEGIN ---", Enum.MessageType.MessageInfo) end
        end)
        Track(LogService.MessageOut:Connect(addLog))

        -- Buttons Setup
        local btnColors = { default = Color3.fromRGB(45, 45, 45), hover = Color3.fromRGB(60, 60, 60), active = Color3.fromRGB(70, 70, 70), accentInfo = Color3.fromRGB(70, 130, 220), accentWarn = Color3.fromRGB(220, 160, 50), accentError = Color3.fromRGB(220, 70, 70), accentSuccess = Color3.fromRGB(70, 180, 90), accentNeutral = Color3.fromRGB(100, 100, 100) }
        local FilterRow = Instance.new("Frame", MainFrame); FilterRow.Size = UDim2.new(0.96, 0, 0.05, 0); FilterRow.Position = UDim2.new(0.02, 0, 0.71, 0); FilterRow.BackgroundTransparency = 1
        local BtnFrame = Instance.new("Frame", MainFrame); BtnFrame.Size = UDim2.new(0.96, 0, 0.05, 0); BtnFrame.Position = UDim2.new(0.02, 0, 0.78, 0); BtnFrame.BackgroundTransparency = 1
        local AdvRow = Instance.new("Frame", MainFrame); AdvRow.Size = UDim2.new(0.96, 0, 0.05, 0); AdvRow.Position = UDim2.new(0.02, 0, 0.85, 0); AdvRow.BackgroundTransparency = 1

        local function mkBtn(parent, txt, accent, x, w)
            w = w or 0.15; local b = Instance.new("TextButton", parent); b.Size = UDim2.new(w, -4, 1, 0); b.Position = UDim2.new(x, 0, 0, 0); b.BackgroundColor3 = btnColors.default; b.Text = txt; b.TextColor3 = Color3.new(1, 1, 1); b.Font = Enum.Font.GothamBold; b.TextSize = 11; Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4); b:SetAttribute("AccentColor", accent)
            b.MouseEnter:Connect(function() if b.BackgroundColor3 == btnColors.default then b.BackgroundColor3 = btnColors.hover end end)
            b.MouseLeave:Connect(function() if b.BackgroundColor3 == btnColors.hover then b.BackgroundColor3 = btnColors.default end end)
            return b
        end

        local InfoBtn = mkBtn(FilterRow, "INFO", "accentInfo", 0, 0.16); local WarnBtn = mkBtn(FilterRow, "WARN", "accentWarn", 0.16, 0.16); local ErrorBtn = mkBtn(FilterRow, "ERROR", "accentError", 0.32, 0.16); local TimestampBtn = mkBtn(FilterRow, "Time", "accentNeutral", 0.48, 0.13); local LineNumBtn = mkBtn(FilterRow, "Line", "accentNeutral", 0.61, 0.13); local RegexBtn = mkBtn(FilterRow, "Regex", "accentNeutral", 0.74, 0.13); local FontBtn = mkBtn(FilterRow, "A"..fontSize, "accentNeutral", 0.87, 0.13)
        local Copy = mkBtn(BtnFrame, "Copy", "accentInfo", 0, 0.166); local Clear = mkBtn(BtnFrame, "Clear", "accentError", 0.166, 0.166); local Filter = mkBtn(BtnFrame, "Filter", "accentSuccess", 0.333, 0.166); local AutoScroll = mkBtn(BtnFrame, "Scroll", "accentNeutral", 0.500, 0.166); ExportBtn = mkBtn(BtnFrame, "Export", "accentInfo", 0.666, 0.166); ThemeBtn = mkBtn(BtnFrame, "Theme", "accentNeutral", 0.833, 0.166)
        PinBtn = mkBtn(AdvRow, "Pin", "accentWarn", 0, 0.25); ExcludeBtn = mkBtn(AdvRow, "Exclude", "accentError", 0.25, 0.25); HistoryBtn = mkBtn(AdvRow, "History", "accentSuccess", 0.50, 0.25); local Close = mkBtn(AdvRow, "Close", "accentError", 0.75, 0.25)

        local allButtons = { InfoBtn, WarnBtn, ErrorBtn, TimestampBtn, LineNumBtn, RegexBtn, FontBtn, Copy, Clear, Filter, AutoScroll, ExportBtn, ThemeBtn, PinBtn, ExcludeBtn, HistoryBtn, Close }
        local function updateButtonSizes(w) local s = (w >= 500) and 11 or (w >= 400 and 9 or 7); for _, b in ipairs(allButtons) do b.TextSize = s end; TitleBar.TextSize = math.max(12, s + 4) end
        updateButtonSizes(MainFrame.AbsoluteSize.X)

        -- Logic Handlers
        local function setAct(b, a) b.BackgroundColor3 = a and (btnColors[b:GetAttribute("AccentColor")] or btnColors.active) or btnColors.default end
        Track(InfoBtn.MouseButton1Click:Connect(function() typeFilters.INFO = not typeFilters.INFO; setAct(InfoBtn, typeFilters.INFO); refreshVirtualScroll() end))
        Track(WarnBtn.MouseButton1Click:Connect(function() typeFilters.WARN = not typeFilters.WARN; setAct(WarnBtn, typeFilters.WARN); refreshVirtualScroll() end))
        Track(ErrorBtn.MouseButton1Click:Connect(function() typeFilters.ERROR = not typeFilters.ERROR; setAct(ErrorBtn, typeFilters.ERROR); refreshVirtualScroll() end))
        Track(TimestampBtn.MouseButton1Click:Connect(function() showTimestamps = not showTimestamps; setAct(TimestampBtn, showTimestamps); refreshVirtualScroll() end))
        Track(LineNumBtn.MouseButton1Click:Connect(function() showLineNumbers = not showLineNumbers; setAct(LineNumBtn, showLineNumbers); refreshVirtualScroll() end))
        Track(RegexBtn.MouseButton1Click:Connect(function() useRegex = not useRegex; setAct(RegexBtn, useRegex); SearchBox.PlaceholderText = useRegex and "Search... (Regex)" or "Search logs..."; refreshVirtualScroll() end))
        Track(FontBtn.MouseButton1Click:Connect(function() fontSize = fontSize + 2; if fontSize > 18 then fontSize = 10 end; FontBtn.Text = "A"..fontSize; refreshVirtualScroll() end))
        Track(Filter.MouseButton1Click:Connect(function() isFilterActive = not isFilterActive; setAct(Filter, isFilterActive); refreshVirtualScroll() end))
        Track(AutoScroll.MouseButton1Click:Connect(function() autoScrollEnabled = not autoScrollEnabled; setAct(AutoScroll, autoScrollEnabled); if autoScrollEnabled then userHasScrolled=false; task.wait(0.1); ScrollFrame.CanvasPosition=Vector2.new(0,9e9); task.wait(0.2); autoScrollEnabled=false; setAct(AutoScroll,false) end end))
        Track(Clear.MouseButton1Click:Connect(function() virtualLogData={}; groupedLogs={}; logHistory={}; logCount=0; expandedGroups={}; refreshVirtualScroll() end))
        Track(Copy.MouseButton1Click:Connect(function() local t=table.concat(logHistory,"\n"); pcall(function() if setclipboard then setclipboard(t) elseif toclipboard then toclipboard(t) end end); Copy.Text="✓"; Copy.BackgroundColor3=btnColors.accentSuccess; task.wait(1); Copy.Text="Copy"; Copy.BackgroundColor3=btnColors.default end))
        Track(PinBtn.MouseButton1Click:Connect(function() local t=SearchBox.Text; if t=="" then return end; local f=table.find(pinnedSearchTerms,t); if f then table.remove(pinnedSearchTerms,f); PinBtn.Text="Unpinned" else table.insert(pinnedSearchTerms,t); PinBtn.Text="Pinned!" end; pcall(function() for _,l in ipairs(virtualLogData) do l.isPinned=isPinned(l.message) end end); refreshVirtualScroll(); task.wait(1.5); PinBtn.Text="Pin" end))
        Track(Close.MouseButton1Click:Connect(function() MainFrame.Visible = false end))

        -- FIXED DYNAMIC HIGHLIGHTER
        local function addHighlight(obj)
            if #currentHighlights >= 30 then return end
            local h = Instance.new("Highlight")
            h.Adornee = obj
            h.FillColor = Color3.fromRGB(255, 255, 0)
            h.OutlineColor = Color3.fromRGB(255, 255, 255)
            h.FillTransparency = 0.5
            h.Parent = obj
            table.insert(currentHighlights, h)
            HighlightBtn.Text = "✓"..#currentHighlights
        end

        Track(HighlightBtn.MouseButton1Click:Connect(function()
            -- Reset
            for _, h in ipairs(currentHighlights) do h:Destroy() end; currentHighlights = {}
            for _, c in ipairs(highlightConnections) do c:Disconnect() end; highlightConnections = {}
            
            if isHighlighting then isHighlighting = false; HighlightBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50); HighlightBtn.Text="👁️"; return end
            local term = SearchBox.Text; if term == "" then return end
            
            isHighlighting = true; HighlightBtn.BackgroundColor3 = btnColors.accentWarn
            
            if term:lower() == "players" then
                -- Players Mode
                local function setupChar(char) if char then addHighlight(char) end end
                local function setupPlayer(p)
                    if p.Character then setupChar(p.Character) end
                    local c = p.CharacterAdded:Connect(setupChar)
                    table.insert(highlightConnections, c)
                end
                for _, p in ipairs(Players:GetPlayers()) do setupPlayer(p) end
                local c = Players.PlayerAdded:Connect(setupPlayer)
                table.insert(highlightConnections, c)
            else
                -- Parts Mode (Search & Listen)
                -- Initial Scan
                for _, v in ipairs(workspace:GetDescendants()) do
                    if (v:IsA("BasePart") or v:IsA("Model")) and v.Name:lower():find(term:lower(), 1, true) then
                        local target = v
                        if v.Name == "HumanoidRootPart" or v.Name == "Head" then if v.Parent and v.Parent:IsA("Model") then target = v.Parent end end
                        addHighlight(target)
                    end
                end
                -- Auto-Update listener
                local c = workspace.DescendantAdded:Connect(function(v)
                    if #currentHighlights >= 30 then return end
                    if (v:IsA("BasePart") or v:IsA("Model")) and v.Name:lower():find(term:lower(), 1, true) then
                        local target = v
                        if v.Name == "HumanoidRootPart" or v.Name == "Head" then if v.Parent and v.Parent:IsA("Model") then target = v.Parent end end
                        addHighlight(target)
                    end
                end)
                table.insert(highlightConnections, c)
            end
        end))

        -- EXPORT (Fixed Toggle)
        local exportMenuOpen, exportMenuRef = false, nil
        Track(ExportBtn.MouseButton1Click:Connect(function()
            if exportMenuOpen then if exportMenuRef and exportMenuRef.Parent then exportMenuRef:Destroy() end; exportMenuOpen=false; return end
            exportMenuOpen = true; local menu = Instance.new("Frame", MainFrame); exportMenuRef = menu; menu.Size = UDim2.new(0.2, 0, 0.15, 0); menu.Position = UDim2.new(0.64, 0, 0.63, 0); menu.BackgroundColor3 = Color3.fromRGB(40, 40, 40); menu.BorderSizePixel = 0; menu.ZIndex = 300; Instance.new("UICorner", menu)
            local function mk(txt, y, cb) local b = Instance.new("TextButton", menu); b.Size = UDim2.new(0.9, 0, 0.28, 0); b.Position = UDim2.new(0.05, 0, y, 0); b.BackgroundColor3 = Color3.fromRGB(60, 60, 60); b.Text = txt; b.TextColor3 = Color3.new(1,1,1); b.ZIndex = 301; Instance.new("UICorner", b); b.MouseButton1Click:Connect(function() cb(); if menu.Parent then menu:Destroy() end; exportMenuOpen=false end) end
            mk(".txt", 0.05, function() saveLog("== EXPORT =="); ExportBtn.Text="✓ TXT" end); mk(".json", 0.36, function() exportToJSON(); ExportBtn.Text="✓ JSON" end); mk(".csv", 0.67, function() exportToCSV(); ExportBtn.Text="✓ CSV" end)
            task.delay(4, function() if menu and menu.Parent then menu:Destroy(); if exportMenuRef==menu then exportMenuOpen=false end end end); task.wait(1); ExportBtn.Text="Export"
        end))

        -- THEME (Fixed Toggle + Scope)
        local themeMenuOpen, themeMenuRef = false, nil
        Track(ThemeBtn.MouseButton1Click:Connect(function()
            if themeMenuOpen then if themeMenuRef and themeMenuRef.Parent then themeMenuRef:Destroy() end; themeMenuOpen=false; return end
            themeMenuOpen = true; local menu = Instance.new("Frame", MainFrame); themeMenuRef = menu; menu.Size = UDim2.new(0.15, 0, 0.15, 0); menu.Position = UDim2.new(0.8, 0, 0.63, 0); menu.BackgroundColor3 = Color3.fromRGB(40, 40, 40); menu.BorderSizePixel = 0; menu.ZIndex = 300; Instance.new("UICorner", menu)
            local function mk(txt, y, val) local b = Instance.new("TextButton", menu); b.Size = UDim2.new(0.9, 0, 0.28, 0); b.Position = UDim2.new(0.05, 0, y, 0); b.BackgroundColor3 = Color3.fromRGB(60, 60, 60); b.Text = txt; b.TextColor3 = Color3.new(1,1,1); b.ZIndex = 301; Instance.new("UICorner", b); b.MouseButton1Click:Connect(function() applyTheme(val); if menu.Parent then menu:Destroy() end; themeMenuOpen=false end) end
            mk("Dark", 0.05, "dark"); mk("Light", 0.36, "light"); mk("Blue", 0.67, "blue")
            task.delay(5, function() if menu and menu.Parent then menu:Destroy(); if themeMenuRef==menu then themeMenuOpen=false end end end)
        end))

        -- HISTORY (Fixed Toggle)
        local historyMenuOpen, historyMenuRef = false, nil
        Track(HistoryBtn.MouseButton1Click:Connect(function()
            if historyMenuOpen then if historyMenuRef and historyMenuRef.Parent then historyMenuRef:Destroy() end; historyMenuOpen=false; return end
            if #searchHistory == 0 then return end
            historyMenuOpen = true; local menu = Instance.new("ScrollingFrame", MainFrame); historyMenuRef = menu; menu.Size = UDim2.new(0.3, 0, 0.25, 0); menu.Position = UDim2.new(0.42, 0, 0.57, 0); menu.BackgroundColor3 = Color3.fromRGB(40, 40, 40); menu.BorderSizePixel = 0; menu.ZIndex = 300; menu.AutomaticCanvasSize = Enum.AutomaticSize.Y; Instance.new("UICorner", menu); local layout = Instance.new("UIListLayout", menu); layout.SortOrder = Enum.SortOrder.LayoutOrder
            for i, term in ipairs(searchHistory) do local b = Instance.new("TextButton", menu); b.Size = UDim2.new(1, -10, 0, 30); b.BackgroundColor3 = Color3.fromRGB(60, 60, 60); b.Text = term; b.TextColor3 = Color3.new(1,1,1); b.ZIndex = 301; Instance.new("UICorner", b); b.MouseButton1Click:Connect(function() SearchBox.Text = term; if menu.Parent then menu:Destroy() end; historyMenuOpen=false end) end
            task.delay(8, function() if menu and menu.Parent then menu:Destroy(); if historyMenuRef==menu then historyMenuOpen=false end end end)
        end))

        -- EXCLUDE (Toggle + Scroll + Fixed)
        local excludeMenuOpen, excludeMenuRef = false, nil
        Track(ExcludeBtn.MouseButton1Click:Connect(function()
            if excludeMenuOpen then if excludeMenuRef and excludeMenuRef.Parent then excludeMenuRef:Destroy() end; excludeMenuOpen=false; return end
            local t = SearchBox.Text
            if t == "" then
                if #excludePatterns == 0 then return end
                excludeMenuOpen = true; local m = Instance.new("ScrollingFrame", MainFrame); excludeMenuRef = m; m.Size = UDim2.new(0.35, 0, 0.3, 0); m.Position = UDim2.new(0.168, 0, 0.52, 0); m.BackgroundColor3 = Color3.fromRGB(40, 40, 40); m.BorderSizePixel = 0; m.ZIndex = 200; m.AutomaticCanvasSize = Enum.AutomaticSize.Y; m.CanvasSize = UDim2.new(0, 0, 0, 0); Instance.new("UICorner", m); local l = Instance.new("UIListLayout", m); l.SortOrder = Enum.SortOrder.LayoutOrder; l.Padding = UDim.new(0, 2)
                for i, p in ipairs(excludePatterns) do
                    local f = Instance.new("Frame", m); f.Size = UDim2.new(1, -6, 0, 30); f.BackgroundColor3 = Color3.fromRGB(50, 50, 50); f.ZIndex = 201; f.LayoutOrder = i; Instance.new("UICorner", f)
                    local btn = Instance.new("TextButton", f); btn.Size = UDim2.new(0, 24, 0, 24); btn.AnchorPoint = Vector2.new(1, 0.5); btn.Position = UDim2.new(1, -4, 0.5, 0); btn.BackgroundColor3 = btnColors.accentError; btn.Text = "X"; btn.TextColor3 = Color3.new(1, 1, 1); btn.Font = Enum.Font.GothamBold; btn.TextSize = 10; btn.ZIndex = 203; Instance.new("UICorner", btn)
                    btn.MouseButton1Click:Connect(function() table.remove(excludePatterns, i); ExcludeBtn.Text = (#excludePatterns>0) and "Exclude ("..#excludePatterns..")" or "Exclude"; if m.Parent then m:Destroy() end; excludeMenuOpen=false; refreshVirtualScroll() end)
                    local scrollText = Instance.new("ScrollingFrame", f); scrollText.Size = UDim2.new(1, -35, 1, 0); scrollText.BackgroundTransparency = 1; scrollText.ScrollingDirection = Enum.ScrollingDirection.X; scrollText.CanvasSize = UDim2.new(0, 0, 0, 0); scrollText.AutomaticCanvasSize = Enum.AutomaticSize.X; scrollText.ScrollBarThickness = 2; scrollText.ZIndex = 202
                    local txt = Instance.new("TextLabel", scrollText); txt.Size = UDim2.new(0, 0, 1, 0); txt.AutomaticSize = Enum.AutomaticSize.X; txt.BackgroundTransparency = 1; txt.Text = "  " .. p; txt.TextColor3 = Color3.new(1, 1, 1); txt.Font = Enum.Font.Gotham; txt.TextSize = 10; txt.TextXAlignment = Enum.TextXAlignment.Left; txt.ZIndex = 202
                end
                task.delay(10, function() if m and m.Parent then m:Destroy(); if excludeMenuRef == m then excludeMenuOpen = false end end end)
                return
            end
            if table.find(excludePatterns, t) then return end
            table.insert(excludePatterns, t); ExcludeBtn.Text = "✓ Added"; refreshVirtualScroll(); task.wait(1.5); ExcludeBtn.Text = "Exclude ("..#excludePatterns..")"
        end))

        -- Init
        refreshVirtualScroll(); setAct(InfoBtn, typeFilters.INFO); setAct(WarnBtn, typeFilters.WARN); setAct(ErrorBtn, typeFilters.ERROR); setAct(TimestampBtn, showTimestamps); setAct(LineNumBtn, showLineNumbers); setAct(RegexBtn, useRegex); setAct(Filter, isFilterActive)
        --print("Punk X Debugger")

        -- Cleanup Function (Crucial for Toggle OFF)
        return function()
            for _, c in ipairs(_Conns) do c:Disconnect() end
            for _, o in ipairs(_Objs) do o:Destroy() end
            for _, h in ipairs(currentHighlights) do h:Destroy() end
            for _, c in ipairs(highlightConnections) do c:Disconnect() end
        end
    end

-- Create Console Card in Settings
    local debugCard = createCard("Punk X Console", "Displays real-time logs, errors, and script output for debugging.", 51)
    debugCard.Size = UDim2.new(1, 0, 0, 55)

        createToggle(debugCard, function(enabled)
        if enabled then
            if not activeConsoleCleanup then
                activeConsoleCleanup = LaunchConsole()
                createNotification("Console Launched", "Success", 3)
                
                task.spawn(function()
                    task.wait(1.5)  -- Give console time to fully load
                    
                    -- 🟢 FIX: Use LogService.ExecuteScript to force messages into LogService
                    local LogService = game:GetService("LogService")
                    
                    _G.cprint = function(msg)
                        pcall(function()
                            msg = tostring(msg):gsub("'", "\\'"):gsub('"', '\\"')
                            LogService:ExecuteScript('print("[INFO] ' .. msg .. '")')
                        end)
                    end
                    
                    _G.cwarn = function(msg)
                        pcall(function()
                            msg = tostring(msg):gsub("'", "\\'"):gsub('"', '\\"')
                            LogService:ExecuteScript('warn("[WARN] ' .. msg .. '")')
                        end)
                    end
                    
                    _G.cerror = function(msg)
                        pcall(function()
                            msg = tostring(msg):gsub("'", "\\'"):gsub('"', '\\"')
                            LogService:ExecuteScript('warn("[ERROR] ' .. msg .. '")')
                        end)
                    end
                    
                    -- Test message
                    LogService:ExecuteScript('print("[PUNK X] 🟢 Console Ready!")')
                end)
            end
        else
            if activeConsoleCleanup then
                activeConsoleCleanup()
                activeConsoleCleanup = nil
                createNotification("Console Closed", "Info", 3)
                
                _G.cprint = nil
                _G.cwarn = nil
                _G.cerror = nil
            end
        end
    end)


    -- [[ RESET LOADER (Moved Down to 52) ]] --
    local resetCard = createCard("Change UI Version", "Resets interface choice - lets you pick old or new UI again", 52)
    resetCard.Size = UDim2.new(1, 0, 0, 55)
    
    createButton(resetCard, "RESET", Color3.fromRGB(255, 80, 80), function()
        if CLONED_Detectedly.delfile and CLONED_Detectedly.isfile then
            if CLONED_Detectedly.isfile("Punk-X-Files/punk-x-env.txt") then
                CLONED_Detectedly.delfile("Punk-X-Files/punk-x-env.txt")
                createNotification("Reset Success. Re-inject.", "Success", 5)
            else
                createNotification("No preference saved.", "Error", 3)
            end
        else
            createNotification("Not supported.", "Error", 5)
        end
    end)

    -- 🔴 CRITICAL FIX: Apply theme AFTER UI is built
    task.spawn(function()
        task.wait(0)
        ApplyTheme(savedTheme)
    end)
    
    -- 🟢 LOAD AND APPLY SAVED SETTINGS
    task.spawn(function()
        task.wait(0.5) -- Wait for UI to fully initialize
        
        PunkXSettings = loadSettings()
        
        -- APPEARANCE
        script.Parent.Full.Transparency = PunkXSettings.uiTransparency
        if PunkXSettings.censorName then
            Main.Title.TextLabel.Text = "Hello, User!"
        end
        
-- PRIVACY & SECURITY
        if PunkXSettings.scamProtection then
            -- Restore Scam Protection master toggle (visual + internal state, no callback)
            setScamMaster(true, true)
            ScamProtectionEnabled = true
            advancedCard.Visible = true  -- Always show Advanced Settings card when Scam Protection is ON
            
            -- If Advanced Settings is OFF, force all guards to ON
            if not PunkXSettings.advancedSettings then
                -- Advanced Settings OFF (keep visual OFF)
                setAdvanced(false, true)
                
                -- Force all guards ON
                setPurchase(true, true)
                setTeleport(true, true)
                setUIClick(true, true)
                setScriptDetect(true, true)
                
                PurchaseGuard = true
                TeleportGuard = true
                UIClickGuard = true
                ScriptDetection = true
                
                -- Hide cards
                purchaseCard.Visible = false
                teleportCard.Visible = false
                uiClickCard.Visible = false
                scriptDetectCard.Visible = false
                
            else
                -- Advanced Settings ON, restore custom states
                setAdvanced(true, true)
                
                setPurchase(PunkXSettings.purchaseGuard, true)
                setTeleport(PunkXSettings.teleportGuard, true)
                setUIClick(PunkXSettings.uiClickGuard, true)
                setScriptDetect(PunkXSettings.scriptDetection, true)
                
                PurchaseGuard = PunkXSettings.purchaseGuard
                TeleportGuard = PunkXSettings.teleportGuard
                UIClickGuard = PunkXSettings.uiClickGuard
                ScriptDetection = PunkXSettings.scriptDetection
                
                -- Show cards
                purchaseCard.Visible = true
                teleportCard.Visible = true
                uiClickCard.Visible = true
                scriptDetectCard.Visible = true
            end
        else
            -- Scam Protection is OFF
            setScamMaster(false, true)
            ScamProtectionEnabled = false
            advancedCard.Visible = false  -- Hide Advanced Settings card when Scam Protection is OFF
            
            setPurchase(false, true)
            setTeleport(false, true)
            setUIClick(false, true)
            setScriptDetect(false, true)
            
            PurchaseGuard = false
            TeleportGuard = false
            UIClickGuard = false
            ScriptDetection = false
            
            purchaseCard.Visible = false
            teleportCard.Visible = false
            uiClickCard.Visible = false
            scriptDetectCard.Visible = false
        end
        
        if PunkXSettings.disableRobux then
            setDisableRobux(true, true)
        end
        
        if PunkXSettings.verifyTeleports then
            setVerifyTeleport(true, true)
        end
        
        -- PERFORMANCE
        if PunkXSettings.antiAFK then
            -- Trigger the toggle visually
            if afkToggleBg then
                afkToggleBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if afkToggle:FindFirstChild("UIListLayout") then
                    afkToggle:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end

				-- Low Graphics Load
        if PunkXSettings.lowGraphics then
            if lowGfxBg then
                lowGfxBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if lowGfxToggle:FindFirstChild("UIListLayout") then
                    lowGfxToggle:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end
            for _, v in pairs(game:GetDescendants()) do 
                if v:IsA("Texture") or v:IsA("Decal") then v.Transparency = 1 end 
            end
        end

        -- Potato Mode Load
        if PunkXSettings.potatoMode then
            if potatoBg then
                potatoBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if potatoToggle:FindFirstChild("UIListLayout") then
                    potatoToggle:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end
            for _, v in pairs(game:GetDescendants()) do
                if v:IsA("MeshPart") then v.Transparency = 1 end
            end
        end

        -- Blank Screen Load
        if PunkXSettings.blankScreen then
            if blankBg then
                blankBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if blankToggle:FindFirstChild("UIListLayout") then
                    blankToggle:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        end
				
            -- Enable logic
            if getconnections then
                for _, c in pairs(getconnections(Players.LocalPlayer.Idled)) do
                    pcall(function()
                        if c.Disable then c:Disable()
                        elseif c.Disconnect then c:Disconnect() end
                    end)
                end
            end
            armAntiAFK()
            if not charConn then
                charConn = Players.LocalPlayer.CharacterAdded:Connect(function()
                    task.wait(1)
                    armAntiAFK()
                end)
            end
        end
        
        -- FPS Boost
        if fpsLabel then
            fpsLabel.Text = PunkXSettings.fpsBoostPreset
        end
        
        if PunkXSettings.fpsBoostEnabled then
            if fpsToggleBg then
                fpsToggleBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if fpsToggleBtn:FindFirstChild("UIListLayout") then
                    fpsToggleBtn:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end
            enableFPS(PunkXSettings.fpsBoostPreset)
            fpsEnabled = true
        end
        
        -- FOV
        if fovLabel then
            fovLabel.Text = tostring(PunkXSettings.fovValue)
            currentFOV = PunkXSettings.fovValue
        end
        
        if PunkXSettings.forceFOVEnabled then
            if fovToggleBg then
                fovToggleBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if fovToggleBtn:FindFirstChild("UIListLayout") then
                    fovToggleBtn:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end
            fovConn = RunService.RenderStepped:Connect(function()
                local cam = workspace.CurrentCamera
                if cam then cam.FieldOfView = currentFOV end
            end)
            fovEnabled = true
        end
        
        -- Auto Rejoin
        if PunkXSettings.autoRejoin then
            if autoRejoinBg then
                autoRejoinBg.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                if autoRejoinToggle:FindFirstChild("UIListLayout") then
                    autoRejoinToggle:FindFirstChild("UIListLayout").HorizontalAlignment = Enum.HorizontalAlignment.Right
                end
            end
            autoRejoinEnabled = true
            
            if not queued and queue_on_teleport then
                queued = true
                queue_on_teleport(string.format([[
                    task.wait(5)
                    local Players = game:GetService("Players")
                    local TeleportService = game:GetService("TeleportService")
                    local player = Players.LocalPlayer
                    
                    if player then
                        pcall(function()
                            TeleportService:TeleportToPlaceInstance(%d, "%s", player)
                        end)
                    end
                ]], game.PlaceId, game.JobId))
            end
        end
        
        --print("[PunkX] Settings loaded successfully")
    end)
end -- End of InitTabs.Settings

InitTabs.TabsData = function()
		-- 🟢 ENSURE FOLDERS EXIST
		if not CLONED_Detectedly.isfolder("Punk-X-Files") then
			CLONED_Detectedly.makedir("Punk-X-Files")
		end
		if not CLONED_Detectedly.isfolder("Punk-X-Files/scripts") then
			CLONED_Detectedly.makedir("Punk-X-Files/scripts")
		end

		local scripts = CLONED_Detectedly.listfiles("Punk-X-Files/scripts") or {};
		
		for index, Nextpath in ipairs(scripts) do
    -- 🟢 ROBUST FILENAME EXTRACTION
    -- Gets "MyScript.lua" from "any/long/path/MyScript.lua"
    local filename = Nextpath:match("([^/\\]+)$");
    
    if filename and filename ~= "recently.data" then
        local success, Loadedscript = pcall(function()
            -- 🟢 FORCE CORRECT READ PATH
            local cleanPath = "Punk-X-Files/scripts/" .. filename
            
            -- ✅ ADD THIS CHECK:
            if not HttpService then
                warn("[PUNK X] HttpService not available")
                return nil
            end
            
            local content = CLONED_Detectedly.readfile(cleanPath)
            return HttpService:JSONDecode(content)
        end)

				if success and Loadedscript and Loadedscript.Name and Loadedscript.Content and Loadedscript.Order then
					-- Clean corruption if present
					if string.find(Loadedscript.Content, "<font") then
						Loadedscript.Content = StripSyntax(Loadedscript.Content)
					end
					Data.Editor.Tabs[Loadedscript.Name] = {
						Loadedscript.Content,
						Loadedscript.Order
					};
				end
			end
		end

		-- If empty, create a default tab
		if (next(Data.Editor.Tabs) == nil) then
			UIEvents.EditorTabs.createTab("Script", "");
		end
		
		UIEvents.EditorTabs.updateUI();
	end;
InitTabs.Saved = function()
		-- 🟢 ENSURE ALL FOLDERS EXIST (Added scripts back)
		local folders = {
			"Punk-X-Files",
			"Punk-X-Files/saves",
			"Punk-X-Files/autoexec",
			"Punk-X-Files/rconsole",
			"Punk-X-Files/scripts" -- 🟢 Added this back for safety
		}

		for _, folder in ipairs(folders) do
			if not CLONED_Detectedly.isfolder(folder) then
				CLONED_Detectedly.makedir(folder)
			end
		end
		
		-- 🟢 LOAD SAVED SCRIPTS
		local saves = CLONED_Detectedly.listfiles("Punk-X-Files/saves") or {};
		
		for index, Nextpath in ipairs(saves) do
			-- 🟢 ROBUST FILENAME EXTRACTION
			local filename = Nextpath:match("([^/\\]+)$");
			
			if filename and filename:match("%.lua$") then
				local success, Loadedscript = pcall(function()
					-- 🟢 FORCE CORRECT READ PATH
					local cleanPath = "Punk-X-Files/saves/" .. filename
					local content = CLONED_Detectedly.readfile(cleanPath)
					return game.HttpService:JSONDecode(content)
				end)

				if success and Loadedscript and Loadedscript.Name and Loadedscript.Content then
					if string.find(Loadedscript.Content, "<font") then
						Loadedscript.Content = StripSyntax(Loadedscript.Content)
					end
					Data.Saves.Scripts[Loadedscript.Name] = Loadedscript.Content;
				end
			end
		end
		
		UIEvents.Saved.UpdateUI();
		
		-- Search Bar Logic
		Pages.Saved.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			local hi = Pages.Saved.TextBox.Text
			local isEmpty = #hi:gsub("[%s]","") <= 0
			if isEmpty then
				for _, v in pairs(Pages.Saved.Scripts:GetChildren()) do
					if v:IsA("CanvasGroup") and v:FindFirstChild("Title") then v.Visible = true; end
				end
				return
			end
			for _, v in pairs(Pages.Saved.Scripts:GetChildren()) do
				if v:IsA("CanvasGroup") and v:FindFirstChild("Title") then
					v.Visible = v.Title.Text:lower():match("^" .. hi:lower()) ~= nil;
				end
			end
		end)
	end;

	InitTabs.Editor = function()
    local Editor = Pages:WaitForChild("Editor");
    local Panel = Editor:WaitForChild("Panel");
    local EditorFrame = Editor:WaitForChild("Editor"); 
    local RealInput = EditorFrame:WaitForChild("Input");
    local Lines = EditorFrame:WaitForChild("Lines");
    
    local Method = "MouseButton1Click"; 
    local autoSaveDebounce = nil 

    -- Store original states ONCE
    local originalSize = EditorFrame.Size
    local originalPos = EditorFrame.Position
    local originalTextPos = RealInput.Position
    local originalPanelPos = Panel.Position
    local originalPanelSize = Panel.Size
    local originalPanelAnchor = Panel.AnchorPoint

    -- 🔴 CRITICAL FIX: Verify this is the EDITOR panel, not SaveTemplate panel
    if Panel.Parent ~= Editor then
        warn("[PunkX] Wrong panel detected!")
        return
    end

    -- 🔴 FIX: Set ZIndex ONCE at initialization (no loops, no repeats)
    Panel.ZIndex = 100
    Panel.BackgroundTransparency = 0.2
    Panel.Visible = true -- Ensure it's visible
    
    -- Set ZIndex for all children ONCE
    for _, child in pairs(Panel:GetChildren()) do
        if child:IsA("TextButton") or child:IsA("ImageButton") then
            child.ZIndex = 101
            child.Visible = true
            local icon = child:FindFirstChild("Icon")
            if icon then
                icon.ZIndex = 102
                icon.Visible = true
            end
        elseif child:IsA("Frame") and child.Name:match("Spacer") then
            child.ZIndex = 101
            child.Visible = true
            child.BackgroundTransparency = 0.5
        elseif child:IsA("UIListLayout") or child:IsA("UIPadding") or child:IsA("UICorner") or child:IsA("UIScale") then
            -- Layout elements, don't modify
        end
    end

-- [[ EDIT MODE - When user taps editor ]]
    RealInput.Focused:Connect(function()
        Data.Editor.IsEditing = true
        UIEvents.EditorTabs.updateUI() -- Trigger tab isolation

        -- 1. Hide line numbers
        Lines.Visible = false
        RealInput.Position = UDim2.new(0, 10, 0, 0)
        
        -- 2. Position the Code Box
        EditorFrame.Position = UDim2.new(0.02, 0, 0.22, 0) 
        EditorFrame.Size = UDim2.new(0.96, 0, 0.38, 0)
        
        -- 3. Move Panel to Top Right (Same level as Trial tab)
        Panel.AnchorPoint = Vector2.new(1, 0.5) -- Right-center pivot
        Panel.Position = UDim2.new(0.98, 0, 0.085, 0) -- Level with Trial, Aligned with code box edge
        Panel.Size = UDim2.new(0.42, 0, 0.12, 0)
        Panel.Visible = true
        Panel.ZIndex = 100
        
        -- 4. FIX SYNTAX BLEED: Disable RichText BEFORE setting stripped text
        RealInput.RichText = false 
        RealInput.Text = StripSyntax(RealInput.Text)
    end)

 -- [[ VIEWING MODE - When user exits editor ]]
    RealInput.FocusLost:Connect(function()
        -- 🟢 ADD THIS LINE: Wait for button click to finish
        task.wait(0.1) 
        
        Data.Editor.IsEditing = false 
        UIEvents.EditorTabs.updateUI()

        -- 1. Restore line numbers
        Lines.Visible = true
        RealInput.Position = originalTextPos
        
        -- 2. Restore editor size/position
        EditorFrame.Size = originalSize
        EditorFrame.Position = originalPos
        
        -- 3. 🔴 FIX: Restore Panel to ORIGINAL position
        Panel.AnchorPoint = originalPanelAnchor
        Panel.Position = originalPanelPos
        Panel.Size = originalPanelSize
        Panel.Visible = true
        Panel.ZIndex = 100
        
        -- 4. Re-apply syntax highlighting
        local raw = RealInput.Text
        RealInput.RichText = true
        RealInput.Text = ApplySyntax(raw)

        -- 5. Auto-save
        if not Data.Editor.EditingSavedFile then
            UIEvents.EditorTabs.saveTab(nil, raw, false)
        end
    end)

    -- Line number sync
    RealInput:GetPropertyChangedSignal("Text"):Connect(function()
        UpdateLineNumbers(RealInput, Lines)
        if not Data.Editor.EditingSavedFile then
            if autoSaveDebounce then task.cancel(autoSaveDebounce) end
            autoSaveDebounce = task.delay(1, function()
                local cleanText = StripSyntax(RealInput.Text)
                UIEvents.EditorTabs.saveTab(nil, cleanText, false)
            end)
        end
    end)

    -- BUTTON CONNECTIONS - Use WaitForChild to ensure correct panel
    local function safeConnect(buttonName, callback)
        local btn = Panel:FindFirstChild(buttonName)
        if btn then
            btn[Method]:Connect(callback)
        else
            warn("[PunkX] Button not found: " .. buttonName)
        end
    end

   safeConnect("Execute", function() 
    local success, func = pcall(function()
        return UIEvents.Executor.RunCode(StripSyntax(RealInput.Text))
    end)
    
    if success and func and type(func) == "function" then
        pcall(func)
    end
end)
    
    safeConnect("Delete", function() 
        RealInput.Text = "" 
    end)
    
safeConnect("Paste", function()
        local clip = safeGetClipboard()
        RealInput.RichText = false -- Clear formatting
        RealInput.Text = StripSyntax(clip)
        RealInput.RichText = true
        RealInput.Text = ApplySyntax(RealInput.Text)
    end)
    
    safeConnect("Save", function() 
        UIEvents.EditorTabs.saveTab(nil, StripSyntax(RealInput.Text), true) 
    end)
    
 safeConnect("Rename", function()
        script.Parent.Popups.Visible = true
        script.Parent.Popups.Main.Input.Text = Data.Editor.CurrentTab or ""
        script.Parent.Popups.Main.Input:CaptureFocus()
    end)
    
    safeConnect("ExecuteClipboard", function() 
        UIEvents.Executor.RunCode(safeGetClipboard())() 
    end)

    -- Tab creation
    local createBtn = Editor.Tabs:FindFirstChild("Create")
    if createBtn then
        createBtn.Activated:Connect(function() 
            UIEvents.EditorTabs.createTab("Script", "") 
        end)
    end

    -- Popup controls
    local Popups = script.Parent:FindFirstChild("Popups")
    if Popups and Popups:FindFirstChild("Main") then
        local Buttons = Popups.Main:FindFirstChild("Button")
        if Buttons then
            local confirmBtn = Buttons:FindFirstChild("Confirm")
            local cancelBtn = Buttons:FindFirstChild("Cancel")
            
            if confirmBtn then
                confirmBtn[Method]:Connect(function()
                    local newName = string.gsub(Popups.Main.Input.Text, "^%s*(.-)%s*$", "%1")
                    if (#newName > 0 and newName ~= Data.Editor.CurrentTab) then
                        UIEvents.EditorTabs.RenameFile(newName, Data.Editor.CurrentTab)
                    end
                    Popups.Visible = false
                end)
            end
            
            if cancelBtn then
                cancelBtn[Method]:Connect(function() 
                    Popups.Visible = false 
                end)
            end
        end
    end

    UpdateLineNumbers(RealInput, Lines)
end;

InitTabs.Search = function()
	local Search = Pages:WaitForChild("Search");
	local Scripts = Search.Scripts;
	local SearchBox = Search.TextBox;  -- 🟢 This should already exist, if not add it

  -- 🟢 LOAD THEME FIRST
    local currentTheme = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
	
-- 🔴 STATE

local OriginalGameName = nil 
local CachedScripts = {}
local isUpdating = false
local searchDebounce = nil

-- 🟢 RATE LIMITING
local lastRequestTime = 0
local cooldownTime = 2 -- Seconds between searches

-- 🟢 REMOVED STATIC SETTINGS, REPLACED WITH FUNCTION
-- 🟢 ADD DYNAMIC FETCH PAGE FUNCTION
local function getFetchPages()
	if Data.Search.CurrentFilter == "Recommended" then
		return 8
	elseif Data.Search.CurrentFilter == "Trending" then
		return 1
	elseif Data.Search.CurrentFilter == "KeyRequired" then
		return 3
	else
		return 3
	end
end

-- 🔴 FIX #14: API RATE LIMITING
local API_RETRY_LIMIT = 3
local API_BASE_DELAY = 0.5

local function fetchWithRetry(url, retries)
    retries = retries or 0
    local success, response = pcall(function() 
        return game:HttpGet(url) 
    end)
    
    if success then
        return response
    elseif retries < API_RETRY_LIMIT then
        local delay = API_BASE_DELAY * (2 ^ retries) -- Exponential backoff
        warn("[PunkX] API retry " .. (retries + 1) .. "/" .. API_RETRY_LIMIT .. " in " .. delay .. "s")
        task.wait(delay)
        return fetchWithRetry(url, retries + 1)
    else
        warn("[PunkX] API request failed after " .. API_RETRY_LIMIT .. " retries")
        return nil
    end
end

-- 🔴 SERVICES
local HttpService = game:GetService("HttpService")
	local MarketplaceService = game:GetService("MarketplaceService")
	
	-- 🔴 HELPER: FORMAT NUMBERS
	local function formatNumber(n)
		n = tonumber(n)
		if not n then return "0" end
		if n >= 1000000 then
			return string.format("%.1fM", n / 1000000)
		elseif n >= 1000 then
			return string.format("%.1fk", n / 1000)
		else
			return tostring(n)
		end
	end
	
	-- 🔴 DETECT CURRENT GAME
	local function cleanGameName(name)
		if not name then return nil end
		name = string.split(name, "|")[1]
		name = string.split(name, ":")[1]
		name = string.gsub(name, "%[.-%]", "")
		name = string.gsub(name, "%(.-%)", "")
		name = string.gsub(name, "v%d+%.?%d*", "")
		name = string.gsub(name, "[^%w%s]", "")
		name = string.gsub(name, "^%s*(.-)%s*$", "%1")
		return name
	end
	
	local function detectGame()
		local detected = nil
		local success, gameInfo = pcall(function()
			return MarketplaceService:GetProductInfo(game.PlaceId)
		end)
		if success and gameInfo and gameInfo.Name then
			detected = cleanGameName(gameInfo.Name)
		end
		
		if (not detected or detected == "") and game.Name ~= "Game" then
			detected = cleanGameName(game.Name)
		end
		
		local GameLabel = Search:FindFirstChild("GameLabel")
		if not GameLabel then
			GameLabel = Instance.new("TextLabel", Search)
			GameLabel.Name = "GameLabel"
			GameLabel.Size = UDim2.new(1, -20, 0, 20)
			GameLabel.Position = UDim2.new(0, 10, 1, -25)
			GameLabel.BackgroundTransparency = 1
			GameLabel.TextColor3 = Color3.fromRGB(120, 120, 120)
			GameLabel.TextXAlignment = Enum.TextXAlignment.Right
			GameLabel.Font = Enum.Font.Gotham
			GameLabel.TextSize = 12
			GameLabel.ZIndex = 5
		end

		if detected and detected ~= "" then
			OriginalGameName = detected
			GameLabel.Text = "Game: " .. OriginalGameName
		else
			OriginalGameName = nil
			GameLabel.Text = "Mode: Universal"
		end
	end
	
	task.spawn(detectGame)

-- 🟢 ADD SORT TOGGLE (Below search box)
local SortToggle = Instance.new("TextButton", Search)
SortToggle.Name = "SortToggle"
SortToggle.Text = "📊 Sort: Relevance"
SortToggle.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
SortToggle.TextColor3 = Color3.fromRGB(200, 200, 200)
SortToggle.BorderSizePixel = 0
SortToggle.Font = Enum.Font.GothamBold
SortToggle.TextSize = 12
SortToggle.Size = UDim2.new(0.25, 0, 0, 35)
SortToggle.Position = UDim2.new(0.73, 0, 0, 0)
SortToggle.LayoutOrder = -1.5
SortToggle.Visible = false -- Only show when searching

local toggleCorner = Instance.new("UICorner", SortToggle)
toggleCorner.CornerRadius = UDim.new(0, 8)

local sortByViews = false
SortToggle.MouseButton1Click:Connect(function()
	sortByViews = not sortByViews
	SortToggle.Text = sortByViews and "📊 Sort: Popular" or "📊 Sort: Relevance"
	SortToggle.BackgroundColor3 = sortByViews and (getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)) or Color3.fromRGB(30, 30, 40)
	Update() -- Re-fetch with new sort
end)

-- Show/hide toggle when searching
G2L["a3"]:GetPropertyChangedSignal("Text"):Connect(function()
	SortToggle.Visible = (#G2L["a3"].Text > 0)
end)

local FilterBar = Instance.new("Frame", Search)
FilterBar.Name = "FilterBar"
FilterBar.BackgroundColor3 = Color3.fromRGB(20, 20, 25)

	-- 🔴 UI SETUP
	local FilterBar = Instance.new("Frame", Search)
	FilterBar.Name = "FilterBar"
	FilterBar.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
	FilterBar.BorderSizePixel = 0
	FilterBar.Size = UDim2.new(1, 0, 0, 50)
	FilterBar.LayoutOrder = -1
	
	local FilterBarCorner = Instance.new("UICorner", FilterBar)
	FilterBarCorner.CornerRadius = UDim.new(0, 12)
	
	local FilterBarStroke = Instance.new("UIStroke", FilterBar)
FilterBarStroke.Transparency = 0.8
FilterBarStroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
FilterBarStroke.Name = "FilterBarStroke" -- Give it a name so we can find it
	
	local FilterLayout = Instance.new("UIListLayout", FilterBar)
	FilterLayout.FillDirection = Enum.FillDirection.Horizontal
	FilterLayout.Padding = UDim.new(0, 8)
	FilterLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	FilterLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	
	local FilterPadding = Instance.new("UIPadding", FilterBar)
	FilterPadding.PaddingLeft = UDim.new(0, 12)
	FilterPadding.PaddingRight = UDim.new(0, 12)
	
	local function createButton(name, displayText)
		local btn = Instance.new("TextButton", FilterBar)
		btn.Name = name
		btn.Text = displayText
		btn.AutoButtonColor = false
		btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
		btn.TextColor3 = Color3.fromRGB(200, 200, 200)
		btn.BorderSizePixel = 0
		btn.Font = Enum.Font.GothamBold
		btn.TextSize = 12
		btn.Size = UDim2.new(0, 0, 0.7, 0)
		btn.AutomaticSize = Enum.AutomaticSize.X
		
		local btnCorner = Instance.new("UICorner", btn)
		btnCorner.CornerRadius = UDim.new(0, 8)
		local btnPadding = Instance.new("UIPadding", btn)
		btnPadding.PaddingLeft = UDim.new(0, 12)
		btnPadding.PaddingRight = UDim.new(0, 12)
		return btn
	end
	
local RecommendedBtn = createButton("Recommended", "⭐ Recommended")
local AllBtn = createButton("All", "📂 All")
local NoKeyBtn = createButton("NoKey", "🔓 No Key")
local KeyBtn = createButton("KeyRequired", "🔑 Key Required")
local TrendingBtn = createButton("Trending", "🔥 Trending")
local ClearBtn = createButton("Clear", "🔄 Clear")
ClearBtn.LayoutOrder = -999 -- Put it first (leftmost)

-- [[ REPLACE THE WHOLE updateUI FUNCTION WITH THIS ]]
local function updateUI()
    -- 1. Update Buttons
    for _, btn in pairs(FilterBar:GetChildren()) do
        if btn:IsA("TextButton") then
            if btn.Name == Data.Search.CurrentFilter then
                -- Use getgenv().CurrentTheme directly to get the latest color
                btn.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            else
                btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
                btn.TextColor3 = Color3.fromRGB(200, 200, 200)
            end
        end
    end
    
    -- 2. Update Stroke (Border)
    local stroke = FilterBar:FindFirstChild("FilterBarStroke")
    if stroke then 
        stroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
    end
end

-- [[ ADD THIS NEW PART RIGHT HERE ]]
-- This allows the Settings page to force the Search page to update
UIEvents.Search = {
    Refresh = updateUI
}

-- 🔴 FILTER & SORT
local function filterScripts(scriptList)
		local filtered = {}
		for _, scriptData in pairs(scriptList) do
			local passes = false
			
			if Data.Search.CurrentFilter == "Recommended" then
	passes = (scriptData.verified == true)
elseif Data.Search.CurrentFilter == "NoKey" then
	local isPaid = (scriptData.scriptType == "paid")
	local hasKey = (scriptData.key == true)
	passes = (not isPaid) and (not hasKey)
elseif Data.Search.CurrentFilter == "KeyRequired" then
	passes = ((scriptData.key == true) or (scriptData.scriptType == "paid"))
elseif Data.Search.CurrentFilter == "All" then
	passes = true
end
			
			if passes then
				table.insert(filtered, scriptData)
			end
		end
		return filtered
	end
	
	local function sortScripts(scriptList)
		table.sort(scriptList, function(a, b)
			local viewsA = tonumber(a.views) or 0
			local viewsB = tonumber(b.views) or 0
			return viewsA > viewsB
		end)
		return scriptList
	end
	
	-- 🔴 RENDER
	local function renderScripts(scriptList)
		for _, v in pairs(Scripts:GetChildren()) do
			if v:IsA("CanvasGroup") or v:IsA("TextLabel") then v:Destroy() end
		end
		
		local displayText = SearchBox.Text ~= "" and SearchBox.Text or (OriginalGameName or "Universal")
		
	if not scriptList or #scriptList == 0 then
	local noResults = Instance.new("TextLabel", Scripts)
	noResults.Name = "ErrorMessage"
	
	-- 🟢 IMPROVED: Context-aware messages
	local message = ""
if G2L["a3"].Text ~= "" then
message = "No " .. Data.Search.CurrentFilter .. " scripts found for: \"" .. G2L["a3"].Text .. "\""
elseif Data.Search.CurrentFilter == "Recommended" then
	message = "No verified scripts found for: " .. displayText
elseif Data.Search.CurrentFilter == "NoKey" then
	message = "No free scripts found for: " .. displayText
elseif Data.Search.CurrentFilter == "KeyRequired" then
	message = "No premium scripts found for: " .. displayText
else
	message = "No scripts found for: " .. displayText
end
	
	noResults.Text = message
	noResults.TextColor3 = Color3.fromRGB(150, 150, 150)
	noResults.BackgroundTransparency = 1
	noResults.Size = UDim2.new(1, 0, 0, 50)
	noResults.Font = Enum.Font.GothamBold
	noResults.TextSize = 14
	return
end
		
		local verifyicon = utf8.char(57344)
		for i, scriptData in pairs(scriptList) do
			task.spawn(function()
				local new = script.SearchTemplate:Clone()
				new.Parent = Scripts
				new.Name = scriptData.title
				new.Title.Text = scriptData.title .. ((scriptData.verified and verifyicon) or "")
				new.Misc.Thumbnail.Image = scriptData.imageUrl or "rbxassetid://109798560145884"
	
            -- 🟢 APPLY THEME TO EXECUTE ICON
        if new.Misc.Panel:FindFirstChild("Execute") and new.Misc.Panel.Execute:FindFirstChild("Icon") then
            new.Misc.Panel.Execute.Icon.ImageColor3 = getSafeTheme()
        end
        
        -- 🟢 APPLY THEME TO SPACER
        if new.Misc.Panel:FindFirstChild("Spacer1") then
            new.Misc.Panel.Spacer1.BackgroundColor3 = getSafeTheme()
        end
	
				-- STATS PILL
				local StatsPill = Instance.new("Frame", new.Misc)
				StatsPill.Name = "StatsPill"
				StatsPill.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				StatsPill.BackgroundTransparency = 0.6
				StatsPill.Size = UDim2.new(0, 0, 0, 22)
				StatsPill.AutomaticSize = Enum.AutomaticSize.X
				StatsPill.AnchorPoint = Vector2.new(1, 1) 
				StatsPill.Position = UDim2.new(1, -110, 1, -8)
				StatsPill.BorderSizePixel = 0
				StatsPill.ZIndex = 5
				
				local PillCorner = Instance.new("UICorner", StatsPill)
				PillCorner.CornerRadius = UDim.new(0, 6)
				local PillPadding = Instance.new("UIPadding", StatsPill)
				PillPadding.PaddingLeft = UDim.new(0, 8)
				PillPadding.PaddingRight = UDim.new(0, 8)
				
				local StatsText = Instance.new("TextLabel", StatsPill)
				StatsText.BackgroundTransparency = 1
				StatsText.Size = UDim2.new(0, 0, 1, 0)
				StatsText.AutomaticSize = Enum.AutomaticSize.X
				StatsText.Font = Enum.Font.GothamBold
				StatsText.TextSize = 11
				StatsText.TextColor3 = Color3.fromRGB(220, 220, 220)
				StatsText.TextXAlignment = Enum.TextXAlignment.Center
				StatsText.ZIndex = 6
				
				local displayViews = formatNumber(scriptData.views or 0)
				local textContent = "👁️ " .. displayViews
				if scriptData.likeCount then
					textContent = textContent .. "  |  👍 " .. formatNumber(scriptData.likeCount)
				end
				StatsText.Text = textContent
				
				new.Tags.Key.Visible = scriptData.key or false
				new.Tags.Universal.Visible = scriptData.isUniversal or false
				new.Tags.Patched.Visible = scriptData.isPatched or false
				new.Tags.Paid.Visible = scriptData.scriptType == "paid"
				
				new.Misc.Panel.Execute.MouseButton1Click:Connect(function()
					UIEvents.Executor.RunCode(scriptData.script)()
				end)
				
				new.Misc.Panel.Save.MouseButton1Click:Connect(function()
					UIEvents.Saved.SaveFile(scriptData.title, scriptData.script)
				end)
			end)
		end
	end
	
local function Update()
    -- 🟢 RATE LIMIT CHECK
    local currentTime = tick()
    local timeSinceLastRequest = currentTime - lastRequestTime
    
    if timeSinceLastRequest < cooldownTime then
        local waitTime = math.ceil(cooldownTime - timeSinceLastRequest)
        createNotification("Please wait " .. waitTime .. "s before searching again", "Warn", 2)
        return -- Block the request
    end
    
    lastRequestTime = currentTime -- Update last request time
    
    -- 🟢 TRENDING SPECIAL CASE
    if Data.Search.CurrentFilter == "Trending" then
        if isUpdating then return end
        isUpdating = true
        
        local GameLabel = Search:FindFirstChild("GameLabel")
        if GameLabel then 
            GameLabel.Text = "Mode: Trending | Most Interactions"
        end
        
        for _, v in pairs(Scripts:GetChildren()) do
            if v:IsA("CanvasGroup") or v:IsA("TextLabel") then v:Destroy() end
        end
        
        local url = "https://scriptblox.com/api/script/trending?max=50"
        local response = fetchWithRetry(url)
        
        if response then
            local success, data = pcall(function() 
                return HttpService:JSONDecode(response) 
            end)
            
            if success and data.result and data.result.scripts then
                renderScripts(data.result.scripts)
            end
        end
        
        isUpdating = false
        return
    end
    
    if searchDebounce then
        task.cancel(searchDebounce)
        searchDebounce = nil
    end
    
    searchDebounce = task.spawn(function()
        task.wait(0.5)
        
        if isUpdating then return end
        isUpdating = true
        
        for _, v in pairs(Scripts:GetChildren()) do
            if v:IsA("CanvasGroup") or v:IsA("TextLabel") then v:Destroy() end
        end
        
        local loadingMsg = Instance.new("TextLabel", Scripts)
        loadingMsg.Name = "LoadingMessage"
        loadingMsg.Text = "⏳ Loading scripts..."
        loadingMsg.TextColor3 = Color3.fromRGB(200, 200, 200)
        loadingMsg.BackgroundTransparency = 1
        loadingMsg.Size = UDim2.new(1, 0, 0, 50)
        loadingMsg.Font = Enum.Font.GothamBold
        loadingMsg.TextSize = 14
        
        local currentQuery = SearchBox.Text
        if currentQuery == "*" then
            currentQuery = ""
            SearchBox.Text = ""
        end
        
        local function fetchOnePage(url)
            local response = fetchWithRetry(url)
            if response then
                local s2, d = pcall(function() return HttpService:JSONDecode(response) end)
                if s2 and d.result and d.result.scripts then return d.result.scripts end
            end
            return {}
        end
        
        local function fetchPages(baseUrl, numPages)
            local combined = {}
            for i = 1, numPages do
                local url = baseUrl .. "&page=" .. i
                local result = fetchOnePage(url)
                
                if #result == 0 then break end
                
                for _, v in pairs(result) do table.insert(combined, v) end
                
                if numPages > 1 then task.wait(0.05) end
            end
            return combined
        end
        
        local MasterList = {}
        local GameLabel = Search:FindFirstChild("GameLabel")
        
        -- 🟢 FIX: ALWAYS SHOW SCRIPTS (Don't filter by empty search)
        if currentQuery and currentQuery ~= "" and #string.gsub(currentQuery, " ", "") > 0 then
            -- SEARCH MODE
            if GameLabel then 
                GameLabel.Text = "Search: " .. currentQuery
            end
            
            local encoded = HttpService:UrlEncode(currentQuery)
            local url = "https://scriptblox.com/api/script/search?q="..encoded.."&max=50"
            
            if sortByViews then
                url = url .. "&sortBy=views"
            end
            
           MasterList = fetchPages(url, getFetchPages()) -- ✅ ORIGINAL
            
        elseif OriginalGameName then
            -- BROWSING GAME MODE
            if GameLabel then 
                GameLabel.Text = "Game: " .. OriginalGameName
            end
            
            local encodedGame = HttpService:UrlEncode(OriginalGameName)
            local urlGame = "https://scriptblox.com/api/script/search?q="..encodedGame.."&max=50&sortBy=views"
            local urlUni = "https://scriptblox.com/api/script/search?q=Universal&max=50&sortBy=views"
            
           local listGame = fetchPages(urlGame, getFetchPages()) -- ✅ ORIGINAL
local listUni = fetchPages(urlUni, getFetchPages())   -- ✅ ORIGINAL
            
            for _, v in pairs(listGame) do table.insert(MasterList, v) end
            for _, v in pairs(listUni) do table.insert(MasterList, v) end
            
        else
            -- UNIVERSAL MODE
            if GameLabel then 
                GameLabel.Text = "Mode: Universal"
            end
            local url = "https://scriptblox.com/api/script/fetch?max=50"
           MasterList = fetchPages(url, getFetchPages()) -- ✅ ORIGINAL
        end
        
        CachedScripts = MasterList
        local finalScripts = filterScripts(CachedScripts)
        
        if not (currentQuery and currentQuery ~= "") then
            finalScripts = sortScripts(finalScripts)
        end
        
        renderScripts(finalScripts)
        
        isUpdating = false
        searchDebounce = nil
    end)
end

	-- 🔴 EVENTS
local function onFilterClick(filterName)
    Data.Search.CurrentFilter = filterName
    updateUI()
    
    -- 🟢 UPDATE BUTTON COLORS WITH CURRENT THEME
    for _, btn in pairs(FilterBar:GetChildren()) do
        if btn:IsA("TextButton") then
            if btn.Name == filterName then
                btn.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            else
                btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
                btn.TextColor3 = Color3.fromRGB(200, 200, 200)
            end
        end
    end
    Update()
end
	
	RecommendedBtn.MouseButton1Click:Connect(function() 
    if isUpdating then return end -- 🟢 ADD THIS
    onFilterClick("Recommended") 
end)

AllBtn.MouseButton1Click:Connect(function() 
    if isUpdating then return end -- 🟢 ADD THIS
    onFilterClick("All") 
end)

NoKeyBtn.MouseButton1Click:Connect(function() 
    if isUpdating then return end -- 🟢 ADD THIS
    onFilterClick("NoKey") 
end)

KeyBtn.MouseButton1Click:Connect(function() 
    if isUpdating then return end -- 🟢 ADD THIS
    onFilterClick("KeyRequired") 
end)

TrendingBtn.MouseButton1Click:Connect(function() 
    if isUpdating then return end -- 🟢 ADD THIS
    onFilterClick("Trending") 
end)

ClearBtn.MouseButton1Click:Connect(function()
    -- 🟢 RESET ON CANCEL
    if searchDebounce then
        task.cancel(searchDebounce)
        searchDebounce = nil
        isUpdating = false
    end
    
   G2L["a3"].Text = ""
    Data.Search.CurrentFilter = "All"
    detectGame()
    updateUI()
    Update()
    createNotification("Search Cleared", "Info", 2)
end)
	
	SearchBox.FocusLost:Connect(function()
		Update()
	end)
	
	updateUI()
	Update() 
end

	InitTabs.Nav = function()
    local isInstantNext = false;
    
    local function goTo(Name, f)
        -- Handle editing cancellation
        if Data.Editor.EditingSavedFile and Name ~= "Editor" then
            local editingName = Data.Editor.EditingSavedFile
            createNotification("Editing Cancelled", "Warn", 3)
            CLONED_Detectedly.delfile("scripts/" .. editingName .. ".lua");
            Data.Editor.Tabs[editingName] = nil;
            Data.Editor.EditingSavedFile = nil
            UIEvents.EditorTabs.updateUI();
            if Name ~= "Saved" then Name = "Saved" end
        end

        -- 🔴 FIX: Hide all pages first
        for _, page in pairs(Pages:GetChildren()) do
            if page:IsA("Frame") and page ~= Pages.UIPageLayout then
                page.Visible = false
            end
        end
        
        -- Show and jump to target page
       if Pages:FindFirstChild(Name) then
    Pages[Name].Visible = true
    Pages.UIPageLayout:JumpTo(Pages[Name]);
end

-- 🟢 ADD THIS NEW CODE HERE
if Name == "Search" and Pages.Search:FindFirstChild("FilterBar") then
    for _, btn in pairs(Pages.Search.FilterBar:GetChildren()) do
        if btn:IsA("TextButton") then
            if btn.Name == Data.Search.CurrentFilter then
                btn.BackgroundColor3 = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255)
                btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            else
                btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
                btn.TextColor3 = Color3.fromRGB(200, 200, 200)
            end
        end
    end
    
    local stroke = Pages.Search.FilterBar:FindFirstChild("FilterBarStroke")
    if stroke then stroke.Color = getgenv().CurrentTheme or Color3.fromRGB(160, 85, 255) end
end
        
        -- Find navigation button
        local Button = nil
        for _, frame in ipairs(Nav:GetChildren()) do
            if not frame:IsA("Frame") then continue; end
            for _, button in ipairs(frame:GetChildren()) do
                if not button:IsA("TextButton") then continue; end
                if (button.Name == Name) then 
                    Button = button
                    break
                end
            end
        end
        
        if not Button then return; end
        
        Pages.Visible = true;
        EnableFrame.Visible = true;
        local TargetSize = UDim2.new(0, Button.AbsoluteSize.X, 0, Button.AbsoluteSize.Y);
        local TargetPosition = Button.AbsolutePosition - EnableFrame.Parent.AbsolutePosition;
        local TargetPos = UDim2.new(0, TargetPosition.X, 0, TargetPosition.Y);
        
        if (f or isInstantNext) then
            EnableFrame.Position = TargetPos;
            EnableFrame.Size = TargetSize;
            if isInstantNext then isInstantNext = false; end
            return;
        end
        
        local TweenService = game:GetService("TweenService")
        TweenService:Create(EnableFrame, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Position = TargetPos,
            Size = TargetSize,
            BackgroundTransparency = 0
        }):Play();
    end
    
    -- Connect buttons
    for _, frame in ipairs(Nav:GetChildren()) do
        if frame:IsA("Frame") then
            for _, button in ipairs(frame:GetChildren()) do
                if button:IsA("TextButton") then
                    button.MouseButton1Click:Connect(function()
                        goTo(button.Name);
                    end);
                end
            end
        end
    end
    
    task.wait(1);
    goTo("Home", true);
end;
InitTabs.Autoexecute = function()
    -- ✅ ADD DELAY TO AVOID DETECTION
    task.wait(3) -- Wait 3 seconds before auto-executing
    
    local request = request or http_request or (syn and syn.request) or (http and http.request)
    
    -- 🟢 PATH: Punk-X-Files/autoexec
    if CLONED_Detectedly.isfolder("Punk-X-Files/autoexec") then
        local files = CLONED_Detectedly.listfiles("Punk-X-Files/autoexec")
			if files then
				for _, path in pairs(files) do
					if path:match("%.lua$") then
						task.spawn(function()
							local content = CLONED_Detectedly.readfile(path)
							if content and #content > 0 then
								UIEvents.Executor.RunCode(content)()
								--print("[PunkX] Auto-Executed: " .. path)
							end
						end)
					end
				end
			end
		end
	end;

	local Loaded = false;
	local function loadUI()
		if Loaded then
			return;
		end
		for _, f in pairs(InitTabs) do
			task.spawn(f);
		end
		Loaded = true;
	end
	--print("Welcome, " .. game.Players.LocalPlayer.DisplayName .. "!")
	
	local Stored = {};
	local function closeUI()
		Main.EnableFrame.Visible = false;
		hideUI(false);
		script.Parent.Open.Interactable = true;
	end
	local function openUI()
		hideUI(true);
		Main.EnableFrame.Visible = true;
	end
	Leftside.Close.MouseButton1Click:Connect(closeUI);
	script.Parent.Open.Activated:Connect(openUI);
	-- 🔴 STABLE DRAG FUNCTION (Fixes Top-Left Snap)
local function dragify(Frame)
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    
    -- We add a threshold so "Clicks" don't turn into "Drags"
    local DRAG_THRESHOLD = 5 
    local hasMoved = false

    local function update(input)
        local delta = input.Position - dragStart
        
        -- Check if we have moved enough to consider it a drag
        if not hasMoved and delta.Magnitude < DRAG_THRESHOLD then
            return -- Ignore micro-movements (fixes the click issue)
        end
        hasMoved = true -- Now we are officially dragging

        local newPosition = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X, 
            startPos.Y.Scale, 
            startPos.Y.Offset + delta.Y
        )
        
        -- Clamp to screen (Keep inside view)
        local viewport = workspace.CurrentCamera.ViewportSize
        local size = Frame.AbsoluteSize
        
        -- Convert to absolute offset for clamping
        local absX = (viewport.X * newPosition.X.Scale) + newPosition.X.Offset
        local absY = (viewport.Y * newPosition.Y.Scale) + newPosition.Y.Offset
        
        -- Simple clamp logic
        -- (Adjusted for AnchorPoint 0.5, 0.5)
        local clampedX = math.clamp(absX, size.X/2, viewport.X - size.X/2)
        local clampedY = math.clamp(absY, size.Y/2, viewport.Y - size.Y/2)
        
        -- Convert back to UDim2 with 0 Scale to prevent snapping
        local finalPos = UDim2.new(0, clampedX, 0, clampedY)
        
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.05), {
            Position = finalPos
        }):Play()
    end

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            hasMoved = false -- Reset movement check
            dragStart = input.Position
            startPos = Frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)
end
dragify(script.Parent.Open);
	
	-- [PART 1: UI SETUP AFTER LOAD]
task.spawn(function()
    local command = "/e open";
    repeat task.wait(0.1) until game.Players.LocalPlayer
    
    game.Players.LocalPlayer.Chatted:Connect(function(m)
        if ((m:sub(1, #command):lower() == command) and not script.Parent.Enabled and InvisTriggerOpen) then
            script.Parent.Enabled = true;
            if Main:FindFirstChild("EnableFrame") then
                Main.EnableFrame.Visible = true;
            end
            
            -- ✅ FIXED: Reset Hidden Mode when UI reopens
            InvisTriggerOpen = false
            
            -- Use GLOBAL setState function to update toggle
            if _G.setHiddenModeState then
                _G.setHiddenModeState(false, true)  -- false = OFF, true = silent
               -- print("[DEBUG] Hidden Mode toggle updated to OFF")  -- Debug print
            else
                warn("[DEBUG] setHiddenModeState not found!")  -- Debug warning
            end
            
            createNotification("UI Reopened - Hidden Mode Disabled", "Info", 3)
        end
    end);

		-- Wait for Key Validation before modifying UI text
		local maxWait = 20
		repeat 
			task.wait(0.1)
			maxWait = maxWait - 1
		until KeyVailded or maxWait <= 0
		
		if KeyVailded then
			if Main and Main:FindFirstChild("Title") and Main.Title:FindFirstChild("TextLabel") then
				Main.Title.TextLabel.Text = "Hello, " .. game.Players.LocalPlayer.DisplayName .. "!";
			end
		end
	end);

	-- [PART 2: KEY VALIDATION LOGIC]
	do
        loadUI() -- No Key
	end
	
	-- [PART 3: UI SCALING]
	task.defer(function()
		local function UpdateSize()
			task.wait()
			if script.Parent and script.Parent:FindFirstChild("Main") then
				for _, obj in ipairs(script.Parent.Main.Leftside:GetChildren()) do
					if (obj:IsA("Frame") or obj:IsA("TextButton")) then
						scaleUIElement(obj);
					end
				end
				for _, obj in ipairs(script.Parent.Main.Pages.Editor.Panel:GetChildren()) do
					if (obj:IsA("UIListLayout") or obj:IsA("UIPadding") or obj:IsA("UICorner") or obj:IsA("TextButton")) then
						scaleUIElement(obj);
					end
				end
			end
		end
		if workspace.CurrentCamera then
			workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateSize);
		end
		UpdateSize();
		--print("✅ UI Scaled")
	end);
end;
C_2()
