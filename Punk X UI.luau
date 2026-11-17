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
-- // 🛡️ SECURITY: SAFE PARENTING LOGIC //
local function GetSafeParent()
    -- 1. BEST: Modern Hidden UI (Invisible to Games)
    if gethui then 
        return gethui() 
    end
    
    -- 2. GOOD: CoreGui (Hard to detect)
    local CoreGui = game:GetService("CoreGui")
    if CoreGui:FindFirstChild("RobloxGui") then 
        return CoreGui 
    end
    
    -- 3. RISKY: PlayerGui (Visible, fallback)
    return game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

-- // 🛡️ SECURITY: RANDOM NAME //
local randomName = game:GetService("HttpService"):GenerateGUID(false):sub(1, 8)

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
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["3"]["Selectable"] = false;
G2L["3"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["3"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["3"]["ClipsDescendants"] = true;
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[]];
G2L["3"]["Name"] = [[Yo]];


-- StarterGui.ScreenGui.LocalScript.Yo.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 9);


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
G2L["7"]["ImageColor3"] = Color3.fromRGB(208, 208, 208);
G2L["7"]["Selectable"] = false;
G2L["7"]["Image"] = [[rbxassetid://122962777517764]];
G2L["7"]["Size"] = UDim2.new(0.05509, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Delete]];
G2L["7"]["Position"] = UDim2.new(0.46157, 0, 0, 0);


-- StarterGui.ScreenGui.LocalScript.Yo.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["3"]);
G2L["8"]["Transparency"] = 0.95;
G2L["8"]["Thickness"] = 3;
G2L["8"]["Color"] = Color3.fromRGB(232, 229, 255);
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.LocalScript.Yo.Title
G2L["9"] = Instance.new("TextLabel", G2L["3"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 16;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["9"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
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
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(55, 58, 68);
G2L["a"]["Size"] = UDim2.new(1, 0, 0, 48);
G2L["a"]["Position"] = UDim2.new(0, 0, -0.5793, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Name"] = [[SearchTemplate]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Title
G2L["b"] = Instance.new("TextLabel", G2L["a"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["ZIndex"] = 2;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["b"]["TextScaled"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(1, 0, 0.49391, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[Title]];
G2L["b"]["Position"] = UDim2.new(0, 0, -0, 0);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UICorner
G2L["c"] = Instance.new("UICorner", G2L["a"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UIListLayout
G2L["d"] = Instance.new("UIListLayout", G2L["a"]);
G2L["d"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["a"]);
G2L["e"]["Transparency"] = 0.95;
G2L["e"]["Thickness"] = 2;
G2L["e"]["Color"] = Color3.fromRGB(232, 229, 255);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.UIPadding
G2L["f"] = Instance.new("UIPadding", G2L["a"]);
G2L["f"]["PaddingTop"] = UDim.new(0, 6);
G2L["f"]["PaddingRight"] = UDim.new(0, 6);
G2L["f"]["PaddingLeft"] = UDim.new(0, 6);
G2L["f"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc
G2L["10"] = Instance.new("Folder", G2L["a"]);
G2L["10"]["Name"] = [[Misc]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Thumbnail
G2L["11"] = Instance.new("ImageLabel", G2L["10"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["ImageTransparency"] = 0.5;
G2L["11"]["Image"] = [[rbxassetid://126996328694946]];
G2L["11"]["Size"] = UDim2.new(1, 12, 1, 12);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Name"] = [[Thumbnail]];
G2L["11"]["Position"] = UDim2.new(0, -6, 0, -6);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Thumbnail.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Thumbnail.UIGradient
G2L["13"] = Instance.new("UIGradient", G2L["11"]);
G2L["13"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.4375),NumberSequenceKeypoint.new(0.768, 0.29375),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel
G2L["14"] = Instance.new("CanvasGroup", G2L["10"]);
G2L["14"]["ZIndex"] = 3;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["14"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["14"]["Size"] = UDim2.new(0.14752, 0, 0.98, 0);
G2L["14"]["Position"] = UDim2.new(1, 0, 1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Panel]];
G2L["14"]["BackgroundTransparency"] = 0.5;


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
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(232, 229, 255);
G2L["17"]["Size"] = UDim2.new(0, 2, 0.625, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Spacer1]];
G2L["17"]["LayoutOrder"] = 1;
G2L["17"]["BackgroundTransparency"] = 0.93;


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
G2L["19"]["Size"] = UDim2.new(0.3863, 0, 0.94592, 0);
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
G2L["1a"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
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
G2L["1b"]["Size"] = UDim2.new(0.3863, 0, 0.94592, 0);
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
G2L["1c"]["ImageColor3"] = Color3.fromRGB(199, 193, 108);
G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c"]["Image"] = [[rbxassetid://81882572588470]];
G2L["1c"]["Size"] = UDim2.new(0.645, 0, 0.645, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Name"] = [[Icon]];
G2L["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Misc.Panel.UIScale
G2L["1d"] = Instance.new("UIScale", G2L["14"]);
G2L["1d"]["Scale"] = 0.8;


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
G2L["21"]["TextSize"] = 14;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 210, 94);
G2L["21"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["21"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Key]];
G2L["21"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["21"]["Name"] = [[Key]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Key.UIPadding
G2L["22"] = Instance.new("UIPadding", G2L["21"]);
G2L["22"]["PaddingRight"] = UDim.new(0, 12);
G2L["22"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Key.UICorner
G2L["23"] = Instance.new("UICorner", G2L["21"]);



-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Paid
G2L["24"] = Instance.new("TextLabel", G2L["1f"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 14;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 228, 126);
G2L["24"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Paid]];
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["24"]["Name"] = [[Paid]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Paid.UIPadding
G2L["25"] = Instance.new("UIPadding", G2L["24"]);
G2L["25"]["PaddingRight"] = UDim.new(0, 12);
G2L["25"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Paid.UICorner
G2L["26"] = Instance.new("UICorner", G2L["24"]);



-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Patched
G2L["27"] = Instance.new("TextLabel", G2L["1f"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextSize"] = 14;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 153, 153);
G2L["27"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[Patched]];
G2L["27"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["27"]["Name"] = [[Patched]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Patched.UIPadding
G2L["28"] = Instance.new("UIPadding", G2L["27"]);
G2L["28"]["PaddingRight"] = UDim.new(0, 12);
G2L["28"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Patched.UICorner
G2L["29"] = Instance.new("UICorner", G2L["27"]);



-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Universal
G2L["2a"] = Instance.new("TextLabel", G2L["1f"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 14;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(140, 136, 255);
G2L["2a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["2a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[Universal]];
G2L["2a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2a"]["Name"] = [[Universal]];


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Universal.UIPadding
G2L["2b"] = Instance.new("UIPadding", G2L["2a"]);
G2L["2b"]["PaddingRight"] = UDim.new(0, 12);
G2L["2b"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.LocalScript.SearchTemplate.Tags.Universal.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2a"]);



-- StarterGui.ScreenGui.LocalScript.SaveTemplate
G2L["2d"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(55, 58, 68);
G2L["2d"]["Size"] = UDim2.new(1, 0, 0, 48);
G2L["2d"]["Position"] = UDim2.new(0, 0, -0.5793, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Name"] = [[SaveTemplate]];

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UICorner
G2L["2e"] = Instance.new("UICorner", G2L["2d"]);
G2L["2e"]["CornerRadius"] = UDim.new(0, 12);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UIListLayout
G2L["2f"] = Instance.new("UIListLayout", G2L["2d"]);
G2L["2f"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UIStroke
G2L["30"] = Instance.new("UIStroke", G2L["2d"]);
G2L["30"]["Transparency"] = 0.95;
G2L["30"]["Thickness"] = 2;
G2L["30"]["Color"] = Color3.fromRGB(232, 229, 255);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.UIPadding
G2L["31"] = Instance.new("UIPadding", G2L["2d"]);
G2L["31"]["PaddingTop"] = UDim.new(0, 6);
G2L["31"]["PaddingRight"] = UDim.new(0, 6);
G2L["31"]["PaddingLeft"] = UDim.new(0, 6);
G2L["31"]["PaddingBottom"] = UDim.new(0, 6);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc
G2L["32"] = Instance.new("Folder", G2L["2d"]);
G2L["32"]["Name"] = [[Misc]];

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel
G2L["33"] = Instance.new("CanvasGroup", G2L["32"]);
G2L["33"]["ZIndex"] = 3;
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["33"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["33"]["Size"] = UDim2.new(0.35, 0, 0.98, 0); -- Widened for 4 buttons
G2L["33"]["Position"] = UDim2.new(1, 0, 1, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[Panel]];
G2L["33"]["BackgroundTransparency"] = 0.5;

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel.UIListLayout
G2L["34"] = Instance.new("UIListLayout", G2L["33"]);
G2L["34"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["34"]["Padding"] = UDim.new(0, 6);
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
G2L["DeleteBtn"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["DeleteBtn"]["LayoutOrder"] = 1;
G2L["DeleteBtn"]["Text"] = [[]];
G2L["DeleteBtn"]["Name"] = [[Delete]];

G2L["DeleteIcon"] = Instance.new("ImageLabel", G2L["DeleteBtn"]);
G2L["DeleteIcon"]["ZIndex"] = 5;
G2L["DeleteIcon"]["BorderSizePixel"] = 0;
G2L["DeleteIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["DeleteIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["DeleteIcon"]["ImageColor3"] = Color3.fromRGB(199, 107, 107);
G2L["DeleteIcon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["DeleteIcon"]["Image"] = [[rbxassetid://87426080563358]];
G2L["DeleteIcon"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["DeleteIcon"]["BackgroundTransparency"] = 1;
G2L["DeleteIcon"]["Name"] = [[Icon]];
G2L["DeleteIcon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- [[ 2. SPACER (Separates Delete from others) ]]
G2L["Spacer"] = Instance.new("Frame", G2L["33"]);
G2L["Spacer"]["BorderSizePixel"] = 0;
G2L["Spacer"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Spacer"]["Size"] = UDim2.new(0, 8, 0, 0); -- Invisible spacer
G2L["Spacer"]["LayoutOrder"] = 2;
G2L["Spacer"]["BackgroundTransparency"] = 1;
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
G2L["AutoExecBtn"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["AutoExecBtn"]["LayoutOrder"] = 3;
G2L["AutoExecBtn"]["Text"] = [[]];
G2L["AutoExecBtn"]["Name"] = [[AutoExec]];

G2L["AutoExecIcon"] = Instance.new("ImageLabel", G2L["AutoExecBtn"]);
G2L["AutoExecIcon"]["ZIndex"] = 5;
G2L["AutoExecIcon"]["BorderSizePixel"] = 0;
G2L["AutoExecIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["AutoExecIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["AutoExecIcon"]["ImageColor3"] = Color3.fromRGB(255, 50, 50); -- Red default
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
G2L["EditBtn"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["EditBtn"]["LayoutOrder"] = 4;
G2L["EditBtn"]["Text"] = [[]];
G2L["EditBtn"]["Name"] = [[Edit]];

G2L["EditIcon"] = Instance.new("ImageLabel", G2L["EditBtn"]);
G2L["EditIcon"]["ZIndex"] = 5;
G2L["EditIcon"]["BorderSizePixel"] = 0;
G2L["EditIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["EditIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["EditIcon"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
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
G2L["ExecBtn"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["ExecBtn"]["LayoutOrder"] = 5;
G2L["ExecBtn"]["Text"] = [[]];
G2L["ExecBtn"]["Name"] = [[Execute]];

G2L["ExecIcon"] = Instance.new("ImageLabel", G2L["ExecBtn"]);
G2L["ExecIcon"]["ZIndex"] = 5;
G2L["ExecIcon"]["BorderSizePixel"] = 0;
G2L["ExecIcon"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["ExecIcon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ExecIcon"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
G2L["ExecIcon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ExecIcon"]["Image"] = [[rbxassetid://95804011254392]];
G2L["ExecIcon"]["Size"] = UDim2.new(0.7, 0, 0.7, 0);
G2L["ExecIcon"]["BackgroundTransparency"] = 1;
G2L["ExecIcon"]["Name"] = [[Icon]];
G2L["ExecIcon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.ScreenGui.LocalScript.SaveTemplate.Misc.Panel.UIScale
G2L["3c"] = Instance.new("UIScale", G2L["33"]);
G2L["3c"]["Scale"] = 0.8;

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
G2L["3e"]["TextSize"] = 14;
G2L["3e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["3e"]["TextScaled"] = true;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3e"]["Selectable"] = false;
G2L["3e"]["ClearTextOnFocus"] = false;
G2L["3e"]["Size"] = UDim2.new(1, 0, 0.49391, 0);
G2L["3e"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[Script Name]];
G2L["3e"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Main
G2L["3f"] = Instance.new("Frame", G2L["1"]);
G2L["3f"]["Visible"] = false; -- [[ ADD THIS LINE TO FIX FLASHING ]]
G2L["3f"]["Active"] = true;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["3f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Main]];
G2L["3f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Title
G2L["40"] = Instance.new("Frame", G2L["3f"]);
G2L["40"]["ZIndex"] = 2;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["Size"] = UDim2.new(0.92, 0, 0.18651, 0);
G2L["40"]["Position"] = UDim2.new(0.08, 0, 0, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Title]];
G2L["40"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Title.TextLabel
G2L["41"] = Instance.new("TextLabel", G2L["40"]);
G2L["41"]["TextWrapped"] = true;
G2L["41"]["ZIndex"] = 3;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["TextSize"] = 14;
G2L["41"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["41"]["TextScaled"] = true;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["BackgroundTransparency"] = 1;
G2L["41"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Text"] = [[Hello, Username_1!]];


-- StarterGui.ScreenGui.Main.Title.TextLabel.UIPadding
G2L["42"] = Instance.new("UIPadding", G2L["41"]);
G2L["42"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.Main.Title.UIListLayout
G2L["43"] = Instance.new("UIListLayout", G2L["40"]);
G2L["43"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["43"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["43"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Title.UIPadding
G2L["44"] = Instance.new("UIPadding", G2L["40"]);
G2L["44"]["PaddingTop"] = UDim.new(0, 30);
G2L["44"]["PaddingLeft"] = UDim.new(0.05, 0);


-- StarterGui.ScreenGui.Main.Title.TextLabel1
G2L["45"] = Instance.new("TextLabel", G2L["40"]);
G2L["45"]["TextWrapped"] = true;
G2L["45"]["ZIndex"] = 3;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextSize"] = 14;
G2L["45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["45"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["45"]["TextScaled"] = true;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Light, Enum.FontStyle.Normal);
G2L["45"]["TextColor3"] = Color3.fromRGB(105, 105, 105);
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["Size"] = UDim2.new(0, 975, 0, 22);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[What are you using today?]];
G2L["45"]["Name"] = [[TextLabel1]];
G2L["45"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Title.TextLabel1.UIPadding
G2L["46"] = Instance.new("UIPadding", G2L["45"]);
G2L["46"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.Main.Leftside
G2L["47"] = Instance.new("Frame", G2L["3f"]);
G2L["47"]["Active"] = true;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["47"]["Size"] = UDim2.new(0.1, 0, 0.79762, 0);
G2L["47"]["Position"] = UDim2.new(0.0593, 0, 0.58383, 0);
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
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(218, 15, 15);
G2L["4a"]["Selectable"] = false;
G2L["4a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4a"]["BackgroundTransparency"] = 0.5;
G2L["4a"]["Size"] = UDim2.new(0, 49, 0, 49);
G2L["4a"]["LayoutOrder"] = 1;
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[]];
G2L["4a"]["Name"] = [[Close]];
G2L["4a"]["Position"] = UDim2.new(0.5, 0, 0.92097, 0);


-- StarterGui.ScreenGui.Main.Leftside.Close.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Close.ImageLabel
G2L["4c"] = Instance.new("ImageLabel", G2L["4a"]);
G2L["4c"]["ZIndex"] = 2;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4c"]["Image"] = [[rbxassetid://122962777517764]];
G2L["4c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Leftside.Close.ImageLabel.UIScale
G2L["4d"] = Instance.new("UIScale", G2L["4c"]);
G2L["4d"]["Scale"] = 0.5;


-- StarterGui.ScreenGui.Main.Leftside.Close.ImageLabel1
G2L["4e"] = Instance.new("ImageLabel", G2L["4a"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 141, 255);
G2L["4e"]["ImageColor3"] = Color3.fromRGB(255, 106, 106);
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
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
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
G2L["51"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Leftside.Nav.UIStroke
G2L["52"] = Instance.new("UIStroke", G2L["50"]);
G2L["52"]["Transparency"] = 0.95;
G2L["52"]["Thickness"] = 2;
G2L["52"]["Color"] = Color3.fromRGB(232, 229, 255);


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
G2L["78"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["78"]["Size"] = UDim2.new(0.874, 0, 0.76751, 0);
G2L["78"]["Position"] = UDim2.new(0.563, 0, 0.58408, 0);
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
G2L["79"]["Padding"] = UDim.new(1, 0);
G2L["79"]["TweenTime"] = 0.5;


-- StarterGui.ScreenGui.Main.Pages.Editor
G2L["7a"] = Instance.new("Frame", G2L["78"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7a"]["Position"] = UDim2.new(0, 0, -0, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Name"] = [[Editor]];
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
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
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
G2L["80"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.ScreenGui.Main.Pages.Editor.Tabs.Create.UIStroke
G2L["81"] = Instance.new("UIStroke", G2L["7e"]);
G2L["81"]["Transparency"] = 0.95;
G2L["81"]["Thickness"] = 3;
G2L["81"]["Color"] = Color3.fromRGB(232, 229, 255);
G2L["81"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor
G2L["82"] = Instance.new("ScrollingFrame", G2L["7a"]);
G2L["82"]["Active"] = true;
G2L["82"]["ZIndex"] = 2;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["82"]["Name"] = [[Editor]];
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["82"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["82"]["Size"] = UDim2.new(1, 0, 0.85, 0);
G2L["82"]["Position"] = UDim2.new(0, 0, 0.15, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["ScrollBarThickness"] = 5;


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor.Input
G2L["83"] = Instance.new("TextBox", G2L["82"]);
G2L["83"]["Name"] = [[Input]];
G2L["83"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["83"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["83"]["ZIndex"] = 2;
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 16;
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["83"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["83"]["MultiLine"] = true;
G2L["83"]["ClearTextOnFocus"] = false;
G2L["83"]["PlaceholderText"] = [[Enter script here.]];
G2L["83"]["Size"] = UDim2.new(1, -24, 1, -8);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[]];
G2L["83"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor.UIListLayout
G2L["84"] = Instance.new("UIListLayout", G2L["82"]);
G2L["84"]["Padding"] = UDim.new(0, 12);
G2L["84"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["84"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor.UIPadding
G2L["85"] = Instance.new("UIPadding", G2L["82"]);
G2L["85"]["PaddingTop"] = UDim.new(0, 10);
G2L["85"]["PaddingRight"] = UDim.new(0, 6);
G2L["85"]["PaddingLeft"] = UDim.new(0, 12);
G2L["85"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor.UICorner
G2L["86"] = Instance.new("UICorner", G2L["82"]);
G2L["86"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor.Lines
G2L["87"] = Instance.new("TextLabel", G2L["82"]);
G2L["87"]["ZIndex"] = 2;
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 16;
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["87"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["87"]["TextColor3"] = Color3.fromRGB(133, 133, 133);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["Size"] = UDim2.new(0, 12, 0, 0);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[1]];
G2L["87"]["LayoutOrder"] = -1;
G2L["87"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["87"]["Name"] = [[Lines]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Editor.UIStroke
G2L["88"] = Instance.new("UIStroke", G2L["82"]);
G2L["88"]["Transparency"] = 0.95;
G2L["88"]["Thickness"] = 3;
G2L["88"]["Color"] = Color3.fromRGB(232, 229, 255);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel
G2L["89"] = Instance.new("CanvasGroup", G2L["7a"]);
G2L["89"]["ZIndex"] = 3;
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["89"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["89"]["Size"] = UDim2.new(0.42127, 0, 0.15, 0);
G2L["89"]["Position"] = UDim2.new(0.99, 0, 0.98, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Name"] = [[Panel]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.UIListLayout
G2L["8a"] = Instance.new("UIListLayout", G2L["89"]);
G2L["8a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["8a"]["Padding"] = UDim.new(0, 6);
G2L["8a"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["8a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["8a"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["89"]);
G2L["8b"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Spacer1
G2L["8c"] = Instance.new("Frame", G2L["89"]);
G2L["8c"]["ZIndex"] = 4;
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(232, 229, 255);
G2L["8c"]["Size"] = UDim2.new(0, 2, 0.625, 0);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Name"] = [[Spacer1]];
G2L["8c"]["LayoutOrder"] = 1;
G2L["8c"]["BackgroundTransparency"] = 0.93;


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Spacer1.UICorner
G2L["8d"] = Instance.new("UICorner", G2L["8c"]);
G2L["8d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Spacer2
G2L["8e"] = Instance.new("Frame", G2L["89"]);
G2L["8e"]["ZIndex"] = 4;
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(232, 229, 255);
G2L["8e"]["Size"] = UDim2.new(0, 2, 0.625, 0);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Name"] = [[Spacer2]];
G2L["8e"]["BackgroundTransparency"] = 0.93;


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Spacer2.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["8e"]);
G2L["8f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Rename
G2L["90"] = Instance.new("TextButton", G2L["89"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["AutoButtonColor"] = false;
G2L["90"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["90"]["ZIndex"] = 4;
G2L["90"]["BackgroundTransparency"] = 1;
G2L["90"]["Size"] = UDim2.new(0, 34, 0, 34);
G2L["90"]["LayoutOrder"] = -1;
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Text"] = [[]];
G2L["90"]["Name"] = [[Rename]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Rename.Icon
G2L["91"] = Instance.new("ImageLabel", G2L["90"]);
G2L["91"]["ZIndex"] = 5;
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
G2L["91"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["91"]["Image"] = [[rbxassetid://80861536658698]];
G2L["91"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["BackgroundTransparency"] = 1;
G2L["91"]["Name"] = [[Icon]];
G2L["91"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Paste
G2L["92"] = Instance.new("TextButton", G2L["89"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["AutoButtonColor"] = false;
G2L["92"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["92"]["ZIndex"] = 4;
G2L["92"]["BackgroundTransparency"] = 1;
G2L["92"]["Size"] = UDim2.new(0, 34, 0, 34);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Text"] = [[]];
G2L["92"]["Name"] = [[Paste]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Paste.Icon
G2L["93"] = Instance.new("ImageLabel", G2L["92"]);
G2L["93"]["ZIndex"] = 5;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
G2L["93"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["93"]["Image"] = [[rbxassetid://88661060655687]];
G2L["93"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["BackgroundTransparency"] = 1;
G2L["93"]["Name"] = [[Icon]];
G2L["93"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.ExecuteClipboard
G2L["94"] = Instance.new("TextButton", G2L["89"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["AutoButtonColor"] = false;
G2L["94"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["94"]["ZIndex"] = 4;
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["Size"] = UDim2.new(0, 34, 0, 34);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Text"] = [[]];
G2L["94"]["Name"] = [[ExecuteClipboard]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.ExecuteClipboard.Icon
G2L["95"] = Instance.new("ImageLabel", G2L["94"]);
G2L["95"]["ZIndex"] = 5;
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
G2L["95"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["95"]["Image"] = [[rbxassetid://74812558983299]];
G2L["95"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["BackgroundTransparency"] = 1;
G2L["95"]["Name"] = [[Icon]];
G2L["95"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Execute
G2L["96"] = Instance.new("TextButton", G2L["89"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["AutoButtonColor"] = false;
G2L["96"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["ZIndex"] = 4;
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Size"] = UDim2.new(0, 34, 0, 34);
G2L["96"]["LayoutOrder"] = 1;
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Text"] = [[]];
G2L["96"]["Name"] = [[Execute]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Execute.Icon
G2L["97"] = Instance.new("ImageLabel", G2L["96"]);
G2L["97"]["ZIndex"] = 5;
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
G2L["97"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["97"]["Image"] = [[rbxassetid://95804011254392]];
G2L["97"]["Size"] = UDim2.new(0.66667, 0, 0.66667, 0);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["BackgroundTransparency"] = 1;
G2L["97"]["Name"] = [[Icon]];
G2L["97"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Save
G2L["98"] = Instance.new("TextButton", G2L["89"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["AutoButtonColor"] = false;
G2L["98"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["ZIndex"] = 4;
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0, 34, 0, 34);
G2L["98"]["LayoutOrder"] = -2;
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[]];
G2L["98"]["Name"] = [[Save]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Save.Icon
G2L["99"] = Instance.new("ImageLabel", G2L["98"]);
G2L["99"]["ZIndex"] = 5;
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["ImageColor3"] = Color3.fromRGB(68, 67, 83);
G2L["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["99"]["Image"] = [[rbxassetid://81882572588470]];
G2L["99"]["Size"] = UDim2.new(0.645, 0, 0.645, 0);
G2L["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["99"]["BackgroundTransparency"] = 1;
G2L["99"]["Name"] = [[Icon]];
G2L["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Delete
G2L["9a"] = Instance.new("TextButton", G2L["89"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["AutoButtonColor"] = false;
G2L["9a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["ZIndex"] = 4;
G2L["9a"]["BackgroundTransparency"] = 1;
G2L["9a"]["Size"] = UDim2.new(0, 34, 0, 34);
G2L["9a"]["LayoutOrder"] = -2;
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[]];
G2L["9a"]["Name"] = [[Delete]];


-- StarterGui.ScreenGui.Main.Pages.Editor.Panel.Delete.Icon
G2L["9b"] = Instance.new("ImageLabel", G2L["9a"]);
G2L["9b"]["ZIndex"] = 5;
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
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
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["9e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["9e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9e"]["Position"] = UDim2.new(0.00157, 0, 0.08058, 0);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["ScrollBarThickness"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Search.Scripts.UICorner1
G2L["9f"] = Instance.new("UICorner", G2L["9e"]);
G2L["9f"]["Name"] = [[UICorner1]];
G2L["9f"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Search.Scripts.UIStroke1
G2L["a0"] = Instance.new("UIStroke", G2L["9e"]);
G2L["a0"]["Transparency"] = 0.95;
G2L["a0"]["Thickness"] = 2;
G2L["a0"]["Color"] = Color3.fromRGB(232, 229, 255);
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
G2L["a3"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["TextSize"] = 14;
G2L["a3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["a3"]["FontFace"] = Font.new([[rbxassetid://16658246179]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a3"]["ClearTextOnFocus"] = false;
G2L["a3"]["PlaceholderText"] = [[Search]];
G2L["a3"]["Size"] = UDim2.new(0, 640, 0, 40);
G2L["a3"]["Position"] = UDim2.new(0, 0, 0.00368, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Text"] = [[]];
G2L["a3"]["LayoutOrder"] = -1;


-- StarterGui.ScreenGui.Main.Pages.Search.TextBox.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a3"]);
G2L["a4"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Search.TextBox.UIStroke1
G2L["a5"] = Instance.new("UIStroke", G2L["a3"]);
G2L["a5"]["Transparency"] = 0.95;
G2L["a5"]["Thickness"] = 2;
G2L["a5"]["Color"] = Color3.fromRGB(232, 229, 255);
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
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["a9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["a9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a9"]["Position"] = UDim2.new(0.00157, 0, 0.08058, 0);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["ScrollBarThickness"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts.UICorner1
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["Name"] = [[UICorner1]];
G2L["aa"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Saved.Scripts.UIStroke1
G2L["ab"] = Instance.new("UIStroke", G2L["a9"]);
G2L["ab"]["Transparency"] = 0.95;
G2L["ab"]["Thickness"] = 2;
G2L["ab"]["Color"] = Color3.fromRGB(232, 229, 255);
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
G2L["ae"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["TextSize"] = 14;
G2L["ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["ae"]["FontFace"] = Font.new([[rbxassetid://16658246179]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ae"]["ClearTextOnFocus"] = false;
G2L["ae"]["PlaceholderText"] = [[Search]];
G2L["ae"]["Size"] = UDim2.new(0, 640, 0, 40);
G2L["ae"]["Position"] = UDim2.new(0, 0, 0.00368, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Text"] = [[]];
G2L["ae"]["LayoutOrder"] = -1;


-- StarterGui.ScreenGui.Main.Pages.Saved.TextBox.UICorner
G2L["af"] = Instance.new("UICorner", G2L["ae"]);
G2L["af"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.Pages.Saved.TextBox.UIStroke1
G2L["b0"] = Instance.new("UIStroke", G2L["ae"]);
G2L["b0"]["Transparency"] = 0.95;
G2L["b0"]["Thickness"] = 2;
G2L["b0"]["Color"] = Color3.fromRGB(232, 229, 255);
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
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["b6"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["b6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Name"] = [[RScript]];


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.UICorner
G2L["b7"] = Instance.new("UICorner", G2L["b6"]);
G2L["b7"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.UIStroke
G2L["b8"] = Instance.new("UIStroke", G2L["b6"]);
G2L["b8"]["Transparency"] = 0.95;
G2L["b8"]["Thickness"] = 3;
G2L["b8"]["Color"] = Color3.fromRGB(232, 229, 255);


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
G2L["ba"]["TextSize"] = 14;
G2L["ba"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ba"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["ba"]["TextScaled"] = true;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
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
G2L["bd"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Light, Enum.FontStyle.Normal);
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
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["c2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Name"] = [[Fade]];


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Misc.Fade.UIGradient
G2L["c3"] = Instance.new("UIGradient", G2L["c2"]);
G2L["c3"]["Rotation"] = 270;
G2L["c3"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.394, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.ScreenGui.Main.Pages.Home.Features.RScript.Misc.Fade.UICorner
G2L["c4"] = Instance.new("UICorner", G2L["c2"]);
G2L["c4"]["CornerRadius"] = UDim.new(0, 14);


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
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
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
G2L["c8"]["Transparency"] = 0.95;
G2L["c8"]["Thickness"] = 3;
G2L["c8"]["Color"] = Color3.fromRGB(232, 229, 255);
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
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
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
G2L["d0"]["Text"] = [[Your key is currently <font color="rgb(125, 255, 125)">active</font> and will expire on...]];
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
G2L["d3"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.Main.Pages.Home.Key.UIStroke
G2L["d4"] = Instance.new("UIStroke", G2L["ce"]);
G2L["d4"]["Thickness"] = 2;
G2L["d4"]["Color"] = Color3.fromRGB(126, 255, 126);


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
G2L["d5"]["TextColor3"] = Color3.fromRGB(133, 133, 133);
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
G2L["d8"]["ImageColor3"] = Color3.fromRGB(126, 255, 126);
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
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(44, 46, 54);
G2L["db"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["db"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["db"]["Position"] = UDim2.new(0.00157, 0, 0.08058, 0);
G2L["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["db"]["ScrollBarThickness"] = 1;


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UICorner1
G2L["dc"] = Instance.new("UICorner", G2L["db"]);
G2L["dc"]["Name"] = [[UICorner1]];
G2L["dc"]["CornerRadius"] = UDim.new(0, 24);


-- StarterGui.ScreenGui.Main.Pages.Settings.Scripts.UIStroke1
G2L["dd"] = Instance.new("UIStroke", G2L["db"]);
G2L["dd"]["Transparency"] = 0.95;
G2L["dd"]["Thickness"] = 2;
G2L["dd"]["Color"] = Color3.fromRGB(232, 229, 255);
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
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(55, 58, 68);
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
G2L["e3"]["Transparency"] = 0.95;
G2L["e3"]["Thickness"] = 2;
G2L["e3"]["Color"] = Color3.fromRGB(232, 229, 255);


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
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(57, 143, 255);
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
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(57, 143, 255);
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
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(194, 194, 194);
G2L["ec"]["ImageColor3"] = Color3.fromRGB(232, 229, 255);
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
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(55, 58, 68);
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
G2L["f2"]["Transparency"] = 0.95;
G2L["f2"]["Thickness"] = 2;
G2L["f2"]["Color"] = Color3.fromRGB(232, 229, 255);


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
G2L["f5"]["BackgroundColor3"] = Color3.fromRGB(57, 143, 255);
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
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(146, 155, 174);
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
G2L["fc"]["BackgroundColor3"] = Color3.fromRGB(33, 111, 255);
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
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(0, 117, 218);
G2L["11e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11e"]["Name"] = [[EnableFrame]];


-- StarterGui.ScreenGui.Main.EnableFrame.UICorner
G2L["11f"] = Instance.new("UICorner", G2L["11e"]);
G2L["11f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.Main.EnableFrame.Glow
G2L["120"] = Instance.new("ImageLabel", G2L["11e"]);
G2L["120"]["ZIndex"] = 2;
G2L["120"]["BorderSizePixel"] = 0;
G2L["120"]["BackgroundColor3"] = Color3.fromRGB(0, 141, 255);
G2L["120"]["ImageColor3"] = Color3.fromRGB(0, 255, 255);
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


-- StarterGui.ScreenGui.Side
G2L["122"] = Instance.new("Frame", G2L["1"]);
G2L["122"]["Visible"] = false; -- [[ ADD THIS ]]
G2L["122"]["Active"] = true;
G2L["122"]["ZIndex"] = 0;
G2L["122"]["BorderSizePixel"] = 0;
G2L["122"]["BackgroundColor3"] = Color3.fromRGB(26, 27, 32);
G2L["122"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["122"]["Size"] = UDim2.new(0.19418, 0, 1, 0);
G2L["122"]["Position"] = UDim2.new(0.01314, 0, 0.5, 0);
G2L["122"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["122"]["Name"] = [[Side]];


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
G2L["144"]["PlaceholderText"] = [[Name.]];
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
	local Services = setmetatable({}, {
		__index = function(self, name)
			local success, cache = pcall(function()
				return cloneref(game:GetService(name))
			end)
			if success then
				rawset(self, name, cache)
				return cache
			else
				error("Invalid Service: " .. tostring(name))
			end
		end
	})
	local clonefunction = clonefunction or function(func)
		return func
	end
	--local loadstring = clonefunction(loadstring);
	local PlayerInfo do
		local success = pcall(function()
			PlayerInfo = HttpService:JSONDecode(game:HttpGet("https://ipwho.is") or {})
		end)
		if not success then
			PlayerInfo = {}
		end
	end
	local InvisTriggerOpen = false;
	local TweenService = game:GetService("TweenService");
	local UserInputService = game:GetService("UserInputService");
	local StarterGui = game:GetService("StarterGui");
	local GuiService = game:GetService("GuiService");
	local Lighting = game:GetService("Lighting");
	local ReplicatedStorage = game:GetService("ReplicatedStorage");
	local RunService = game:GetService("RunService");
	local Players = game:GetService("Players");
	local HttpService = game:GetService("HttpService");
	local Main = script.Parent:WaitForChild("Main");
	local Leftside = Main:WaitForChild("Leftside");
	local Nav = Leftside:WaitForChild("Nav");
	local Pages = Main:WaitForChild("Pages");
	local EnableFrame = Main:WaitForChild("EnableFrame");
	local Player = Players.LocalPlayer;
	local KeyVailded = true;
	local highlighter = nil;
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
	pcall(function()
		-- getgenv()._PULL_INT(); -- REMOVED: BAC-7205
	end);
	local CLONED_Detectedly = deepCopy(Detectedly or {});
	Detectedly = nil;
	local print = function(...)
	end;
	for i, v in pairs({
		'pushautoexec',
		'runcode',
	
		'open_url',
		'toast',
		-- file
		'writefile' ,
		'appendfile',
		'readfile',
		'isfile',
		'listfiles',
		'delfile',
		-- folder
		'deldir',
		'isfolder',
		'makedir'}) do
		if not CLONED_Detectedly[v] then
			CLONED_Detectedly[v] = function(...) print(v,"|", ...) end
		end
	end
	local BASE_WIDTH = 733;
	local BASE_HEIGHT = 392;
-- 🟢 1. CONNECT REAL EXECUTOR FUNCTIONS
	-- We overwrite the dummy functions with the real ones from your executor
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
	CLONED_Detectedly.pushautoexec = (queue_on_teleport or queueonteleport or syn and syn.queue_on_teleport) or function() end

	-- 🟢 2. DELAYED FOLDER CREATION (2 seconds delay)
	task.spawn(function()
		task.wait(2)
		local function SafeMakeDir(dir)
			if CLONED_Detectedly.isfolder and CLONED_Detectedly.makedir then
				-- If folder doesn't exist, create it
				if not CLONED_Detectedly.isfolder(dir) then
					pcall(function() CLONED_Detectedly.makedir(dir) end)
				end
			end
		end

		-- Create Parent First
		SafeMakeDir("Punk-X-Files")
		
		-- Create Subfolders
		local subs = {
			"Punk-X-Files/scripts",
			"Punk-X-Files/saves",
			"Punk-X-Files/autoexec",
			"Punk-X-Files/rconsole"
		}
		
		for _, folder in ipairs(subs) do
			SafeMakeDir(folder)
		end
	end)
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
					Noification["7"]:Destroy();
					table.clear(Noification);
				end);
			end
		end
		task.spawn(C_6);
	end
	local load_highlighter = function()
		local alignmentDebounce = {};
		local utility = {};
		utility.sanitizeRichText = function(s)
			return string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(s, "&", "&amp;"), "<", "&lt;"), ">", "&gt;"), '"', "&quot;"), "'", "&apos;");
		end;
		utility.convertTabsToSpaces = function(s)
			return string.gsub(s, "\t", "    ");
		end;
		utility.removeControlChars = function(s)
			return string.gsub(s, "[\0\1\2\3\4\5\6\7\8\11\12\13\14\15\16\17\18\19\20\21\22\23\24\25\26\27\28\29\30\31]+", "");
		end;
		utility.getInnerAbsoluteSize = function(textObject)
			local fullSize = textObject.AbsoluteSize;
			local padding = textObject:FindFirstChildWhichIsA("UIPadding");
			if padding then
				local offsetX = padding.PaddingLeft.Offset + padding.PaddingRight.Offset;
				local scaleX = (fullSize.X * padding.PaddingLeft.Scale) + (fullSize.X * padding.PaddingRight.Scale);
				local offsetY = padding.PaddingTop.Offset + padding.PaddingBottom.Offset;
				local scaleY = (fullSize.Y * padding.PaddingTop.Scale) + (fullSize.Y * padding.PaddingBottom.Scale);
				return Vector2.new(fullSize.X - (scaleX + offsetX), fullSize.Y - (scaleY + offsetY));
			else
				return fullSize;
			end
		end;
		utility.getTextBounds = function(textObject)
			if (textObject.ContentText == "") then
				return Vector2.zero;
			end
			local textBounds = textObject.TextBounds;
			local attempts = 0;
			while (textBounds.Y ~= textBounds.Y) or (textBounds.Y < 1) do
				if (attempts > 10) then
					local lines = # string.split(textObject.Text, "\n");
					return Vector2.new(textObject.AbsoluteSize.X, textObject.TextSize * lines * 1.2);
				end
				attempts += 1
				task.wait();
				textBounds = textObject.TextBounds;
			end
			return textBounds;
		end;
		local DEFAULT_TOKEN_COLORS = {
			background = Color3.fromRGB(47, 47, 47),
			iden = Color3.fromRGB(234, 234, 234),
			keyword = Color3.fromRGB(215, 174, 255),
			builtin = Color3.fromRGB(131, 206, 255),
			string = Color3.fromRGB(196, 255, 193),
			number = Color3.fromRGB(255, 125, 125),
			comment = Color3.fromRGB(140, 140, 155),
			operator = Color3.fromRGB(255, 239, 148),
			custom = Color3.fromRGB(119, 122, 255),
			boolean = Color3.fromRGB(255, 250, 200),
			function_name = Color3.fromRGB(250, 239, 148),
			["OPERATORS/BRACKETS-Color"] = Color3.fromRGB(127, 148, 154)
		};
		DEFAULT_TOKEN_COLORS["nil"] = DEFAULT_TOKEN_COLORS['boolean'];
		local theme = {
			tokenColors = {},
			tokenRichTextFormatter = {}
		};
		theme.setColors = function(tokenColors)
			assert(type(tokenColors) == "table", "Theme.updateColors expects a table");
			for tokenName, color in tokenColors do
				theme.tokenColors[tokenName] = color;
			end
		end;
		theme.getColoredRichText = function(color, text)
			return '<font color="#' .. color:ToHex() .. '">' .. text .. "</font>";
		end;
		theme.getColor = function(tokenName)
			return theme.tokenColors[tokenName];
		end;
		theme.matchStudioSettings = function(refreshCallback)
			local success = pcall(function()
				local studio = settings().Studio;
				local studioTheme = studio.Theme;
				local function getTokens()
					return {
						background = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBackground),
						iden = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptText),
						keyword = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptKeyword),
						builtin = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBuiltInFunction),
						string = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptString),
						number = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptNumber),
						comment = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptComment),
						operator = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptOperator),
						custom = studioTheme:GetColor(Enum.StudioStyleGuideColor.ScriptBool)
					};
				end
				theme.setColors(getTokens());
				studio.ThemeChanged:Connect(function()
					studioTheme = studio.Theme;
					theme.setColors(getTokens());
					refreshCallback();
				end);
			end);
			return success;
		end;
		theme.setColors(DEFAULT_TOKEN_COLORS);
		local language = {
			keyword = {
				["and"] = "keyword",
				["break"] = "keyword",
				["continue"] = "keyword",
				["do"] = "keyword",
				["else"] = "keyword",
				["elseif"] = "keyword",
				["end"] = "keyword",
				export = "keyword",
				["false"] = "boolean",
				["for"] = "keyword",
				["function"] = "keyword",
				["if"] = "keyword",
				["in"] = "keyword",
				["local"] = "keyword",
				["nil"] = "boolean",
				["not"] = "keyword",
				["or"] = "keyword",
				["repeat"] = "keyword",
				["return"] = "keyword",
				self = "keyword",
				["then"] = "keyword",
				["true"] = "boolean",
				type = "keyword",
				typeof = "keyword",
				["until"] = "keyword",
				["while"] = "keyword"
			},
			builtin = {
				assert = "function",
				error = "function",
				getfenv = "function",
				getmetatable = "function",
				ipairs = "function",
				loadstring = "function",
				newproxy = "function",
				next = "function",
				pairs = "function",
				pcall = "function",
				print = "function",
				rawequal = "function",
				rawget = "function",
				rawlen = "function",
				rawset = "function",
				select = "function",
				setfenv = "function",
				setmetatable = "function",
				tonumber = "function",
				tostring = "function",
				unpack = "function",
				xpcall = "function",
				collectgarbage = "function",
				_G = "table",
				_VERSION = "string",
				bit32 = "table",
				coroutine = "table",
				debug = "table",
				math = "table",
				os = "table",
				string = "table",
				table = "table",
				utf8 = "table",
				DebuggerManager = "function",
				delay = "function",
				gcinfo = "function",
				PluginManager = "function",
				require = "function",
				settings = "function",
				spawn = "function",
				tick = "function",
				time = "function",
				UserSettings = "function",
				wait = "function",
				warn = "function",
				Delay = "function",
				ElapsedTime = "function",
				elapsedTime = "function",
				printidentity = "function",
				Spawn = "function",
				Stats = "function",
				stats = "function",
				Version = "function",
				version = "function",
				Wait = "function",
				ypcall = "function",
				game = "Instance",
				plugin = "Instance",
				script = "Instance",
				shared = "Instance",
				workspace = "Instance",
				Game = "Instance",
				Workspace = "Instance",
				Axes = "table",
				BrickColor = "table",
				CatalogSearchParams = "table",
				CFrame = "table",
				Color3 = "table",
				ColorSequence = "table",
				ColorSequenceKeypoint = "table",
				DateTime = "table",
				DockWidgetPluginGuiInfo = "table",
				Enum = "table",
				Faces = "table",
				FloatCurveKey = "table",
				Font = "table",
				Instance = "table",
				NumberRange = "table",
				NumberSequence = "table",
				NumberSequenceKeypoint = "table",
				OverlapParams = "table",
				PathWaypoint = "table",
				PhysicalProperties = "table",
				Random = "table",
				Ray = "table",
				RaycastParams = "table",
				Rect = "table",
				Region3 = "table",
				Region3int16 = "table",
				RotationCurveKey = "table",
				SharedTable = "table",
				task = "table",
				TweenInfo = "table",
				UDim = "table",
				UDim2 = "table",
				Vector2 = "table",
				Vector2int16 = "table",
				Vector3 = "table",
				Vector3int16 = "table"
			},
			libraries = {
				_G = {},
				bit32 = {
					arshift = "function",
					band = "function",
					bnot = "function",
					bor = "function",
					btest = "function",
					bxor = "function",
					countlz = "function",
					countrz = "function",
					extract = "function",
					lrotate = "function",
					lshift = "function",
					replace = "function",
					rrotate = "function",
					rshift = "function"
				},
				coroutine = {
					close = "function",
					create = "function",
					isyieldable = "function",
					resume = "function",
					running = "function",
					status = "function",
					wrap = "function",
					yield = "function"
				},
				debug = {
					dumpheap = "function",
					getmemorycategory = "function",
					info = "function",
					loadmodule = "function",
					profilebegin = "function",
					profileend = "function",
					resetmemorycategory = "function",
					setmemorycategory = "function",
					traceback = "function"
				},
				math = {
					abs = "function",
					acos = "function",
					asin = "function",
					atan2 = "function",
					atan = "function",
					ceil = "function",
					clamp = "function",
					cos = "function",
					cosh = "function",
					deg = "function",
					exp = "function",
					floor = "function",
					fmod = "function",
					frexp = "function",
					ldexp = "function",
					log10 = "function",
					log = "function",
					max = "function",
					min = "function",
					modf = "function",
					noise = "function",
					pow = "function",
					rad = "function",
					random = "function",
					randomseed = "function",
					round = "function",
					sign = "function",
					sin = "function",
					sinh = "function",
					sqrt = "function",
					tan = "function",
					tanh = "function",
					huge = "number",
					pi = "number"
				},
				os = {
					clock = "function",
					date = "function",
					difftime = "function",
					time = "function"
				},
				string = {
					byte = "function",
					char = "function",
					find = "function",
					format = "function",
					gmatch = "function",
					gsub = "function",
					len = "function",
					lower = "function",
					match = "function",
					pack = "function",
					packsize = "function",
					rep = "function",
					reverse = "function",
					split = "function",
					sub = "function",
					unpack = "function",
					upper = "function"
				},
				table = {
					clear = "function",
					clone = "function",
					concat = "function",
					create = "function",
					find = "function",
					foreach = "function",
					foreachi = "function",
					freeze = "function",
					getn = "function",
					insert = "function",
					isfrozen = "function",
					maxn = "function",
					move = "function",
					pack = "function",
					remove = "function",
					sort = "function",
					unpack = "function"
				},
				utf8 = {
					char = "function",
					codepoint = "function",
					codes = "function",
					graphemes = "function",
					len = "function",
					nfcnormalize = "function",
					nfdnormalize = "function",
					offset = "function",
					charpattern = "string"
				},
				Axes = {
					new = "function"
				},
				BrickColor = {
					Black = "function",
					Blue = "function",
					DarkGray = "function",
					Gray = "function",
					Green = "function",
					new = "function",
					New = "function",
					palette = "function",
					Random = "function",
					random = "function",
					Red = "function",
					White = "function",
					Yellow = "function"
				},
				CatalogSearchParams = {
					new = "function"
				},
				CFrame = {
					Angles = "function",
					fromAxisAngle = "function",
					fromEulerAngles = "function",
					fromEulerAnglesXYZ = "function",
					fromEulerAnglesYXZ = "function",
					fromMatrix = "function",
					fromOrientation = "function",
					lookAt = "function",
					new = "function",
					identity = "CFrame"
				},
				Color3 = {
					fromHex = "function",
					fromHSV = "function",
					fromRGB = "function",
					new = "function",
					toHSV = "function"
				},
				ColorSequence = {
					new = "function"
				},
				ColorSequenceKeypoint = {
					new = "function"
				},
				DateTime = {
					fromIsoDate = "function",
					fromLocalTime = "function",
					fromUniversalTime = "function",
					fromUnixTimestamp = "function",
					fromUnixTimestampMillis = "function",
					now = "function"
				},
				DockWidgetPluginGuiInfo = {
					new = "function"
				},
				Enum = {},
				Faces = {
					new = "function"
				},
				FloatCurveKey = {
					new = "function"
				},
				Font = {
					fromEnum = "function",
					fromId = "function",
					fromName = "function",
					new = "function"
				},
				Instance = {
					new = "function"
				},
				NumberRange = {
					new = "function"
				},
				NumberSequence = {
					new = "function"
				},
				NumberSequenceKeypoint = {
					new = "function"
				},
				OverlapParams = {
					new = "function"
				},
				PathWaypoint = {
					new = "function"
				},
				PhysicalProperties = {
					new = "function"
				},
				Random = {
					new = "function"
				},
				Ray = {
					new = "function"
				},
				RaycastParams = {
					new = "function"
				},
				Rect = {
					new = "function"
				},
				Region3 = {
					new = "function"
				},
				Region3int16 = {
					new = "function"
				},
				RotationCurveKey = {
					new = "function"
				},
				SharedTable = {
					clear = "function",
					clone = "function",
					cloneAndFreeze = "function",
					increment = "function",
					isFrozen = "function",
					new = "function",
					size = "function",
					update = "function"
				},
				task = {
					cancel = "function",
					defer = "function",
					delay = "function",
					desynchronize = "function",
					spawn = "function",
					synchronize = "function",
					wait = "function"
				},
				TweenInfo = {
					new = "function"
				},
				UDim = {
					new = "function"
				},
				UDim2 = {
					fromOffset = "function",
					fromScale = "function",
					new = "function"
				},
				Vector2 = {
					new = "function",
					one = "Vector2",
					xAxis = "Vector2",
					yAxis = "Vector2",
					zero = "Vector2"
				},
				Vector2int16 = {
					new = "function"
				},
				Vector3 = {
					fromAxis = "function",
					FromAxis = "function",
					fromNormalId = "function",
					FromNormalId = "function",
					new = "function",
					one = "Vector3",
					xAxis = "Vector3",
					yAxis = "Vector3",
					zAxis = "Vector3",
					zero = "Vector3"
				},
				Vector3int16 = {
					new = "function"
				}
			}
		};
		local enumLibraryTable = language.libraries.Enum;
		for _, enum in ipairs(Enum:GetEnums()) do
			enumLibraryTable[tostring(enum)] = "Enum";
		end
		local function TableToLib(tablev)
			local result = {};
			for n, t in tablev do
				if (type(t) == "table") then
					result[tostring(n)] = TableToLib(t);
				else
					result[tostring(n)] = tostring(typeof(t));
				end
			end
			return result;
		end
		local function UpdateGlobalTypes()
			for _, typer in {
				_G,
				((getgenv and getgenv()) or {})
				} do
				for name, value in typer do
					if (type(value) == "table") then
						local convet = TableToLib(value);
						if (typer == "_G") then
							language.libraries['_G'][tostring(name)] = convet;
						else
							language.libraries[tostring(name)] = convet;
							language.builtin[tostring(name)] = "builtin";
						end
					else
						language.keyword[tostring(name)] = tostring(typeof(value));
					end
				end
			end
		end
		UpdateGlobalTypes();
		local lexer = {};
		local Prefix, Suffix, Cleaner = "^[%c%s]*", "[%c%s]*", "[%c%s]+";
		local UNICODE = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]+";
		local NUMBER_A = "0[xX][%da-fA-F_]+";
		local NUMBER_B = "0[bB][01_]+";
		local NUMBER_C = "%d+%.?%d*[eE][%+%-]?%d+";
		local NUMBER_D = "%d+[%._]?[%d_eE]*";
		local OPERATORS = "[:;<>/~%*%(%)%-={},%.#%^%+%%]+";
		local BRACKETS = "[%[%]]+";
		local IDEN = "[%a_][%w_]*";
		local STRING_EMPTY = '([\'\"])%1';
		local STRING_PLAIN = '([\'\"])[^\n]-([^\\]%1)';
		local STRING_INTER = "`[^\n]-`";
		local STRING_INCOMP_A = '([\'\"]).-\n';
		local STRING_INCOMP_B = '([\'\"])[^\n]*';
		local STRING_MULTI = "%[(=*)%[.-%]%1%]";
		local STRING_MULTI_INCOMP = "%[=*%[.-.*";
		local COMMENT_MULTI = "%-%-%[(=*)%[.-%]%1%]";
		local COMMENT_MULTI_INCOMP = "%-%-%[=*%[.-.*";
		local COMMENT_PLAIN = "%-%-.-\n";
		local COMMENT_INCOMP = "%-%-.*";
		local FUNCTION_NAME = "function%s+([%a_][%w_%.]*)";
		local lang = language;
		local lua_keyword = lang.keyword;
		local lua_builtin = lang.builtin;
		local lua_libraries = lang.libraries;
		lexer.language = lang;
		local lua_matches = {
			{
				(Prefix .. IDEN .. Suffix),
				"var"
			},
			{
				(Prefix .. NUMBER_A .. Suffix),
				"number"
			},
			{
				(Prefix .. NUMBER_B .. Suffix),
				"number"
			},
			{
				(Prefix .. NUMBER_C .. Suffix),
				"number"
			},
			{
				(Prefix .. NUMBER_D .. Suffix),
				"number"
			},
			{
				(Prefix .. STRING_EMPTY .. Suffix),
				"string"
			},
			{
				(Prefix .. STRING_PLAIN .. Suffix),
				"string"
			},
			{
				(Prefix .. STRING_INCOMP_A .. Suffix),
				"string"
			},
			{
				(Prefix .. STRING_INCOMP_B .. Suffix),
				"string"
			},
			{
				(Prefix .. STRING_MULTI .. Suffix),
				"string"
			},
			{
				(Prefix .. STRING_MULTI_INCOMP .. Suffix),
				"string"
			},
			{
				(Prefix .. STRING_INTER .. Suffix),
				"string_inter"
			},
			{
				(Prefix .. COMMENT_MULTI .. Suffix),
				"comment"
			},
			{
				(Prefix .. COMMENT_MULTI_INCOMP .. Suffix),
				"comment"
			},
			{
				(Prefix .. COMMENT_PLAIN .. Suffix),
				"comment"
			},
			{
				(Prefix .. COMMENT_INCOMP .. Suffix),
				"comment"
			},
			{
				(Prefix .. OPERATORS .. Suffix),
				"OPERATORS/BRACKETS-Color"
			},
			{
				(Prefix .. BRACKETS .. Suffix),
				"OPERATORS/BRACKETS-Color"
			},
			{
				(Prefix .. UNICODE .. Suffix),
				"iden"
			},
			{
				"^.",
				"iden"
			}
		};
		local PATTERNS, TOKENS = {}, {};
		for i, m in lua_matches do
			PATTERNS[i] = m[1];
			TOKENS[i] = m[2];
		end
		lexer.scan = function(s)
			UpdateGlobalTypes();
			local index = 1;
			local size = # s;
			local previousContent1, previousContent2, previousContent3, previousToken = "", "", "", "";
			local thread = coroutine.create(function()
				while index <= size do
					local matched = false;
					for tokenType, pattern in ipairs(PATTERNS) do
						local start, finish = string.find(s, pattern, index);
						if (start == nil) then
							continue;
						end
						index = finish + 1;
						matched = true;
						local content = string.sub(s, start, finish);
						local rawToken = TOKENS[tokenType];
						local processedToken = rawToken;
						if (rawToken == "var") then
							local cleanContent = string.gsub(content, Cleaner, "");
							if lua_keyword[cleanContent] then
								processedToken = (theme.getColor(lua_keyword[cleanContent]) and lua_keyword[cleanContent]) or "keyword";
							elseif lua_builtin[cleanContent] then
								processedToken = "builtin";
							elseif ((previousToken == "keyword") and string.match(previousContent1, "function")) then
								processedToken = "function_name";
							elseif (string.find(previousContent1, "%.[%s%c]*$") and (previousToken ~= "comment")) then
								local parent = string.gsub(previousContent2, Cleaner, "");
								local lib = lua_libraries[parent];
								if (lib and lib[cleanContent] and not string.find(previousContent3, "%.[%s%c]*$")) then
									processedToken = "builtin";
								else
									processedToken = "iden";
								end
							else
								processedToken = "iden";
							end
						elseif (rawToken == "string_inter") then
							if not string.find(content, "[^\\]{") then
								processedToken = "string";
							else
								processedToken = nil;
								local isString = true;
								local subIndex = 1;
								local subSize = # content;
								while subIndex <= subSize do
									local subStart, subFinish = string.find(content, "^.-[^\\][{}]", subIndex);
									if (subStart == nil) then
										coroutine.yield("string", string.sub(content, subIndex));
										break;
									end
									if isString then
										subIndex = subFinish + 1;
										coroutine.yield("string", string.sub(content, subStart, subFinish));
										isString = false;
									else
										subIndex = subFinish;
										local subContent = string.sub(content, subStart, subFinish - 1);
										for innerToken, innerContent in lexer.scan(subContent) do
											coroutine.yield(innerToken, innerContent);
										end
										isString = true;
									end
								end
							end
						end
						previousContent3 = previousContent2;
						previousContent2 = previousContent1;
						previousContent1 = content;
						previousToken = processedToken or rawToken;
						if processedToken then
							coroutine.yield(processedToken, content);
						end
						break;
					end
					if not matched then
						return;
					end
				end
				return;
			end);
			return function()
				if (coroutine.status(thread) == "dead") then
					return;
				end
				local success, token, content = coroutine.resume(thread);
				if (success and token) then
					return token, content;
				end
				return;
			end;
		end;
		lexer.navigator = function()
			local nav = {
				Source = "",
				TokenCache = table.create(50),
				_RealIndex = 0,
				_UserIndex = 0,
				_ScanThread = nil
			};
			nav.Destroy = function(self)
				self.Source = nil;
				self._RealIndex = nil;
				self._UserIndex = nil;
				self.TokenCache = nil;
				self._ScanThread = nil;
			end;
			nav.SetSource = function(self, SourceString)
				self.Source = SourceString;
				self._RealIndex = 0;
				self._UserIndex = 0;
				table.clear(self.TokenCache);
				self._ScanThread = coroutine.create(function()
					for Token, Src in lexer.scan(self.Source) do
						self._RealIndex += 1
						self.TokenCache[self._RealIndex] = {
							Token,
							Src
						};
						coroutine.yield(Token, Src);
					end
				end);
			end;
			nav.Next = function()
				nav._UserIndex += 1
				if (nav._RealIndex >= nav._UserIndex) then
					return table.unpack(nav.TokenCache[nav._UserIndex]);
				elseif (coroutine.status(nav._ScanThread) == "dead") then
					return;
				else
					local success, token, src = coroutine.resume(nav._ScanThread);
					if (success and token) then
						return token, src;
					else
						return;
					end
				end
			end;
			nav.Peek = function(PeekAmount)
				local GoalIndex = nav._UserIndex + PeekAmount;
				if (nav._RealIndex >= GoalIndex) then
					if (GoalIndex > 0) then
						return table.unpack(nav.TokenCache[GoalIndex]);
					else
						return;
					end
				elseif (coroutine.status(nav._ScanThread) == "dead") then
					return;
				else
					local IterationsAway = GoalIndex - nav._RealIndex;
					local success, token, src = nil, nil, nil;
					for _ = 1, IterationsAway do
						success, token, src = coroutine.resume(nav._ScanThread);
						if not (success or token) then
							break;
						end
					end
					return token, src;
				end
			end;
			return nav;
		end;
		local highlight_enabled = true;
		local Highlighter = {
			defaultLexer = lexer,
			_textObjectData = {},
			_cleanups = {}
		};
		Highlighter._getLabelingInfo = function(textObject)
			local data = Highlighter._textObjectData[textObject];
			if not data then
				return;
			end
			local src = utility.convertTabsToSpaces(utility.removeControlChars(textObject.Text));
			local numLines = # string.split(src, "\n");
			if (numLines == 0) then
				return;
			end
			local textHeight;
			if ((textObject.TextBounds.Y > 0) and (numLines > 0)) then
				textHeight = textObject.TextBounds.Y / numLines;
			else
				textHeight = textObject.TextSize * 1.2;
			end
			return {
				data = data,
				numLines = numLines,
				textBounds = Vector2.new(textObject.AbsoluteSize.X, textHeight * numLines),
				textHeight = textHeight,
				innerAbsoluteSize = utility.getInnerAbsoluteSize(textObject),
				textColor = theme.getColor("iden"),
				textFont = textObject.FontFace,
				textSize = textObject.TextSize,
				labelSize = UDim2.new(0, 2000, 0, math.ceil(textHeight))
			};
		end;
		Highlighter._alignLabels = function(textObject)
			if alignmentDebounce[textObject] then
				task.cancel(alignmentDebounce[textObject]);
			end
			alignmentDebounce[textObject] = task.defer(function()
				alignmentDebounce[textObject] = nil;
				local labelingInfo = Highlighter._getLabelingInfo(textObject);
				if not labelingInfo then
					return;
				end
				for lineNumber, lineLabel in labelingInfo.data.Labels do
					lineLabel.TextColor3 = labelingInfo.textColor;
					lineLabel.FontFace = labelingInfo.textFont;
					lineLabel.TextSize = labelingInfo.textSize;
					lineLabel.ZIndex = 3;
					lineLabel.Size = labelingInfo.labelSize;
					lineLabel.TextWrapped = false;
					lineLabel.TextTruncate = Enum.TextTruncate.None;
					lineLabel.AutomaticSize = Enum.AutomaticSize.None;
					lineLabel.Position = UDim2.fromOffset(0, math.floor(labelingInfo.textHeight * (lineNumber - 1)));
				end
			end);
		end;
		Highlighter._populateLabels = function(props)
			local textObject = props.textObject;
			local src = (highlight_enabled and utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text))) or "";
			local lexer = props.lexer or Highlighter.defaultLexer;
			local customLang = props.customLang;
			local forceUpdate = props.forceUpdate;
			local data = Highlighter._textObjectData[textObject];
			if ((data == nil) or (data.Text == src)) then
				if (forceUpdate ~= true) then
					return;
				end
			end
			if highlight_enabled then
				textObject.Text = src;
			end
			local lineLabels = data.Labels;
			local previousLines = data.Lines;
			local lines = string.split(src, "\n");
			data.Lines = lines;
			data.Text = src;
			data.Lexer = lexer;
			data.CustomLang = customLang;
			if (src == "") then
				for l = 1, # lineLabels do
					if (lineLabels[l].Text == "") then
						continue;
					end
					lineLabels[l].Text = "";
				end
				return;
			end
			local idenColor = theme.getColor("iden");
			local labelingInfo = Highlighter._getLabelingInfo(textObject);
			local richTextBuffer, bufferIndex, lineNumber = table.create(5), 0, 1;
			for token, content in lexer.scan(src) do
				local Color = (function()
					if (customLang and customLang[content]) then
						return theme.getColor("custom");
					else
						return theme.getColor(token) or idenColor;
					end
				end)();
				local tokenLines = string.split(utility.sanitizeRichText(content), "\n");
				for l, tokenLine in tokenLines do
					local lineLabel = lineLabels[lineNumber];
					if not lineLabel then
						local newLabel = Instance.new("TextLabel");
						newLabel.AutoLocalize = false;
						newLabel.RichText = true;
						newLabel.BackgroundTransparency = 1;
						newLabel.Text = "";
						newLabel.TextXAlignment = Enum.TextXAlignment.Left;
						newLabel.TextYAlignment = Enum.TextYAlignment.Top;
						newLabel.TextColor3 = labelingInfo.textColor;
						newLabel.FontFace = labelingInfo.textFont;
						newLabel.TextSize = labelingInfo.textSize;
						newLabel.Size = labelingInfo.labelSize;
						newLabel.ZIndex = 3;
						newLabel.TextWrapped = false;
						newLabel.TextTruncate = Enum.TextTruncate.None;
						newLabel.AutomaticSize = Enum.AutomaticSize.None;
						newLabel.ClipsDescendants = false;
						newLabel.Position = UDim2.fromOffset(0, math.floor(labelingInfo.textHeight * (lineNumber - 1)));
						newLabel.Parent = textObject:FindFirstChildWhichIsA("Folder");
						lineLabels[lineNumber] = newLabel;
						lineLabel = newLabel;
					end
					if (l > 1) then
						if (forceUpdate or (lines[lineNumber] ~= previousLines[lineNumber])) then
							lineLabels[lineNumber].Text = table.concat(richTextBuffer);
						end
						lineNumber += 1
						bufferIndex = 0;
						table.clear(richTextBuffer);
					end
					if (forceUpdate or (lines[lineNumber] ~= previousLines[lineNumber])) then
						bufferIndex += 1
						if ((Color ~= idenColor) and string.find(tokenLine, "[%S%C]")) then
							richTextBuffer[bufferIndex] = theme.getColoredRichText(Color, tokenLine);
						else
							richTextBuffer[bufferIndex] = tokenLine;
						end
					end
				end
			end
			if (richTextBuffer[1] and lineLabels[lineNumber]) then
				lineLabels[lineNumber].Text = table.concat(richTextBuffer);
			end
			for l = lineNumber + 1, # lineLabels do
				if (lineLabels[l].Text == "") then
					continue;
				end
				lineLabels[l].Text = "";
			end
		end;
		Highlighter.highlight = function(props)
			local textObject = props.textObject;
			local src = utility.convertTabsToSpaces(utility.removeControlChars(props.src or textObject.Text));
			local lexer = props.lexer or Highlighter.defaultLexer;
			local customLang = props.customLang;
			if Highlighter._cleanups[textObject] then
				Highlighter._populateLabels(props);
				Highlighter._alignLabels(textObject);
				return Highlighter._cleanups[textObject];
			end
			textObject.RichText = false;
			if highlight_enabled then
				textObject.Text = src;
			end
			textObject.TextXAlignment = Enum.TextXAlignment.Left;
			textObject.TextYAlignment = Enum.TextYAlignment.Top;
			textObject.BackgroundColor3 = theme.getColor("background");
			textObject.TextColor3 = theme.getColor("iden");
			textObject.TextTransparency = 0.5;
			local lineFolder = textObject:FindFirstChildWhichIsA("Folder");
			if (lineFolder == nil) then
				local newLineFolder = Instance.new("Folder");
				newLineFolder.Parent = textObject;
				lineFolder = newLineFolder;
			end
			local data = {
				Text = "",
				Labels = {},
				Lines = {},
				Lexer = lexer,
				CustomLang = customLang
			};
			Highlighter._textObjectData[textObject] = data;
			local connections = {};
			local function cleanup()
				lineFolder:Destroy();
				Highlighter._textObjectData[textObject] = nil;
				Highlighter._cleanups[textObject] = nil;
				if alignmentDebounce[textObject] then
					task.cancel(alignmentDebounce[textObject]);
					alignmentDebounce[textObject] = nil;
				end
				for _key, connection in connections do
					connection:Disconnect();
				end
				table.clear(connections);
			end
			Highlighter._cleanups[textObject] = cleanup;
			connections['AncestryChanged'] = textObject.AncestryChanged:Connect(function()
				if textObject.Parent then
					return;
				end
				cleanup();
			end);
			connections['TextChanged'] = textObject:GetPropertyChangedSignal("Text"):Connect(function()
				Highlighter._populateLabels(props);
			end);
			connections['TextBoundsChanged'] = textObject:GetPropertyChangedSignal("TextBounds"):Connect(function()
				Highlighter._alignLabels(textObject);
			end);
			connections['AbsoluteSizeChanged'] = textObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				Highlighter._alignLabels(textObject);
			end);
			connections['FontFaceChanged'] = textObject:GetPropertyChangedSignal("FontFace"):Connect(function()
				Highlighter._alignLabels(textObject);
			end);
			connections['Focused'] = textObject.Focused:Connect(function()
				highlight_enabled = false;
				Highlighter._populateLabels(props);
				Highlighter._alignLabels(textObject);
			end);
			connections['FocusLost'] = textObject.FocusLost:Connect(function()
				highlight_enabled = true;
				Highlighter._populateLabels(props);
				Highlighter._alignLabels(textObject);
			end);
			Highlighter._populateLabels(props);
			Highlighter._alignLabels(textObject);
			return cleanup;
		end;
		Highlighter.refresh = function()
			for textObject, data in Highlighter._textObjectData do
				for _, lineLabel in data.Labels do
					lineLabel.TextColor3 = theme.getColor("iden");
				end
				Highlighter.highlight({
					textObject = textObject,
					forceUpdate = true,
					src = data.Text,
					lexer = data.Lexer,
					customLang = data.CustomLang
				});
			end
		end;
		Highlighter.setTokenColors = function(colors)
			theme.setColors(colors);
			Highlighter.refresh();
		end;
		Highlighter.getTokenColor = function(tokenName)
			return theme.getColor(tokenName);
		end;
		Highlighter.matchStudioSettings = function()
			local applied = theme.matchStudioSettings(Highlighter.refresh);
			if applied then
				Highlighter.refresh();
			end
		end;
		return Highlighter;
	end;
	local function getDuplicatedName(baseName, existingNames)
		if not existingNames[baseName] then
			return baseName;
		end
		local counter = 1;
		local newName;
		repeat
			newName = baseName .. " " .. counter;
			counter = counter + 1;
		until not existingNames[newName]
		return newName;
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
	
	local update_lines = function(editor, linesFrame)
		local lines = editor.Text:split("\n");
		linesFrame.Text = "";
		for i in lines do
			linesFrame.Text = linesFrame.Text .. i .. "\n";
		end
	end;
	local Data = {
		Editor = {
			CurrentTab = nil,
			CurrentOrder = 0,
			Tabs = {}
		},
		Saves = {
			Scripts = {}
		}
	};
	
	local InitTabs = {};
	-- [[ UPDATED UI EVENTS & LOGIC ]]
	local UIEvents = {};
	UIEvents = {
		EditorTabs = {
			getHighestOrder = function()
				local HighestOrder = - 1;
				for _, v in pairs(Data.Editor.Tabs) do
					if (v[2] > HighestOrder) then
						HighestOrder = v[2];
					end
				end
				return HighestOrder;
			end,
			createTab = function(TabName, Content, isTemp)
				local HighestOrder = UIEvents.EditorTabs.getHighestOrder();
				Content = Content or "";
				
				if not isTemp then
					TabName = getDuplicatedName(TabName, Data.Editor.Tabs or {});
					-- ✅ PROTECTED: File write operation
					pcall(function()
						CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. TabName .. ".lua", HttpService:JSONEncode({
							Name = TabName,
							Content = Content,
							Order = (HighestOrder + 1)
						}));
					end)
				end

				if Data.Editor.Tabs then
					Data.Editor.Tabs[TabName] = {
						Content,
						(HighestOrder + 1)
					};
				end
				-- ✅ PROTECTED: Tab switching
				pcall(function()
					UIEvents.EditorTabs.switchTab(TabName);
				end)
				pcall(function()
					UIEvents.EditorTabs.updateUI();
				end)
			end,
			saveTab = function(tabName, Content, isExplicitSave)
				tabName = tabName or Data.Editor.CurrentTab;
				if not tabName then return end

				-- [[ MODE 1: EDITING SAVED FILE ]]
				if Data.Editor.EditingSavedFile == tabName then
					if isExplicitSave then
						UIEvents.Saved.SaveFile(tabName, Content, true) 
						createNotification("Saved File Overwritten", "Success", 3)
						
						-- ✅ PROTECTED: File delete
						pcall(function()
							CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. tabName .. ".lua")
						end)
						Data.Editor.Tabs[tabName] = nil
						Data.Editor.EditingSavedFile = nil
						Data.Editor.CurrentTab = nil
						
						UIEvents.EditorTabs.updateUI()
						UIEvents.Nav.goTo("Saved")
					else
						local TabData = Data.Editor.Tabs[tabName];
						if TabData then
							-- ✅ PROTECTED: File write
							pcall(function()
								CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. tabName .. ".lua", HttpService:JSONEncode({
									Name = tabName,
									Content = Content,
									Order = TabData[2]
								}));
							end)
							Data.Editor.Tabs[tabName] = { Content, TabData[2] };
						end
					end
					return
				end

				-- [[ MODE 2: NORMAL EDITOR ]]
				if isExplicitSave then
					UIEvents.Saved.SaveFile(tabName, Content, false)
				else
					local TabData = Data.Editor.Tabs[tabName];
					if (TabData) then
						-- ✅ PROTECTED: File write
						pcall(function()
							CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. tabName .. ".lua", HttpService:JSONEncode({
								Name = tabName,
								Content = Content,
								Order = TabData[2]
							}));
						end)
						Data.Editor.Tabs[tabName] = {
							Content,
							TabData[2]
						};
					end
				end
			end,
			switchTab = function(ToTab)
				-- [[ CANCELLATION LOGIC ]]
				if Data.Editor.EditingSavedFile and Data.Editor.EditingSavedFile ~= ToTab then
					local editingName = Data.Editor.EditingSavedFile
					
					createNotification("Editing Cancelled", "Warn", 3)
					CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. editingName .. ".lua");
					Data.Editor.Tabs[editingName] = nil;
					Data.Editor.EditingSavedFile = nil
					UIEvents.EditorTabs.updateUI()
				end

				if (Data.Editor.Tabs[ToTab] and not Data.Editor.IsSwitching) then
					Data.Editor.IsSwitching = true;
					local Editor = Pages:WaitForChild("Editor");
					local EditorFrame = Editor:WaitForChild("Editor").Input;
					local OldTab = Data.Editor.CurrentTab;
					
					if (OldTab and Data.Editor.Tabs[OldTab] and OldTab ~= Data.Editor.EditingSavedFile) then
						local CurrentContent = EditorFrame.Text;
						UIEvents.EditorTabs.saveTab(OldTab, CurrentContent, false);
					end
					
					Data.Editor.CurrentTab = ToTab;
					local TabContent = Data.Editor.Tabs[ToTab][1] or "";
					EditorFrame.Text = TabContent;
					Data.Editor.IsSwitching = false;
					UIEvents.EditorTabs.updateUI();
				end
			end,
			delTab = function(Name)
				local total = 0;
				for i, v in pairs(Data.Editor.Tabs) do
					total = total + 1;
				end
				
				local isEditing = (Data.Editor.EditingSavedFile == Name)
				
				if ((total - 1) <= 0) and not isEditing then
					createNotification("Cannot delete last tab!", "Error", 5)
					return;
				end
				
				local HighestOrder = UIEvents.EditorTabs.getHighestOrder();
				for i, v in pairs(Data.Editor.Tabs) do
					if (i ~= Name) then
						UIEvents.EditorTabs.switchTab(i);
					end
				end
				
			if not isEditing then
					CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. Name .. ".lua");
				end
				
				Data.Editor.Tabs[Name] = nil;
				
				if isEditing then
					createNotification("Editing Cancelled", "Warn", 3)
					Data.Editor.EditingSavedFile = nil
					UIEvents.Nav.goTo("Saved") 
				end

				UIEvents.EditorTabs.updateUI();
			end,
			updateUI = function()
				-- 1. Clean Tabs
				for _, v in pairs(Pages.Editor.Tabs:GetChildren()) do
					if v:GetAttribute("no") then continue end
					if v:IsA("TextButton") then v:Destroy() end
				end
				
				-- 2. HIDE PLUS BUTTON if in Edit Mode
				if Pages.Editor.Tabs:FindFirstChild("Create") then
					Pages.Editor.Tabs.Create.Visible = (Data.Editor.EditingSavedFile == nil)
				end

				local total = 0;
				for i, v in pairs(Data.Editor.Tabs) do
					-- 3. HIDE OTHER TABS if in Edit Mode
					if Data.Editor.EditingSavedFile and i ~= Data.Editor.EditingSavedFile then
						continue
					end
					
					total = total + 1;
					local new = script.Yo:Clone();
					new.Parent = Pages.Editor.Tabs;
					new.Title.Text = i;
					new.Name = i;
					new.MouseButton1Click:Connect(function()
						UIEvents.EditorTabs.switchTab(i);
					end);
					new.Delete.MouseButton1Click:Connect(function()
						UIEvents.EditorTabs.delTab(i);
					end);
					new.LayoutOrder = v[2];
					if (Data.Editor.CurrentTab == i) then
						new.BackgroundColor3 = Color3.fromRGB(0, 116, 217);
					end
				end
				local Editor = Pages:WaitForChild("Editor");
				local Panel = Editor:WaitForChild("Panel");
				local EditorFrame = Editor:WaitForChild("Editor");
				
				if ((total <= 0) or (Data.Editor.CurrentTab == nil)) then
					EditorFrame.Visible = false;
					Panel.Visible = false;
				else
					EditorFrame.Visible = true;
					Panel.Visible = true;
				end
			end,
			RenameFile = function(NewName, TargetTab)
				if Data.Editor.EditingSavedFile == TargetTab then
					NewName = getDuplicatedName(NewName, Data.Saves.Scripts or {});
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

				NewName = getDuplicatedName(NewName, Data.Editor.Tabs or {});
				if not Data.Editor.Tabs[NewName] then
					if Data.Editor.Tabs then
						Data.Editor.Tabs[NewName] = Data.Editor.Tabs[TargetTab]
					end
					
					CLONED_Detectedly.writefile("Punk-X-Files/scripts/" .. NewName .. ".lua", HttpService:JSONEncode({
						Name = NewName,
						Content = Data.Editor.Tabs[TargetTab][1],
						Order = Data.Editor.Tabs[TargetTab][2]
					}));
					CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. TargetTab .. ".lua");
					
					Data.Editor.Tabs[TargetTab] = nil
					Data.Editor.CurrentTab = NewName
					
					UIEvents.EditorTabs.updateUI();
				end
			end
		},
	Saved = {
			SaveFile = function(Name, Content, Overwrite)
				if not Overwrite then
					Name = getDuplicatedName(Name, Data.Saves.Scripts or {});
				end
				
				CLONED_Detectedly.writefile("Punk-X-Files/saves/" .. Name .. ".lua", HttpService:JSONEncode({
					Name = Name,
					Content = Content
				}));
				Data.Saves.Scripts[Name] = Content;
				UIEvents.Saved.UpdateUI();
				
				if not Overwrite then
					createNotification("Saved to: " .. Name, "Success", 3)
				end
			end,
			DelFile = function(Name)
				CLONED_Detectedly.delfile("Punk-X-Files/saves/" .. Name .. ".lua");
				Data.Saves.Scripts[Name] = nil;
				UIEvents.Saved.UpdateUI();
			end,
			UpdateUI = function()
				for _, v in pairs(Pages.Saved.Scripts:GetChildren()) do
					if v:GetAttribute("no") then continue end
					if v:IsA("CanvasGroup") then v:Destroy() end
				end
				for i, v in pairs(Data.Saves.Scripts) do
					local new = script.SaveTemplate:Clone();
					new.Parent = Pages.Saved.Scripts;
					new.Name = i;
					new.Title.Text = i;
					
					new.Misc.Panel.Execute.MouseButton1Click:Connect(function()
						UIEvents.Executor.RunCode(v)();
					end);
					
					new.Misc.Panel.Delete.MouseButton1Click:Connect(function()
						UIEvents.Saved.DelFile(i);
					end);

					-- [[ FIX: EDIT LOGIC ]]
					new.Misc.Panel.Edit.MouseButton1Click:Connect(function()
						if Data.Editor.EditingSavedFile == i then
							UIEvents.Nav.goTo("Editor")
							return
						end
						
						if Data.Editor.EditingSavedFile then
							local old = Data.Editor.EditingSavedFile
							CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. old .. ".lua")
							Data.Editor.Tabs[old] = nil
							Data.Editor.EditingSavedFile = nil
						end

						-- [IMPORTANT] Set the flag BEFORE creating the tab
						-- This ensures updateUI hides other tabs immediately
						Data.Editor.EditingSavedFile = i
						UIEvents.EditorTabs.createTab(i, v, true)
						
						UIEvents.Nav.goTo("Editor")
						createNotification("Editing: " .. i, "Info", 3)
					end)

					local autoExecPath = "Punk-X-Files/autoexec/" .. i .. ".lua"
					local isAutoOn = CLONED_Detectedly.isfile(autoExecPath)
					
					if isAutoOn then
						new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(85, 255, 85)
					else
						new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(255, 50, 50)
					end
					
					new.Misc.Panel.AutoExec.MouseButton1Click:Connect(function()
						if CLONED_Detectedly.isfile(autoExecPath) then
							CLONED_Detectedly.delfile(autoExecPath)
							new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(255, 50, 50)
							createNotification("AutoExec Deactivated", "Error", 3)
						else
							CLONED_Detectedly.writefile(autoExecPath, v)
							new.Misc.Panel.AutoExec.Icon.ImageColor3 = Color3.fromRGB(85, 255, 85)
							createNotification("AutoExec Activated", "Success", 3)
						end
					end)

					new.Title.FocusLost:Connect(function(press)
						local newName = new.Title.Text;
						local isEmpty = # (string.gsub(newName, "[%s]", "")) <= 0;
						if (not press or isEmpty or (newName == i)) then
							new.Title.Text = i;
							return;
						end
						UIEvents.Saved.RenameFile(newName, i);
					end);
				end
			end,
			RenameFile = function(NewName, TargetTab)
				NewName = getDuplicatedName(NewName, Data.Saves.Scripts or {});
				if not Data.Saves.Scripts[NewName] then
					UIEvents.Saved.SaveFile(NewName, Data.Saves.Scripts[TargetTab], false);
					UIEvents.Saved.DelFile(TargetTab);
					UIEvents.Saved.UpdateUI();
				end
			end
		},
	Executor = {
    RunCode = function(content)
        local func, x = loadstring(content);
        if not func then
            createNotification("Execution Failed!", "Error", 5);
            task.spawn(function() error(x) end);
            return function() end;
        else
            createNotification("Executed!", "Success", 5);
            return func;
        end
    end,
    
    -- Initialize safe console print
    Init = function()
        _G.safeConsolePrint = function(message, messageType)
            messageType = messageType or Enum.MessageType.MessageOutput
            
            if messageType == Enum.MessageType.MessageInfo then
                print("[INFO]:", message)
            elseif messageType == Enum.MessageType.MessageWarning then
                warn("[WARNING]:", message)
            elseif messageType == Enum.MessageType.MessageError then
                error("[ERROR]: " .. message)
            else
                print(message)
            end
        end
    end
},
	Key = {
			Save = function(Key)
				CLONED_Detectedly.writefile("Punk-X-Files/punk-x-key.txt", Key);
			end
		},
		Nav = {
			goTo = function(Name)
				if Pages:FindFirstChild(Name) then
					Pages.UIPageLayout:JumpTo(Pages[Name]);
				end
				
				local Button = nil
				for _, frame in ipairs(Nav:GetChildren()) do
					if frame:IsA("Frame") then
						for _, btn in ipairs(frame:GetChildren()) do
							if btn.Name == Name then Button = btn break end
						end
					end
				end
				
				if Button then
					EnableFrame.Visible = true;
					Pages.Visible = true; 
					local TargetSize = UDim2.new(0, Button.AbsoluteSize.X, 0, Button.AbsoluteSize.Y);
					local TargetPosition = Button.AbsolutePosition - EnableFrame.Parent.AbsolutePosition;
					local TargetPos = UDim2.new(0, TargetPosition.X, 0, TargetPosition.Y);
					
					EnableFrame.Position = TargetPos;
					EnableFrame.Size = TargetSize;
					EnableFrame.BackgroundTransparency = 0
				end
			end
		}
	};

	InitTabs.Settings = function()
		local SetData = {
			UITransparency = {
				Type = "Slider",
				Callback = function(V)
					if V then script.Parent.Full.Transparency = V; end
				end
			}
		};
		local Settings = Pages:WaitForChild("Settings");
		for _, v in pairs(Settings.Scripts:GetChildren()) do
			if SetData[v.Name] and SetData[v.Name].Type == "Slider" then
				local UIS = game:GetService("UserInputService");
				local Dragging = false;
				v.Main.Line.Interact.MouseButton1Down:Connect(function() Dragging = true; end);
				UIS.InputChanged:Connect(function()
					if Dragging then
						local MousePos = UIS:GetMouseLocation() + Vector2.new(0, - 36);
						local RelPos = MousePos - v.Main.Line.AbsolutePosition;
						local Percent = math.clamp(RelPos.X / v.Main.Line.AbsoluteSize.X, 0, 1);
						v.Main.Line.Interact.Position = UDim2.new(Percent, 0, v.Main.Line.Interact.Position.Y.Scale, 0);
						v.Main.Line.Fill.Size = UDim2.new(Percent, 0, v.Main.Line.Fill.Size.Y.Scale, 0);
						v.Main.Line.Percentage.Value = math.floor(Percent * 100);
						SetData[v.Name].Callback(Percent);
					end
				end);
				UIS.InputEnded:Connect(function(input)
					if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then Dragging = false; end
				end);
			end
		end

		local function newButton(title, btnText, callback)
			local ButtonFrame = {};
			do
				local G2L = ButtonFrame;
				G2L['d6'] = Instance.new("CanvasGroup", Pages.Settings.Scripts);
				G2L['d6']['Visible'] = true;
				G2L['d6']['BorderSizePixel'] = 0;
				G2L['d6']['BackgroundColor3'] = Color3.fromRGB(55, 58, 68);
				G2L['d6']['Size'] = UDim2.new(1, 0, 0, 48);
				G2L['d6']['BorderColor3'] = Color3.fromRGB(0, 0, 0);
				G2L['d6']['Name'] = title;
				local corner = Instance.new("UICorner", G2L['d6']);
				corner['CornerRadius'] = UDim.new(0, 18);
				local layout = Instance.new("UIListLayout", G2L['d6']);
				layout['HorizontalFlex'] = Enum.UIFlexAlignment.Fill;
				layout['Wraps'] = true;
				layout['VerticalAlignment'] = Enum.VerticalAlignment.Center;
				layout['SortOrder'] = Enum.SortOrder.LayoutOrder;
				local stroke = Instance.new("UIStroke", G2L['d6']);
				stroke['Transparency'] = 0.95;
				stroke['Thickness'] = 2;
				stroke['Color'] = Color3.fromRGB(232, 229, 255);
				local pad = Instance.new("UIPadding", G2L['d6']);
				pad['PaddingTop'] = UDim.new(0, 6);
				pad['PaddingRight'] = UDim.new(0, 12);
				pad['PaddingLeft'] = UDim.new(0, 12);
				pad['PaddingBottom'] = UDim.new(0, 6);
				local label = Instance.new("TextLabel", G2L['d6']);
				label['TextWrapped'] = true;
				label['BackgroundTransparency'] = 1;
				label['Size'] = UDim2.new(1, 0, 1, 0);
				label['TextXAlignment'] = Enum.TextXAlignment.Left;
				label['TextYAlignment'] = Enum.TextYAlignment.Top;
				label['TextColor3'] = Color3.fromRGB(255, 255, 255);
				label['Text'] = title;
				label['TextSize'] = 14;
				label['TextScaled'] = true; 
				label['FontFace'] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				local btnContainer = Instance.new("CanvasGroup", G2L['d6']);
				btnContainer['BackgroundTransparency'] = 1;
				btnContainer['Size'] = UDim2.new(0.25, 0, 0.75, 0); 
				btnContainer['Position'] = UDim2.new(0.75, 0, 0.12, 0);
				local btn = Instance.new("TextButton", btnContainer);
				btn['Size'] = UDim2.new(1, 0, 1, 0);
				btn['BackgroundColor3'] = Color3.fromRGB(218, 50, 50); 
				btn['TextColor3'] = Color3.fromRGB(255, 255, 255);
				btn['Text'] = btnText;
				btn['Font'] = Enum.Font.SourceSansBold;
				btn['TextSize'] = 14;
				local btnCorner = Instance.new("UICorner", btn);
				btnCorner['CornerRadius'] = UDim.new(0, 8);
				btn.MouseButton1Click:Connect(function() callback() end)
			end
		end

		local function newToggle(title, callbacl)
			local Toggles = {};
			local Enable = false;
			do
				local G2L = Toggles;
				G2L['d6'] = Instance.new("CanvasGroup", Pages.Settings.Scripts);
				G2L['d6']['Visible'] = true;
				G2L['d6']['BorderSizePixel'] = 0;
				G2L['d6']['BackgroundColor3'] = Color3.fromRGB(55, 58, 68);
				G2L['d6']['Size'] = UDim2.new(1, 0, 0, 48);
				G2L['d6']['BorderColor3'] = Color3.fromRGB(0, 0, 0);
				G2L['d6']['Name'] = title;
				local corner = Instance.new("UICorner", G2L['d6']);
				corner['CornerRadius'] = UDim.new(0, 18);
				local layout = Instance.new("UIListLayout", G2L['d6']);
				layout['HorizontalFlex'] = Enum.UIFlexAlignment.Fill;
				layout['Wraps'] = true;
				layout['VerticalAlignment'] = Enum.VerticalAlignment.Center;
				layout['SortOrder'] = Enum.SortOrder.LayoutOrder;
				local stroke = Instance.new("UIStroke", G2L['d6']);
				stroke['Transparency'] = 0.95;
				stroke['Thickness'] = 2;
				stroke['Color'] = Color3.fromRGB(232, 229, 255);
				local pad = Instance.new("UIPadding", G2L['d6']);
				pad['PaddingTop'] = UDim.new(0, 6);
				pad['PaddingRight'] = UDim.new(0, 12);
				pad['PaddingLeft'] = UDim.new(0, 12);
				pad['PaddingBottom'] = UDim.new(0, 6);
				local label = Instance.new("TextLabel", G2L['d6']);
				label['TextWrapped'] = true;
				label['Active'] = true;
				label['ZIndex'] = 3;
				label['BorderSizePixel'] = 0;
				label['TextSize'] = 14;
				label['TextXAlignment'] = Enum.TextXAlignment.Left;
				label['TextYAlignment'] = Enum.TextYAlignment.Top;
				label['TextScaled'] = true;
				label['BackgroundColor3'] = Color3.fromRGB(255, 255, 255);
				label['FontFace'] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
				label['TextColor3'] = Color3.fromRGB(255, 255, 255);
				label['BackgroundTransparency'] = 1;
				label['Size'] = UDim2.new(1, 0, 1, 0);
				label['BorderColor3'] = Color3.fromRGB(0, 0, 0);
				label['Text'] = title;
				label['Name'] = [[Title]];
				local toggleMain = Instance.new("CanvasGroup", G2L['d6']);
				toggleMain['Active'] = true;
				toggleMain['BorderSizePixel'] = 0;
				toggleMain['BackgroundColor3'] = Color3.fromRGB(57, 143, 255);
				toggleMain['Selectable'] = true;
				toggleMain['Size'] = UDim2.new(0.09939, 0, 0.75553, 0);
				toggleMain['Position'] = UDim2.new(0.90061, 0, 0.12223, 0);
				toggleMain['BorderColor3'] = Color3.fromRGB(0, 0, 0);
				toggleMain['Name'] = [[Main]];
				toggleMain['BackgroundTransparency'] = 1;
				local toggleCorner = Instance.new("UICorner", toggleMain);
				toggleCorner['CornerRadius'] = UDim.new(1, 0);
				local btn = Instance.new("TextButton", toggleMain);
				btn['BorderSizePixel'] = 0;
				btn['TextSize'] = 14;
				btn['TextColor3'] = Color3.fromRGB(0, 0, 0);
				btn['BackgroundColor3'] = Color3.fromRGB(69, 72, 85);
				btn['FontFace'] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				btn['Size'] = UDim2.new(1, 0, 1, 0);
				btn['BorderColor3'] = Color3.fromRGB(0, 0, 0);
				btn['Text'] = [[]];
				btn['Name'] = [[Button]];
				local btnCorner = Instance.new("UICorner", btn);
				btnCorner['CornerRadius'] = UDim.new(1, 0);
				local btnPad = Instance.new("UIPadding", btn);
				btnPad['PaddingTop'] = UDim.new(0, 3);
				btnPad['PaddingRight'] = UDim.new(0, 3);
				btnPad['PaddingLeft'] = UDim.new(0, 3);
				btnPad['PaddingBottom'] = UDim.new(0, 3);
				local btnLayout = Instance.new("UIListLayout", btn);
				btnLayout['HorizontalAlignment'] = Enum.HorizontalAlignment.Left;
				btnLayout['SortOrder'] = Enum.SortOrder.LayoutOrder;
				local circle = Instance.new("ImageLabel", btn);
				circle['BorderSizePixel'] = 0;
				circle['ScaleType'] = Enum.ScaleType.Fit;
				circle['BackgroundColor3'] = Color3.fromRGB(194, 194, 194);
				circle['ImageColor3'] = Color3.fromRGB(232, 229, 255);
				circle['AnchorPoint'] = Vector2.new(0, 0.5);
				circle['Image'] = [[rbxassetid://5552526748]];
				circle['Size'] = UDim2.new(1, 0, 1, 0);
				circle['ClipsDescendants'] = true;
				circle['BorderColor3'] = Color3.fromRGB(0, 0, 0);
				circle['BackgroundTransparency'] = 1;
				circle['Name'] = [[Point]];
				circle['Position'] = UDim2.new(0.5, 0, 0.5, 0);
				local aspect = Instance.new("UIAspectRatioConstraint", circle);
				local mainAspect = Instance.new("UIAspectRatioConstraint", toggleMain);
				mainAspect['AspectRatio'] = 1.90335;
				
				btn.MouseButton1Click:Connect(function()
					Enable = not Enable;
					callbacl(Enable);
					btnLayout['HorizontalAlignment'] = Enum.HorizontalAlignment[(Enable and "Right") or "Left"];
					btn.BackgroundColor3 = (Enable and Color3.fromRGB(57, 143, 255)) or Color3.fromRGB(69, 72, 85);
				end);
			end
		end
		
		newToggle("Hide UI", function(v)
			InvisTriggerOpen = v;
			if v then createNotification('Chat "/e open" to open UI', "Info", 5); end
		end);

		newToggle("Censored Name In UI", function(v)
			if v then Main.Title.TextLabel.Text = "Hello, User!";
			else Main.Title.TextLabel.Text = "Hello, " .. Players.LocalPlayer.Name .. "!"; end
		end);
		
		newToggle("Anti AFK", function(v)
			local speaker = game:GetService("Players").LocalPlayer
			if v then
				local antiAFKConn = nil
				local function armAntiAFK()
					if antiAFKConn then antiAFKConn:Disconnect() end
					if getconnections then
						for _, conn in pairs(getconnections(speaker.Idled)) do
							pcall(function() conn:Disable() end)
						end
					end
					antiAFKConn = speaker.Idled:Connect(function() end)
				end
				armAntiAFK()
				createNotification("Anti AFK Enabled", "Success", 5)
			end
		end)
		
		newToggle("FPS Boost", function(v)
			if v then
				for _, obj in pairs(game:GetDescendants()) do
					if obj:IsA("BasePart") then obj.CastShadow = false; obj.Material = "Plastic" end
					if obj:IsA("Texture") or obj:IsA("Decal") then obj.Transparency = 1 end
				end
				Lighting.GlobalShadows = false
			end
		end)

	newButton("Change UI Version", "RESET", function()
			if delfile and isfile then
				if isfile("Punk-X-Files/punk-x-env.txt") then
					delfile("Punk-X-Files/punk-x-env.txt")
					createNotification("Reset Success. Re-inject.", "Success", 5)
				else
					createNotification("No preference saved.", "Error", 3)
				end
			else
				createNotification("Not supported.", "Error", 5)
			end
		end)
	end;

	InitTabs.TabsData = function()
		-- 🟢 1. Ensure folders exist (PROTECTED)
		pcall(function()
			if not CLONED_Detectedly.isfolder("Punk-X-Files") then
				CLONED_Detectedly.makedir("Punk-X-Files")
			end
		end)
		pcall(function()
			if not CLONED_Detectedly.isfolder("Punk-X-Files/scripts") then
				CLONED_Detectedly.makedir("Punk-X-Files/scripts")
			end
		end)

		-- 🟢 2. List files from new path (PROTECTED)
		local scripts = {}
		pcall(function()
			scripts = CLONED_Detectedly.listfiles("Punk-X-Files/scripts") or {};
		end)
		
		for index, Nextpath in ipairs(scripts) do
			-- Extract filename safely
			local filename = Nextpath:match("([^/\\]+)$");
			if not filename then filename = Nextpath end

			if (filename == "recently.data") then continue; end
			
			local success, Loadedscript = pcall(function() 
				return HttpService:JSONDecode(CLONED_Detectedly.readfile("Punk-X-Files/scripts/" .. filename)); 
			end)
			
			if success and Loadedscript and Loadedscript.Name then
				-- 🟢 3. Clean syntax tags if they exist (Prevents corruption)
				if Loadedscript.Content and string.find(Loadedscript.Content, "<font") then
					Loadedscript.Content = StripSyntax(Loadedscript.Content)
				end

				Data.Editor.Tabs[Loadedscript.Name] = {
					Loadedscript.Content,
					Loadedscript.Order
				};
			end
		end
		
		if (# scripts == 0) then
			-- PROTECTED: Create default tab
			pcall(function()
				UIEvents.EditorTabs.createTab("Script", "");
			end)
		end
		-- PROTECTED: Update UI
		pcall(function()
			UIEvents.EditorTabs.updateUI();
		end)
	end;

	InitTabs.Saved = function()
		-- 🟢 1. Create folders if they don't exist (PROTECTED)
		local folders = {
			"Punk-X-Files",
			"Punk-X-Files/saves",
			"Punk-X-Files/autoexec",
			"Punk-X-Files/rconsole",
			"Punk-X-Files/scripts"
		}

		for _, folder in ipairs(folders) do
			pcall(function()
				if not CLONED_Detectedly.isfolder(folder) then
					CLONED_Detectedly.makedir(folder)
				end
			end)
		end
		
		-- 🟢 2. List files from the correct folder (PROTECTED)
		local saves = {}
		pcall(function()
			saves = CLONED_Detectedly.listfiles("Punk-X-Files/saves") or {};
		end)
		
		for index, Nextpath in ipairs(saves) do
			-- Extract filename
			local filename = Nextpath:match("([^/\\]+)$");
			
			if filename and filename:match("%.lua$") then
				
				local success, Loadedscript = pcall(function()
					-- 🟢 3. Define path and read ONCE
					local cleanPath = "Punk-X-Files/saves/" .. filename
					local content = CLONED_Detectedly.readfile(cleanPath)
					return HttpService:JSONDecode(content)
				end)

				-- 🟢 4. Clean Syntax Highlighting tags if present
				if success and Loadedscript and Loadedscript.Name and Loadedscript.Content then
					if string.find(Loadedscript.Content, "<font") then
						Loadedscript.Content = StripSyntax(Loadedscript.Content)
					end
					Data.Saves.Scripts[Loadedscript.Name] = Loadedscript.Content;
				end
			end
		end
		
		UIEvents.Saved.UpdateUI();
		
		-- Search bar logic
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
		local Method = "Activated";
		
Panel.Execute[Method]:Connect(function()
    local success, result = pcall(function()
        local codeFunc = UIEvents.Executor.RunCode(EditorFrame.Input.Text)
        if codeFunc and type(codeFunc) == "function" then
            codeFunc()
        else
            warn("RunCode did not return a function")
        end
    end)
    
    if not success then
        warn("Execute error:", result)
        createNotification("Execution Error!", "Error", 5)
    end
end)
		
		Panel.Paste[Method]:Connect(function()
			EditorFrame.Input.Text = (getclipboard and getclipboard()) or "";
		end);
		
		Panel.ExecuteClipboard[Method]:Connect(function()
			UIEvents.Executor.RunCode((getclipboard and getclipboard()) or "")();
		end);
		
		Panel.Delete[Method]:Connect(function()
			EditorFrame.Input.Text = "";
		end);
		
		Panel.Save[Method]:Connect(function()
			UIEvents.EditorTabs.saveTab(nil, EditorFrame.Input.Text, true); 
		end);
		
		Panel.Rename[Method]:Connect(function()
			script.Parent.Popups.Visible = true;
			script.Parent.Popups.Main.Input.Text = Data.Editor.CurrentTab or ""
		end);
		
		-- ✅ PROTECTED: Highlighter initialization
		local highlighterSuccess = pcall(function()
			if not highlighter then
				highlighter = load_highlighter();
			end
		end)
		
		-- ✅ PROTECTED: Text change handler
		pcall(function()
			EditorFrame.Input:GetPropertyChangedSignal("Text"):Connect(function()
				pcall(function()
					update_lines(EditorFrame.Input, EditorFrame.Lines);
				end)
				if not Data.Editor.EditingSavedFile then
					pcall(function()
						UIEvents.EditorTabs.saveTab(nil, EditorFrame.Input.Text, false);
					end)
				end
			end);
		end)
		
		-- ✅ PROTECTED: Initial line update
		pcall(function()
			update_lines(EditorFrame.Input, EditorFrame.Lines);
		end)
		
		-- ✅ PROTECTED: Initial highlight
		if highlighterSuccess and highlighter then
			pcall(function()
				highlighter.highlight({ textObject = EditorFrame.Input });
			end)
		end
		
		local pos = EditorFrame.Position;
		local size = EditorFrame.Size;
		EditorFrame.Input.Focused:Connect(function()
			EditorFrame.Size = UDim2.fromScale(EditorFrame.Size.X.Scale / 2, EditorFrame.Size.Y.Scale / 2);
			EditorFrame.Position = UDim2.fromScale(EditorFrame.Position.X.Scale, 0.225);
		end);
		
		EditorFrame.Input.FocusLost:Connect(function()
			EditorFrame.Position = pos;
			EditorFrame.Size = size;
		end);
		
		Editor.Tabs.Create.Activated:Connect(function()
			UIEvents.EditorTabs.createTab("Script", "");
		end);
		
		local Buttons = script.Parent.Popups.Main.Button
		Buttons["Confirm"][Method]:Connect(function()
			local newName = script.Parent.Popups.Main.Input.Text;
			local isEmpty = # (string.gsub(newName, "[%s]", "")) <= 0;
			if (isEmpty or (newName == Data.Editor.CurrentTab)) then return; end
			
			UIEvents.EditorTabs.RenameFile(newName, Data.Editor.CurrentTab);
			script.Parent.Popups.Visible = false;
		end)
		
		Buttons["Cancel"][Method]:Connect(function()
			script.Parent.Popups.Visible = false;
		end)
	end;

	InitTabs.Search = function()
		local Search = Pages:WaitForChild("Search");
		local TagsValid = {
			Key = function(sData) return sData.key; end,
			Universal = function(sData) return sData.isUniversal; end,
			Patched = function(sData) return sData.isPatched; end,
			Paid = function(sData) return sData.scriptType == "paid"; end
		};
		local verifyicon = utf8.char(57344);
		local Trending = game:HttpGet("https://scriptblox.com/api/script/fetch");
		
		local function Update()
			for _, v in pairs(Search.Scripts:GetChildren()) do
				if v:IsA("CanvasGroup") then v:Destroy(); end
			end
			local text = Search.TextBox.Text;
			local isEmpty = # (string.gsub(text, "[%s]", "")) <= 0;
			local search = HttpService:UrlEncode(text);
			local scriptJson;
			
			if isEmpty then
				scriptJson = Trending;
			else
				scriptJson = game:HttpGet("https://scriptblox.com/api/script/search?strict=true&q=" .. search .. "&max=20");
			end
			
			local success, scripts = pcall(function()
				return game:GetService("HttpService"):JSONDecode(scriptJson);
			end);
			if (not success or not scripts.result or (# scripts.result.scripts <= 0)) then
				Search.TextBox.Text = "No results found.";
				return;
			end
			for i, scriptData in pairs(scripts.result.scripts) do
				task.spawn(function()
					local new = script.SearchTemplate:Clone();
					new.Parent = Search.Scripts;
					new.Name = scriptData.title;
					new.Title.Text = scriptData.title .. ((scriptData.verified and verifyicon) or "");
					new.Misc.Thumbnail.Image = scriptData.imageUrl or "rbxassetid://109798560145884";
					for _, tag in pairs(new.Tags:GetChildren()) do
						if tag:IsA("TextLabel") then
							tag.Visible = (TagsValid[tag.Name] and TagsValid[tag.Name](scriptData)) or false;
						end
					end
					new.Misc.Panel.Execute.MouseButton1Click:Connect(function()
						UIEvents.Executor.RunCode(scriptData.script)();
					end);
					new.Misc.Panel.Save.MouseButton1Click:Connect(function()
						UIEvents.Saved.SaveFile(scriptData.title, scriptData.script);
					end);
				end);
			end
		end
		Search.TextBox.FocusLost:Connect(function() Update(); end);
	end;

	InitTabs.Nav = function()
		local isInstantNext = false;
		local function findButton(Name)
			for _, frame in ipairs(Nav:GetChildren()) do
				if not frame:IsA("Frame") then continue; end
				for _, button in ipairs(frame:GetChildren()) do
					if not button:IsA("TextButton") then continue; end
					if (button.Name == Name) then return button; end
				end
			end
			return nil;
		end
		
		local function goTo(Name, f)
			if Data.Editor.EditingSavedFile and Name ~= "Editor" then
				local editingName = Data.Editor.EditingSavedFile
				createNotification("Editing Cancelled", "Warn", 3)
				-- ✅ PROTECTED: File delete
				pcall(function()
					CLONED_Detectedly.delfile("Punk-X-Files/scripts/" .. editingName .. ".lua");
				end)
				Data.Editor.Tabs[editingName] = nil;
				Data.Editor.EditingSavedFile = nil
				pcall(function()
					UIEvents.EditorTabs.updateUI();
				end)
				if Name ~= "Saved" then Name = "Saved" end
			end
			
			if Pages:FindFirstChild(Name) then
				-- ✅ PROTECTED: Page jump
				pcall(function()
					Pages.UIPageLayout:JumpTo(Pages[Name]);
				end)
			end
			local Button = findButton(Name);
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
			
			-- ✅ PROTECTED: Tween animation
			pcall(function()
				local TweenService = game:GetService("TweenService")
				TweenService:Create(EnableFrame, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					Position = TargetPos,
					Size = TargetSize,
					BackgroundTransparency = 0
				}):Play();
			end)
		end
		
		for _, frame in ipairs(Nav:GetChildren()) do
			if frame:IsA("Frame") then
				for _, button in ipairs(frame:GetChildren()) do
					if button:IsA("TextButton") then
						button.MouseButton1Click:Connect(function()
							-- ✅ PROTECTED: Tab navigation
							pcall(function()
								goTo(button.Name);
							end)
						end);
					end
				end
			end
		end
		task.wait(1);
		goTo("Home", true);
	end;
InitTabs.Autoexecute = function()
		-- ✅ DELAY: Wait 3 seconds before running autoexec
		task.wait(3)
		
		-- Decompiler stuff (Keep if needed, or remove if you just want AutoExec)
		local request = request or http_request or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request);
		
		-- Custom AutoExecute Logic for Punk-X-Files
		if CLONED_Detectedly.isfolder("Punk-X-Files/autoexec") then
			local files = CLONED_Detectedly.listfiles("Punk-X-Files/autoexec")
			if files then
				for _, path in pairs(files) do
					if path:match("%.lua$") then
						task.spawn(function()
							-- ✅ PROTECTED: Use safe execution
							pcall(function()
								local content = CLONED_Detectedly.readfile(path)
								if content and #content > 0 then
									-- Use protected RunCode instead of unsafe loadstring
									UIEvents.Executor.RunCode(content)()
								end
							end)
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
    
    -- (Folders are already created at the top of the script now)
    
    -- Initialize safe console print
    UIEvents.Executor.Init()
    
    for _, f in pairs(InitTabs) do
        task.spawn(f);
    end
    
    createNotification("Punk X: Files organized! Check Punk-X-Files folder.", "Info", 5)
    
    Loaded = true;
end
	--print("Migration Completed");
	
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
	local function dragify(Frame)
		local dragToggle = nil;
		local dragSpeed = nil;
		local dragInput = nil;
		local dragStart = nil;
		local dragPos = nil;
		local startPos = nil;
		local function updateInput(input)
			local Delta = input.Position - dragStart;
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y);
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.125), {
				Position = Position
			}):Play();
		end
		Frame.InputBegan:Connect(function(input)
			if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
				dragToggle = true;
				dragStart = input.Position;
				startPos = Frame.Position;
				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragToggle = false;
					end
				end);
			end
		end);
		Frame.InputChanged:Connect(function(input)
			if ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch)) then
				dragInput = input;
			end
		end);
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if ((input == dragInput) and dragToggle) then
				updateInput(input);
			end
		end);
	end
	dragify(script.Parent.Open);
	
	-- [PART 1: UI SETUP AFTER LOAD]
	task.spawn(function()
		local command = "/e open";
		repeat task.wait(0.1) until Players.LocalPlayer
		
		Players.LocalPlayer.Chatted:Connect(function(m)
			if ((m:sub(1, #command):lower() == command) and not script.Parent.Enabled and InvisTriggerOpen) then
				script.Parent.Enabled = true;
				if Main:FindFirstChild("EnableFrame") then
					Main.EnableFrame.Visible = true;
				end
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
				Main.Title.TextLabel.Text = "Hello, " .. Players.LocalPlayer.Name .. "!";
			end
		end
	end);

	-- [PART 2: KEY VALIDATION LOGIC]
	-- [PART 2 SEASON 2: FUCK YOUR KEY]
	do
	    loadUI()
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
