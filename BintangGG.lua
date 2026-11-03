--[[
    BintangX6LoccHub
    Veil + Pistol + Flash + SkillCheck + Parry + ESP + Camera + Config
]]

-- Logo embedded (auto-write + getcustomasset)
local LOGO_B64 = "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"
local LOGO_IMAGE = ""
pcall(function()
    if type(writefile) ~= "function" or type(getcustomasset) ~= "function" then return end
    local raw
    if crypt and crypt.base64decode then
        raw = crypt.base64decode(LOGO_B64)
    elseif base64 and base64.decode then
        raw = base64.decode(LOGO_B64)
    elseif type(base64_decode) == "function" then
        raw = base64_decode(LOGO_B64)
    else
        -- minimal pure lua base64 decode
        local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        LOGO_B64 = LOGO_B64:gsub('[^'..b..'=]', '')
        raw = (LOGO_B64:gsub('.', function(x)
            if x == '=' then return '' end
            local r, f = '', (b:find(x) - 1)
            for i = 6, 1, -1 do r = r .. (f % 2^i - f % 2^(i-1) > 0 and '1' or '0') end
            return r
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if #x ~= 8 then return '' end
            local c = 0
            for i = 1, 8 do c = c + (x:sub(i,i) == '1' and 2^(8-i) or 0) end
            return string.char(c)
        end))
    end
    if raw then
        writefile("BintangLogo.png", raw)
        LOGO_IMAGE = getcustomasset("BintangLogo.png")
    end
end)


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local Lighting = game:GetService("Lighting")
local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")

local LP = Players.LocalPlayer
local Cam = workspace.CurrentCamera

local STATE = {
    -- Veil
    Veil_Enabled = true, Veil_Predict = true, Veil_Speed = 165, Veil_Gravity = 103,
    Veil_Lead = 1.4, Veil_Tracker = true, Veil_ShowFOV = true, Veil_FOVRadius = 150,
    Veil_AuraSpeed = 165, Veil_AuraGrav = 96, Veil_look = nil, Veil_target = nil,
    -- Pistol
    Pistol_Enabled = false, Pistol_Predict = true, Pistol_BulletSpeed = 200,
    Pistol_TargetMode = "Killer", Pistol_ShowLaser = true,
    Pistol_LookVector = nil, Pistol_TargetPos = nil, Pistol_Muzzle = nil, PistolLaser = nil,
    -- Flash Silent
    Flash_Enabled = false, Flash_YOffset = 1.5,
    -- Survivor
    AutoSkill = "Disabled", AutoParry = false, ParryDistance = 8, ParryAggressive = false, ParryLast = 0,
    ParryShowCircle = false,
    ActiveAttackers = {},
    KillerAttackAnims = {
        ["rbxassetid://78432063483146"] = "attack", ["rbxassetid://121216847022485"] = "attack",
        ["rbxassetid://74968262036854"] = "attack", ["rbxassetid://132817836308238"] = "attack",
        ["rbxassetid://82666958311998"] = "attack", ["rbxassetid://111920872708571"] = "attack",
        ["rbxassetid://106871536134254"] = "attack", ["rbxassetid://109402730355822"] = "attack",
        ["rbxassetid://130593238885843"] = "attack", ["rbxassetid://138720291317243"] = "attack",
        ["rbxassetid://139369275981139"] = "attack", ["rbxassetid://133963973694098"] = "attack",
        ["rbxassetid://78935059863801"] = "attack", ["rbxassetid://118907603246885"] = "lungehold",
        ["rbxassetid://135002183282873"] = "lungehold", ["rbxassetid://113255068724446"] = "lungehold",
        ["rbxassetid://129784271201071"] = "lungehold", ["rbxassetid://105374834496520"] = "lungehold",
        ["rbxassetid://117070354890871"] = "lungehold", ["rbxassetid://115244153053858"] = "lungehold",
        ["rbxassetid://110355011987939"] = "lungehold", ["rbxassetid://117042998468241"] = "lungehold",
        ["rbxassetid://122812055447896"] = "lungehold"
    },
    -- Camera
    Cam_FOVEnabled = false, Cam_FOV = 70, Cam_DBD = false, Cam_DBDSmooth = 0.2,
    Cam_UnlockZoom = false, Cam_MaxZoom = 50, lastCamCFrame = Cam and Cam.CFrame or CFrame.new(),
    -- Lighting / Visual
    Fullbright = false, FullbrightValue = 180, NoShadow = false, CleanSky = false,
    -- ESP
    ESP = {
        Enabled = false, Chams = true, Box = true, Skeleton = false,
        Names = true, Distance = true, Health = true, Survivor = true, Killer = false,
        FillTrans = 0.45, OutlineTrans = 0.2, TextSize = 13,
        Colors = { Survivor = Color3.fromRGB(0, 255, 100), Killer = Color3.fromRGB(255, 60, 60) }
    },
    WorldESP = {
        Enabled = false, MaxDistance = 180,
        Generators = true, Hooks = true, Pallets = true, Windows = true,
        Gates = false, Pumpkins = true, Traps = true, ShowName = true, ShowDistance = true,
        Colors = {
            Generators = Color3.fromRGB(0, 170, 255), Hooks = Color3.fromRGB(255, 50, 50),
            Pallets = Color3.fromRGB(255, 170, 0), Windows = Color3.fromRGB(220, 220, 255),
            Gates = Color3.fromRGB(255, 255, 0), Pumpkins = Color3.fromRGB(255, 140, 0),
            Traps = Color3.fromRGB(200, 0, 255)
        }
    },
    ESPInstances = {}, WorldESPInstances = {}, ValidWorldObjects = {},
    -- Config
    ConfigName = "Default",
    -- UI
    gui = nil, mainFrame = nil, currentTab = "Killer",
    tabFrames = {}, sideButtons = {},
    dragging = false, dragStart = nil, startPos = nil,
    oldNamecall = nil, conn = nil,
    -- lighting cache
    OrigLighting = { Saved = false },
    VFXCache = {}, GUICache = {},
    OrigFog = { Saved = false }
}

-- Drawing
local FovCircle = Drawing.new("Circle")
FovCircle.Color = Color3.fromRGB(255, 60, 60)
FovCircle.Thickness = 1.5
FovCircle.Filled = false
FovCircle.Transparency = 0.5
FovCircle.Visible = false

local TrackerLine = Drawing.new("Line")
TrackerLine.Color = Color3.fromRGB(255, 0, 0)
TrackerLine.Thickness = 2
TrackerLine.Transparency = 1
TrackerLine.Visible = false

local TrackerCircle = Drawing.new("Circle")
TrackerCircle.Color = Color3.fromRGB(255, 0, 0)
TrackerCircle.Thickness = 1.5
TrackerCircle.Filled = false
TrackerCircle.Transparency = 1
TrackerCircle.Visible = false

-- ============================================================
-- SILENT VEIL
-- ============================================================
local function solvePitch(p, d, dy)
    d = math.max(d, 0.1)
    local s2 = p.v0 * p.v0
    local root = s2 * s2 - p.g * (p.g * d * d + 2 * dy * s2)
    if root < 0 then root = 0 end
    local tanTheta = (s2 - math.sqrt(root)) / (p.g * d)
    local theta = math.atan(tanTheta)
    return theta, d / (p.v0 * math.cos(theta))
end

local function UpdateSilentVeil()
    if STATE.Veil_ShowFOV and STATE.Veil_Enabled then
        FovCircle.Position = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
        FovCircle.Radius = STATE.Veil_FOVRadius
        FovCircle.Visible = true
    else
        FovCircle.Visible = false
    end
    if not STATE.Veil_Enabled then
        STATE.Veil_look = nil
        TrackerLine.Visible = false
        TrackerCircle.Visible = false
        return
    end
    local sel = LP:GetAttribute("SelectedKiller")
    if sel and sel ~= "Veil" then
        STATE.Veil_look = nil
        TrackerLine.Visible = false
        TrackerCircle.Visible = false
        return
    end
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local nearest, bestDist = nil, STATE.Veil_FOVRadius
    local center = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Team and not string.find(string.lower(p.Team.Name), "iller") and p.Character then
            if p.Character:GetAttribute("Knocked") ~= true then
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                local tp = p.Character:FindFirstChild("UpperTorso") or p.Character:FindFirstChild("HumanoidRootPart")
                if hum and hum.Health > 0 and tp then
                    local sp, on = Cam:WorldToViewportPoint(tp.Position)
                    if on and sp.Z > 0 then
                        local sd = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                        if sd < bestDist then bestDist = sd; nearest = p end
                    end
                end
            end
        end
    end
    STATE.Veil_target = nearest
    if nearest and nearest.Character then
        local tpPart = nearest.Character:FindFirstChild("UpperTorso") or nearest.Character:FindFirstChild("HumanoidRootPart")
        if tpPart then
            local tp = tpPart.Position
            local hand = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightHand")
            local origin = (hand and hand:IsA("BasePart")) and hand.Position or hrp.Position
            local dir = tp - origin
            local dist = dir.Magnitude
            if dist > 0.1 and dist <= 1000 then
                local isAura = char:GetAttribute("special") == true
                local v0 = isAura and STATE.Veil_AuraSpeed or STATE.Veil_Speed
                local g = isAura and STATE.Veil_AuraGrav or STATE.Veil_Gravity
                local aimPoint = tp
                if STATE.Veil_Predict then
                    local vel = tpPart.AssemblyLinearVelocity or Vector3.zero
                    local flatVel = Vector3.new(vel.X, 0, vel.Z)
                    if flatVel.Magnitude > 0.5 then
                        local h0 = Vector3.new(dir.X, 0, dir.Z)
                        local _, tF = solvePitch({v0 = v0, g = g}, h0.Magnitude, dir.Y)
                        local ping = math.clamp(LP:GetNetworkPing(), 0, 0.35)
                        aimPoint = tp + (flatVel * (tF + 0.10 + ping + 0.04) * STATE.Veil_Lead)
                    end
                end
                local adir = aimPoint - origin
                local ah = Vector3.new(adir.X, 0, adir.Z)
                local pitch = solvePitch({v0 = v0, g = g}, ah.Magnitude, adir.Y)
                STATE.Veil_look = ah.Unit * math.cos(pitch) + Vector3.new(0, math.sin(pitch), 0)
                if STATE.Veil_Tracker then
                    local sp, on = Cam:WorldToViewportPoint(tpPart.Position)
                    if on and sp.Z > 0 and (Vector2.new(sp.X, sp.Y) - center).Magnitude <= STATE.Veil_FOVRadius then
                        TrackerLine.From = Vector2.new(center.X, Cam.ViewportSize.Y)
                        TrackerLine.To = Vector2.new(sp.X, sp.Y)
                        TrackerLine.Visible = true
                        TrackerCircle.Position = Vector2.new(sp.X, sp.Y)
                        TrackerCircle.Radius = math.clamp(1000 / dist, 10, 40)
                        TrackerCircle.Visible = true
                    else
                        TrackerLine.Visible = false; TrackerCircle.Visible = false
                    end
                else
                    TrackerLine.Visible = false; TrackerCircle.Visible = false
                end
            end
        end
    else
        STATE.Veil_look = nil
        TrackerLine.Visible = false; TrackerCircle.Visible = false
    end
end

-- ============================================================
-- SILENT PISTOL (ToF)
-- ============================================================
local function GetMuzzlePos()
    local myChar = LP.Character
    if not myChar then return nil end
    local tool = myChar:FindFirstChild("Twist of Fate")
    if not tool then return nil end
    local muzzle = tool:FindFirstChild("Muzzle", true) or tool:FindFirstChild("gun", true) or tool:FindFirstChild("Handle")
    if muzzle and muzzle:IsA("BasePart") then return muzzle.Position end
    local rightArm = myChar:FindFirstChild("Right Arm") or myChar:FindFirstChild("RightHand")
    return rightArm and rightArm.Position or nil
end

local function GetTargetPartPos(char)
    local part = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso")
    return part and part.Position or nil
end

local function UpdateSilentPistol()
    local isEquipped = LP:GetAttribute("EquippedItem") == "Twist of Fate"
    local myChar = LP.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    if not STATE.Pistol_Enabled or not myRoot or not isEquipped then
        STATE.Pistol_LookVector = nil; STATE.Pistol_TargetPos = nil
        if STATE.PistolLaser then STATE.PistolLaser.Transparency = 1 end
        return
    end
    local bestDist3D, bestTarget = math.huge, nil
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr == LP or not plr.Team then continue end
        local teamName = string.lower(plr.Team.Name)
        local ok = (STATE.Pistol_TargetMode == "Killer" and string.find(teamName, "iller"))
            or (STATE.Pistol_TargetMode == "Survivor" and string.find(teamName, "survivor"))
        if ok and plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            local pos = GetTargetPartPos(plr.Character)
            if hum and hum.Health > 0 and pos and not plr.Character:GetAttribute("Knocked") then
                local d = (pos - myRoot.Position).Magnitude
                if d < bestDist3D then bestDist3D = d; bestTarget = plr end
            end
        end
    end
    if bestTarget and bestTarget.Character then
        local bestPos = GetTargetPartPos(bestTarget.Character)
        if bestPos then
            local muzzlePos = GetMuzzlePos() or Cam.CFrame.Position
            local aimPoint = bestPos
            if STATE.Pistol_Predict then
                local hrp = bestTarget.Character:FindFirstChild("HumanoidRootPart")
                local vel = hrp and hrp.AssemblyLinearVelocity or Vector3.zero
                local flat = Vector3.new(vel.X, 0, vel.Z)
                local dist = (bestPos - muzzlePos).Magnitude
                local t = dist / STATE.Pistol_BulletSpeed
                local ping = math.clamp(LP:GetNetworkPing(), 0, 0.2)
                aimPoint = bestPos + (flat * (t + ping))
            end
            STATE.Pistol_TargetPos = aimPoint
            STATE.Pistol_LookVector = (aimPoint - muzzlePos).Unit
            STATE.Pistol_Muzzle = muzzlePos
        end
    else
        STATE.Pistol_LookVector = nil; STATE.Pistol_TargetPos = nil
    end
    if STATE.Pistol_ShowLaser and STATE.Pistol_LookVector and STATE.Pistol_TargetPos and STATE.Pistol_Muzzle then
        if not STATE.PistolLaser then
            local p = Instance.new("Part")
            p.Name = "ToFLaser"; p.Anchored = true; p.CanCollide = false; p.CanTouch = false
            p.CastShadow = false; p.Material = Enum.Material.Neon
            p.Color = Color3.fromRGB(0, 255, 100); p.Parent = workspace
            STATE.PistolLaser = p
        end
        local m, t = STATE.Pistol_Muzzle, STATE.Pistol_TargetPos
        local d = (m - t).Magnitude
        STATE.PistolLaser.Size = Vector3.new(0.08, 0.08, d)
        STATE.PistolLaser.CFrame = CFrame.lookAt(m, t) * CFrame.new(0, 0, -d / 2)
        STATE.PistolLaser.Transparency = 0.3
    elseif STATE.PistolLaser then
        STATE.PistolLaser.Transparency = 1
    end
end

-- ============================================================
-- SILENT FLASH (from GanKunZ)
-- ============================================================
local function UpdateSilentFlash()
    if not STATE.Flash_Enabled then return end
    local isEquipped = LP:GetAttribute("EquippedItem") == "Flashlight"
    if not isEquipped then return end
    local myChar = LP.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    if not myRoot then return end
    local bestTarget, closest = nil, math.huge
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Team and string.find(string.lower(plr.Team.Name), "iller") and plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
            if hum and hum.Health > 0 and hrp and not plr.Character:GetAttribute("Knocked") then
                local d = (hrp.Position - myRoot.Position).Magnitude
                if d < closest then closest = d; bestTarget = hrp end
            end
        end
    end
    if bestTarget then
        local targetPos = bestTarget.Position + Vector3.new(0, STATE.Flash_YOffset, 0)
        Cam.CFrame = Cam.CFrame:Lerp(CFrame.lookAt(Cam.CFrame.Position, targetPos), 0.5)
        local goalHrp = CFrame.lookAt(myRoot.Position, Vector3.new(targetPos.X, myRoot.Position.Y, targetPos.Z))
        myRoot.CFrame = myRoot.CFrame:Lerp(goalHrp, 0.5)
    end
end

-- ============================================================
-- CAMERA (DBD style from GanKunZ)
-- ============================================================
local function UpdateCamera()
    local cam = workspace.CurrentCamera
    if not cam then return end
    if STATE.Cam_FOVEnabled then
        if cam.FieldOfView ~= STATE.Cam_FOV then cam.FieldOfView = STATE.Cam_FOV end
    end
    if STATE.Cam_UnlockZoom then
        LP.CameraMinZoomDistance = 0.5
        LP.CameraMaxZoomDistance = STATE.Cam_MaxZoom
    end
    if STATE.Cam_DBD then
        local target = cam.CFrame
        local smoothPos = STATE.lastCamCFrame.Position:Lerp(target.Position, STATE.Cam_DBDSmooth)
        cam.CFrame = CFrame.new(smoothPos) * target.Rotation
        STATE.lastCamCFrame = cam.CFrame
    else
        STATE.lastCamCFrame = cam.CFrame
    end
end

-- ============================================================
-- LIGHTING (Fullbright / NoShadow / CleanSky)
-- ============================================================
local function ProcessEffect(v)
    if v:IsA("PostEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect")
        or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("DepthOfFieldEffect") then
        if STATE.VFXCache[v] == nil then STATE.VFXCache[v] = {Type = "Effect", Enabled = v.Enabled} end
        pcall(function() v.Enabled = false end)
    elseif v:IsA("Atmosphere") or v:IsA("Clouds") or v:IsA("Sky") then
        if STATE.VFXCache[v] == nil then STATE.VFXCache[v] = {Type = "Atmosphere", Parent = v.Parent} end
        pcall(function() v.Parent = nil end)
    end
end

local function ApplyFullbright()
    if STATE.Fullbright then
        if not STATE.OrigLighting.Saved then
            STATE.OrigLighting.Ambient = Lighting.Ambient
            STATE.OrigLighting.OutdoorAmbient = Lighting.OutdoorAmbient
            STATE.OrigLighting.Brightness = Lighting.Brightness
            STATE.OrigLighting.GlobalShadows = Lighting.GlobalShadows
            STATE.OrigLighting.ClockTime = Lighting.ClockTime
            STATE.OrigLighting.Saved = true
        end
        local val = STATE.FullbrightValue
        local col = Color3.fromRGB(val, val, val)
        Lighting.Ambient = col
        Lighting.OutdoorAmbient = col
        Lighting.Brightness = 2
        if STATE.NoShadow then Lighting.GlobalShadows = false end
    else
        if STATE.OrigLighting.Saved then
            Lighting.Ambient = STATE.OrigLighting.Ambient
            Lighting.OutdoorAmbient = STATE.OrigLighting.OutdoorAmbient
            Lighting.Brightness = STATE.OrigLighting.Brightness
            Lighting.GlobalShadows = STATE.OrigLighting.GlobalShadows
            STATE.OrigLighting.Saved = false
        end
    end
end

local function ApplyNoShadow()
    if STATE.NoShadow then
        Lighting.GlobalShadows = false
        pcall(function() LP:SetAttribute("noshadows", true) end)
    else
        if STATE.OrigLighting.Saved then
            Lighting.GlobalShadows = STATE.OrigLighting.GlobalShadows
        else
            Lighting.GlobalShadows = true
        end
        pcall(function() LP:SetAttribute("noshadows", false) end)
    end
end

local function ApplyCleanSky()
    if STATE.CleanSky then
        if not STATE.OrigFog.Saved then
            STATE.OrigFog.FogStart = Lighting.FogStart
            STATE.OrigFog.FogEnd = Lighting.FogEnd
            STATE.OrigFog.Saved = true
        end
        Lighting.FogStart = 100000
        Lighting.FogEnd = 100000
        for _, v in ipairs(Lighting:GetChildren()) do ProcessEffect(v) end
        if workspace.CurrentCamera then
            for _, v in ipairs(workspace.CurrentCamera:GetChildren()) do ProcessEffect(v) end
        end
    else
        if STATE.OrigFog.Saved then
            Lighting.FogStart = STATE.OrigFog.FogStart
            Lighting.FogEnd = STATE.OrigFog.FogEnd
            STATE.OrigFog.Saved = false
        end
        for obj, data in pairs(STATE.VFXCache) do
            if obj then
                pcall(function()
                    if data.Type == "Atmosphere" then obj.Parent = data.Parent
                    else obj.Enabled = data.Enabled end
                end)
            end
        end
        table.clear(STATE.VFXCache)
    end
end

-- ============================================================
-- HOOK
-- ============================================================
local function setupHook()
    if type(hookmetamethod) ~= "function" then return end
    local old
    old = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        if not checkcaller() and method == "FireServer" and typeof(self) == "Instance" then
            local sName = self.Name
            if sName == "Spearthrow" then
                if STATE.Veil_Enabled and STATE.Veil_look then
                    if typeof(args[1]) == "table" and args[1].Direction then
                        args[1].Direction = STATE.Veil_look
                    elseif typeof(args[1]) == "Vector3" then
                        args[1] = STATE.Veil_look
                    end
                end
                return old(self, unpack(args))
            end
            if STATE.Pistol_Enabled and typeof(STATE.Pistol_LookVector) == "Vector3" and typeof(STATE.Pistol_TargetPos) == "Vector3" then
                if self.Parent and self.Parent.Name == "Twist of Fate" then
                    if sName == "Fire" then
                        for i = 1, #args do
                            if typeof(args[i]) == "Vector3" then args[i] = STATE.Pistol_LookVector end
                        end
                        return old(self, unpack(args))
                    elseif sName == "VisualizeBullet" then
                        for i = 1, #args do
                            if typeof(args[i]) == "Vector3" then
                                if args[i].Magnitude > 10 then args[i] = STATE.Pistol_TargetPos
                                else args[i] = STATE.Pistol_LookVector end
                            elseif typeof(args[i]) == "CFrame" then
                                local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
                                if myRoot then args[i] = CFrame.lookAt(myRoot.Position, STATE.Pistol_TargetPos) end
                            end
                        end
                        return old(self, unpack(args))
                    end
                end
            end
        end
        return old(self, ...)
    end)
    STATE.oldNamecall = old
end

-- ============================================================
-- SKILL / PARRY
-- ============================================================
local function DoSkillCheck()
    local pGui = LP:FindFirstChild("PlayerGui")
    local mobBtn = pGui and pGui:FindFirstChild("Survivor-mob")
        and pGui["Survivor-mob"]:FindFirstChild("Controls")
        and pGui["Survivor-mob"].Controls:FindFirstChild("action")
    if mobBtn and type(firesignal) == "function" then
        firesignal(mobBtn.MouseButton1Down)
        task.delay(0.05, function()
            if mobBtn and mobBtn.Parent then firesignal(mobBtn.MouseButton1Up) end
        end)
    else
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        task.wait(0.01)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
    end
end

local function UpdateAutoSkill()
    if STATE.AutoSkill == "Disabled" then return end
    local pGui = LP:FindFirstChild("PlayerGui")
    local prompt = pGui and (pGui:FindFirstChild("SkillCheckPromptGui") or pGui:FindFirstChild("SkillCheckPromptGui-con"))
    if not prompt then return end
    local check = prompt:FindFirstChild("Check")
    if not (check and check.Visible) then return end
    local line, goal = check:FindFirstChild("Line"), check:FindFirstChild("Goal")
    if not (line and goal) then return end
    if STATE.AutoSkill == "Instant" then
        line.Rotation = goal.Rotation + 109
        DoSkillCheck()
        return
    end
    local relRot = (line.Rotation - goal.Rotation) % 360
    local minR, maxR = 104, 114
    if STATE.AutoSkill == "Normal" then minR, maxR = 114, 155 end
    if relRot >= minR and relRot <= maxR then DoSkillCheck() end
end

local function ExecuteParry()
    if tick() - STATE.ParryLast < 0.2 then return end
    STATE.ParryLast = tick()
    local pGui = LP:FindFirstChild("PlayerGui")
    local mobBtn = pGui and pGui:FindFirstChild("Survivor-mob")
        and pGui["Survivor-mob"]:FindFirstChild("Controls")
        and pGui["Survivor-mob"].Controls:FindFirstChild("Gui-mob")
    if mobBtn and type(firesignal) == "function" then
        firesignal(mobBtn.MouseButton1Down)
        task.delay(0.05, function()
            if mobBtn and mobBtn.Parent then firesignal(mobBtn.MouseButton1Up) end
        end)
        return
    end
    local repStorage = game:GetService("ReplicatedStorage")
    local parryRemote = repStorage:FindFirstChild("Remotes")
        and repStorage.Remotes:FindFirstChild("Items")
        and repStorage.Remotes.Items:FindFirstChild("Parrying Dagger")
        and repStorage.Remotes.Items["Parrying Dagger"]:FindFirstChild("parry")
    if parryRemote then
        pcall(function() parryRemote:FireServer() end)
        return
    end
    -- fallback Q / mouse
    pcall(function()
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
        task.wait(0.05)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
    end)
end

local function CheckAndParry(killerChar)
    local myChar = LP.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    local killerRoot = killerChar and killerChar:FindFirstChild("HumanoidRootPart")
    if not myRoot or not killerRoot then return end
    local dist = (myRoot.Position - killerRoot.Position).Magnitude

    if STATE.ParryAggressive then
        local ping = math.clamp(LP:GetNetworkPing(), 0, 0.3)
        local killerVel = killerRoot.AssemblyLinearVelocity
        local flatVel = Vector3.new(killerVel.X, 0, killerVel.Z)
        local predictedPos = killerRoot.Position + (flatVel * ping)
        local predictedDist = (myRoot.Position - predictedPos).Magnitude
        if predictedDist <= (STATE.ParryDistance + 2) then
            local dirToMe = (myRoot.Position - killerRoot.Position)
            if dirToMe.Magnitude > 0.1 then
                dirToMe = dirToMe.Unit
                if flatVel.Magnitude > 8 and flatVel.Unit:Dot(dirToMe) > 0.5 then
                    ExecuteParry()
                    return
                end
            end
        end
    end

    if dist <= STATE.ParryDistance then
        ExecuteParry()
    end
end

local function HookKillerAnimation(killerPlayer)
    if killerPlayer == LP then return end
    local function onCharacterAdded(char)
        task.wait(1)
        local hum = char:FindFirstChildOfClass("Humanoid") or char:WaitForChild("Humanoid", 3)
        if not hum then return end
        local animator = hum:FindFirstChildOfClass("Animator") or hum:WaitForChild("Animator", 3)
        if not animator then return end
        animator.AnimationPlayed:Connect(function(track)
            if not track or not track.Animation then return end
            if not STATE.AutoParry then return end
            local animIdStr = tostring(track.Animation.AnimationId)
            local animType = STATE.KillerAttackAnims[animIdStr]
            if animType then
                STATE.ActiveAttackers[killerPlayer] = {char = char, track = track, type = animType}
            end
        end)
    end
    if killerPlayer.Character then task.spawn(onCharacterAdded, killerPlayer.Character) end
    killerPlayer.CharacterAdded:Connect(onCharacterAdded)
end

local function SetupParryHooks()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Team and string.find(string.lower(plr.Team.Name), "iller") then
            HookKillerAnimation(plr)
        end
    end
    Players.PlayerAdded:Connect(function(plr)
        task.wait(1)
        if plr.Team and string.find(string.lower(plr.Team.Name), "iller") then
            HookKillerAnimation(plr)
        end
        plr:GetPropertyChangedSignal("Team"):Connect(function()
            if plr.Team and string.find(string.lower(plr.Team.Name), "iller") then
                HookKillerAnimation(plr)
            end
        end)
    end)
end

local function UpdateAutoParry()
    if not STATE.AutoParry then return end
    for plr, data in pairs(STATE.ActiveAttackers) do
        if not plr or not plr.Parent or not data.track or not data.track.IsPlaying then
            STATE.ActiveAttackers[plr] = nil
        else
            if data.type == "attack" and data.track.TimePosition < 0.25 then
                CheckAndParry(data.char)
            elseif data.type == "lungehold" then
                CheckAndParry(data.char)
            end
        end
    end
    -- Aggressive mode also scans nearby killers without needing anim cache
    if STATE.ParryAggressive then
        local myRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        if myRoot then
            for _, plr in ipairs(Players:GetPlayers()) do
                if plr == LP then continue end
                if not (plr.Team and string.lower(plr.Team.Name):find("iller")) then continue end
                local kChar = plr.Character
                if kChar then CheckAndParry(kChar) end
            end
        end
    end
end


local function GetPlayerRole(player)
    if player.Team and string.lower(player.Team.Name):find("iller") then return "Killer" end
    return "Survivor"
end

local function ClearESP(player)
    local inst = STATE.ESPInstances[player]
    if not inst then return end
    pcall(function() if inst.Highlight then inst.Highlight:Destroy() end end)
    pcall(function() if inst.Billboard then inst.Billboard:Destroy() end end)
    if inst.Corners then for _, l in pairs(inst.Corners) do pcall(function() l:Remove() end) end end
    if inst.CornerOutlines then for _, l in pairs(inst.CornerOutlines) do pcall(function() l:Remove() end) end end
    if inst.Skeleton then for _, l in pairs(inst.Skeleton) do pcall(function() l:Remove() end) end end
    pcall(function() if inst.HealthBarBack then inst.HealthBarBack:Remove() end end)
    pcall(function() if inst.HealthBar then inst.HealthBar:Remove() end end)
    STATE.ESPInstances[player] = nil
end

local function MakeLine(thick, color)
    local l = Drawing.new("Line")
    l.Thickness = thick or 1.5; l.Color = color or Color3.new(1,1,1)
    l.Transparency = 1; l.Visible = false
    return l
end

local function UpdatePlayerESP()
    if not STATE.ESP.Enabled then
        for plr in pairs(STATE.ESPInstances) do ClearESP(plr) end
        return
    end
    local cam = workspace.CurrentCamera
    if not cam then return end
    local localRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LP then continue end
        local char = player.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        local role = GetPlayerRole(player)
        local want = (role == "Survivor" and STATE.ESP.Survivor) or (role == "Killer" and STATE.ESP.Killer)
        if not (want and root and hum and hum.Health > 0) then ClearESP(player); continue end
        if not STATE.ESPInstances[player] then
            local inst = { Skeleton = {}, Corners = {}, CornerOutlines = {} }
            local hl = Instance.new("Highlight")
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent = CoreGui
            inst.Highlight = hl
            local bb = Instance.new("BillboardGui")
            bb.AlwaysOnTop = true; bb.Size = UDim2.new(0, 220, 0, 55)
            bb.StudsOffset = Vector3.new(0, 3.2, 0); bb.Parent = CoreGui
            local txt = Instance.new("TextLabel")
            txt.Size = UDim2.new(1,0,1,0); txt.BackgroundTransparency = 1
            txt.Font = Enum.Font.GothamBold; txt.TextStrokeTransparency = 0.3
            txt.TextStrokeColor3 = Color3.new(0,0,0); txt.Parent = bb
            inst.Billboard = bb; inst.Text = txt
            for i = 1, 8 do
                inst.CornerOutlines[i] = MakeLine(3, Color3.new(0,0,0))
                inst.Corners[i] = MakeLine(1.6)
            end
            for i = 1, 14 do inst.Skeleton[i] = MakeLine(1.4) end
            inst.HealthBarBack = MakeLine(4, Color3.new(0,0,0))
            inst.HealthBar = MakeLine(2.2)
            STATE.ESPInstances[player] = inst
        end
        local inst = STATE.ESPInstances[player]
        local col = STATE.ESP.Colors[role]
        inst.Billboard.Adornee = root
        if STATE.ESP.Names or STATE.ESP.Distance then
            inst.Billboard.Enabled = true
            inst.Text.TextColor3 = col; inst.Text.TextSize = STATE.ESP.TextSize
            local dist = localRoot and math.floor((localRoot.Position - root.Position).Magnitude) or 0
            local str = ""
            if STATE.ESP.Names then str = player.DisplayName or player.Name end
            if STATE.ESP.Distance then str = str .. (str ~= "" and "\n" or "") .. dist .. "m" end
            inst.Text.Text = str
        else inst.Billboard.Enabled = false end
        local hl = inst.Highlight
        if STATE.ESP.Chams then
            hl.Enabled = true; hl.Adornee = char
            hl.FillColor = col; hl.OutlineColor = col
            hl.FillTransparency = STATE.ESP.FillTrans; hl.OutlineTransparency = STATE.ESP.OutlineTrans
        else hl.Enabled = false end
        local rootPos, onScreen = cam:WorldToViewportPoint(root.Position)
        for i = 1, 8 do inst.Corners[i].Visible = false; inst.CornerOutlines[i].Visible = false end
        for _, l in pairs(inst.Skeleton) do l.Visible = false end
        inst.HealthBarBack.Visible = false; inst.HealthBar.Visible = false
        if not onScreen then continue end
        local head = char:FindFirstChild("Head")
        if not head then continue end
        local headPos = cam:WorldToViewportPoint(head.Position + Vector3.new(0, 0.6, 0))
        local legPos = cam:WorldToViewportPoint(root.Position - Vector3.new(0, 3.1, 0))
        local height = math.abs(headPos.Y - legPos.Y)
        local width = height * 0.55
        local x, y = rootPos.X - width * 0.5, headPos.Y
        if STATE.ESP.Health then
            local pct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
            inst.HealthBarBack.From = Vector2.new(x-7, y); inst.HealthBarBack.To = Vector2.new(x-7, y+height)
            inst.HealthBarBack.Visible = true
            inst.HealthBar.From = Vector2.new(x-7, y+height); inst.HealthBar.To = Vector2.new(x-7, y+height*(1-pct))
            inst.HealthBar.Color = Color3.fromRGB(255*(1-pct), 255*pct, 40); inst.HealthBar.Visible = true
        end
        if STATE.ESP.Box then
            local len = width * 0.28
            local TL, TR = Vector2.new(x,y), Vector2.new(x+width,y)
            local BL, BR = Vector2.new(x,y+height), Vector2.new(x+width,y+height)
            local segs = {
                {TL, TL+Vector2.new(len,0)}, {TL, TL+Vector2.new(0,len)},
                {TR, TR-Vector2.new(len,0)}, {TR, TR+Vector2.new(0,len)},
                {BL, BL+Vector2.new(len,0)}, {BL, BL-Vector2.new(0,len)},
                {BR, BR-Vector2.new(len,0)}, {BR, BR-Vector2.new(0,len)}
            }
            for i = 1, 8 do
                inst.CornerOutlines[i].From = segs[i][1]; inst.CornerOutlines[i].To = segs[i][2]; inst.CornerOutlines[i].Visible = true
                inst.Corners[i].From = segs[i][1]; inst.Corners[i].To = segs[i][2]; inst.Corners[i].Color = col; inst.Corners[i].Visible = true
            end
        end
        if STATE.ESP.Skeleton and char:FindFirstChild("UpperTorso") then
            local function bone(idx, a, b)
                local p1, p2 = char:FindFirstChild(a), char:FindFirstChild(b)
                if not (p1 and p2) then return end
                local s1, o1 = cam:WorldToViewportPoint(p1.Position)
                local s2, o2 = cam:WorldToViewportPoint(p2.Position)
                if o1 and o2 then
                    local line = inst.Skeleton[idx]
                    line.From = Vector2.new(s1.X,s1.Y); line.To = Vector2.new(s2.X,s2.Y)
                    line.Color = col; line.Visible = true
                end
            end
            bone(1,"Head","UpperTorso"); bone(2,"UpperTorso","LowerTorso")
            bone(3,"UpperTorso","RightUpperArm"); bone(4,"RightUpperArm","RightLowerArm"); bone(5,"RightLowerArm","RightHand")
            bone(6,"UpperTorso","LeftUpperArm"); bone(7,"LeftUpperArm","LeftLowerArm"); bone(8,"LeftLowerArm","LeftHand")
            bone(9,"LowerTorso","RightUpperLeg"); bone(10,"RightUpperLeg","RightLowerLeg"); bone(11,"RightLowerLeg","RightFoot")
            bone(12,"LowerTorso","LeftUpperLeg"); bone(13,"LeftUpperLeg","LeftLowerLeg"); bone(14,"LeftLowerLeg","LeftFoot")
        end
    end
end
Players.PlayerRemoving:Connect(ClearESP)

-- ============================================================
-- WORLD ESP
-- ============================================================
local function GetWorldTargetPart(obj, targetType)
    if targetType == "Generators" then
        return obj:FindFirstChild("HitBox", true) or obj:FindFirstChild("GeneratorPoint", true) or obj.PrimaryPart
    elseif targetType == "Pallets" then
        for _, n in ipairs({"HumanoidRootPart","PrimaryPartPallet","Primary1","PalletPoint"}) do
            local p = obj:FindFirstChild(n, true)
            if p and p:IsA("BasePart") then return p end
        end
    elseif targetType == "Windows" then
        return obj:FindFirstChild("VaultPoint", true) or obj:FindFirstChild("VaultTrigger", true)
    elseif targetType == "Hooks" then
        return obj:FindFirstChild("HookPoint", true) or obj.PrimaryPart
    elseif targetType == "Gates" then
        return obj:FindFirstChild("ExitLever", true) or obj.PrimaryPart
    elseif targetType == "Pumpkins" then
        return obj:FindFirstChild("HB") or obj:FindFirstChild("shell") or obj.PrimaryPart
    elseif targetType == "Traps" then
        return obj:FindFirstChild("Hitbox", true) or obj.PrimaryPart
    end
    return obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart", true)
end

local function ClearWorldESP(obj)
    local inst = STATE.WorldESPInstances[obj]
    if not inst then return end
    pcall(function() if inst.Highlight then inst.Highlight:Destroy() end end)
    pcall(function() if inst.Billboard then inst.Billboard:Destroy() end end)
    STATE.WorldESPInstances[obj] = nil
end

local function ProcessMapObject(obj)
    if not obj:IsA("Model") then return end
    local n = string.lower(obj.Name)
    local t, name = nil, nil
    if n:find("generator") then t, name = "Generators", "Generator"
    elseif n:find("hook") then t, name = "Hooks", "Hook"
    elseif n:find("pallet") then t, name = "Pallets", "Pallet"
    elseif n:find("window") or n:find("vault") then t, name = "Windows", "Vault"
    elseif n:find("gate") or obj:FindFirstChild("ExitLever") then t, name = "Gates", "Gate"
    elseif n:find("pumpkin") then t, name = "Pumpkins", "Pumpkin"
    elseif n:find("trap") or n:find("beartrap") or n:find("snare") then t, name = "Traps", "Trap"
    end
    if t then
        STATE.ValidWorldObjects[obj] = {Type = t, Name = name, TargetPart = GetWorldTargetPart(obj, t) or obj}
    end
end

local function ScanMap()
    table.clear(STATE.ValidWorldObjects)
    for obj in pairs(STATE.WorldESPInstances) do ClearWorldESP(obj) end
    local map = workspace:FindFirstChild("Map") or workspace
    for _, obj in ipairs(map:GetDescendants()) do
        if obj:IsA("Model") then pcall(ProcessMapObject, obj) end
    end
end

local function UpdateWorldESP()
    if not STATE.WorldESP.Enabled then
        for obj in pairs(STATE.WorldESPInstances) do ClearWorldESP(obj) end
        return
    end
    local cam = workspace.CurrentCamera
    local localRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
    if not (cam and localRoot) then return end
    for obj, data in pairs(STATE.ValidWorldObjects) do
        if not obj.Parent then ClearWorldESP(obj); STATE.ValidWorldObjects[obj] = nil; continue end
        if not STATE.WorldESP[data.Type] then ClearWorldESP(obj); continue end
        local part = data.TargetPart
        if not part or not part.Parent then
            part = GetWorldTargetPart(obj, data.Type); data.TargetPart = part
        end
        if not part then continue end
        local dist = (localRoot.Position - part.Position).Magnitude
        if dist > STATE.WorldESP.MaxDistance then ClearWorldESP(obj); continue end
        if not STATE.WorldESPInstances[obj] then
            local inst = {}
            local hl = Instance.new("Highlight")
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            hl.FillTransparency = 0.55; hl.OutlineTransparency = 0.25; hl.Parent = CoreGui
            inst.Highlight = hl
            local bb = Instance.new("BillboardGui")
            bb.AlwaysOnTop = true; bb.Size = UDim2.new(0, 150, 0, 36)
            bb.StudsOffset = Vector3.new(0, 2.4, 0); bb.Parent = CoreGui
            local txt = Instance.new("TextLabel")
            txt.Size = UDim2.new(1,0,1,0); txt.BackgroundTransparency = 1
            txt.Font = Enum.Font.GothamBold; txt.TextStrokeTransparency = 0.3
            txt.TextStrokeColor3 = Color3.new(0,0,0); txt.TextSize = 11; txt.Parent = bb
            inst.Billboard = bb; inst.Text = txt
            STATE.WorldESPInstances[obj] = inst
        end
        local inst = STATE.WorldESPInstances[obj]
        local col = STATE.WorldESP.Colors[data.Type] or Color3.fromRGB(255,255,255)
        inst.Highlight.Enabled = true; inst.Highlight.Adornee = obj
        inst.Highlight.FillColor = col; inst.Highlight.OutlineColor = col
        inst.Billboard.Adornee = part
        if STATE.WorldESP.ShowName or STATE.WorldESP.ShowDistance then
            inst.Billboard.Enabled = true; inst.Text.TextColor3 = col
            local str = ""
            if STATE.WorldESP.ShowName then str = data.Name end
            if STATE.WorldESP.ShowDistance then str = str .. (str ~= "" and "\n" or "") .. math.floor(dist) .. "m" end
            inst.Text.Text = str
        else inst.Billboard.Enabled = false end
    end
end

task.spawn(function()
    while true do pcall(ScanMap); task.wait(8) end
end)

-- ============================================================
-- SAVE / LOAD CONFIG
-- ============================================================
local function getConfigTable()
    return {
        Veil_Enabled = STATE.Veil_Enabled, Veil_Predict = STATE.Veil_Predict,
        Veil_FOVRadius = STATE.Veil_FOVRadius, Veil_Lead = STATE.Veil_Lead,
        Veil_Speed = STATE.Veil_Speed, Veil_Gravity = STATE.Veil_Gravity,
        Veil_Tracker = STATE.Veil_Tracker, Veil_ShowFOV = STATE.Veil_ShowFOV,
        Pistol_Enabled = STATE.Pistol_Enabled, Pistol_Predict = STATE.Pistol_Predict,
        Pistol_BulletSpeed = STATE.Pistol_BulletSpeed, Pistol_TargetMode = STATE.Pistol_TargetMode,
        Flash_Enabled = STATE.Flash_Enabled, Flash_YOffset = STATE.Flash_YOffset,
        AutoSkill = STATE.AutoSkill, AutoParry = STATE.AutoParry,
        ParryDistance = STATE.ParryDistance, ParryAggressive = STATE.ParryAggressive,
        Cam_FOVEnabled = STATE.Cam_FOVEnabled, Cam_FOV = STATE.Cam_FOV,
        Cam_DBD = STATE.Cam_DBD, Cam_DBDSmooth = STATE.Cam_DBDSmooth,
        Cam_UnlockZoom = STATE.Cam_UnlockZoom, Cam_MaxZoom = STATE.Cam_MaxZoom,
        Fullbright = STATE.Fullbright, FullbrightValue = STATE.FullbrightValue,
        NoShadow = STATE.NoShadow, CleanSky = STATE.CleanSky,
        ESP = STATE.ESP, WorldESP = STATE.WorldESP
    }
end

local function applyConfig(cfg)
    if not cfg then return end
    for k, v in pairs(cfg) do
        if k == "ESP" and type(v) == "table" then
            for ek, ev in pairs(v) do STATE.ESP[ek] = ev end
        elseif k == "WorldESP" and type(v) == "table" then
            for ek, ev in pairs(v) do STATE.WorldESP[ek] = ev end
        elseif STATE[k] ~= nil then
            STATE[k] = v
        end
    end
    pcall(ApplyFullbright)
    pcall(ApplyNoShadow)
    pcall(ApplyCleanSky)
end

local function SaveConfig(name)
    name = name or STATE.ConfigName or "Default"
    STATE.ConfigName = name
    local path = "BintangX6LoccHub_" .. name .. ".json"
    local ok, err = pcall(function()
        if writefile then
            writefile(path, HttpService:JSONEncode(getConfigTable()))
        end
    end)
    if ok then
        print("[BintangX6LoccHub] Config saved: " .. path)
    else
        warn("[BintangX6LoccHub] Save failed: " .. tostring(err))
    end
end

local function LoadConfig(name)
    name = name or STATE.ConfigName or "Default"
    STATE.ConfigName = name
    local path = "BintangX6LoccHub_" .. name .. ".json"
    local ok, data = pcall(function()
        if isfile and isfile(path) and readfile then
            return HttpService:JSONDecode(readfile(path))
        end
        return nil
    end)
    if ok and data then
        applyConfig(data)
        print("[BintangX6LoccHub] Config loaded: " .. path)
    else
        warn("[BintangX6LoccHub] Load failed / file not found: " .. path)
    end
end

-- ============================================================
-- UI HELPERS
-- ============================================================
local function createToggle(parent, text, default, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, -16, 0, 26)
    row.BackgroundTransparency = 1
    row.Parent = parent
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -46, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(210, 210, 220)
    label.Font = Enum.Font.Gotham
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = row
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.fromOffset(34, 16)
    btn.Position = UDim2.new(1, -38, 0.5, -8)
    btn.BackgroundColor3 = default and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(55, 55, 65)
    btn.Text = ""; btn.BorderSizePixel = 0; btn.Parent = row
    Instance.new("UICorner", btn).CornerRadius = UDim.new(1, 0)
    local circle = Instance.new("Frame")
    circle.Size = UDim2.fromOffset(12, 12)
    circle.Position = default and UDim2.new(1, -14, 0.5, -6) or UDim2.new(0, 2, 0.5, -6)
    circle.BackgroundColor3 = Color3.new(1,1,1)
    circle.BorderSizePixel = 0; circle.Parent = btn
    Instance.new("UICorner", circle).CornerRadius = UDim.new(1, 0)
    local on = default
    btn.MouseButton1Click:Connect(function()
        on = not on
        btn.BackgroundColor3 = on and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(55, 55, 65)
        circle.Position = on and UDim2.new(1, -14, 0.5, -6) or UDim2.new(0, 2, 0.5, -6)
        if callback then callback(on) end
    end)
    return row
end

local function createSlider(parent, text, min, max, default, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, -16, 0, 40)
    row.BackgroundTransparency = 1
    row.Parent = parent
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.68, 0, 0, 16)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(210, 210, 220)
    label.Font = Enum.Font.Gotham
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = row
    local valueLbl = Instance.new("TextLabel")
    valueLbl.Size = UDim2.new(0.32, 0, 0, 16)
    valueLbl.Position = UDim2.new(0.68, 0, 0, 0)
    valueLbl.BackgroundTransparency = 1
    valueLbl.Text = tostring(default)
    valueLbl.TextColor3 = Color3.fromRGB(170, 170, 185)
    valueLbl.Font = Enum.Font.Gotham
    valueLbl.TextSize = 12
    valueLbl.TextXAlignment = Enum.TextXAlignment.Right
    valueLbl.Parent = row
    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 0, 5)
    bg.Position = UDim2.new(0, 0, 0, 24)
    bg.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    bg.BorderSizePixel = 0; bg.Parent = row
    Instance.new("UICorner", bg).CornerRadius = UDim.new(1, 0)
    local fill = Instance.new("Frame")
    fill.Size = UDim2.fromScale((default-min)/(max-min), 1)
    fill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    fill.BorderSizePixel = 0; fill.Parent = bg
    Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)
    local function setVal(v)
        v = math.clamp(v, min, max)
        fill.Size = UDim2.fromScale((v-min)/(max-min), 1)
        valueLbl.Text = string.format("%.0f", v)
        if callback then callback(v) end
    end
    bg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            local function update(pos)
                local r = math.clamp((pos.X - bg.AbsolutePosition.X) / bg.AbsoluteSize.X, 0, 1)
                setVal(min + r * (max - min))
            end
            update(input.Position)
            local m
            m = UserInputService.InputChanged:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                    update(inp.Position)
                end
            end)
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End and m then m:Disconnect() end
            end)
        end
    end)
    return row
end

local function createDropdown(parent, text, options, default, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, -16, 0, 28)
    row.BackgroundTransparency = 1
    row.Parent = parent
    row.ZIndex = 20
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.45, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(210, 210, 220)
    label.Font = Enum.Font.Gotham
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = row
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.52, 0, 0, 24)
    btn.Position = UDim2.new(0.48, 0, 0.5, -12)
    btn.BackgroundColor3 = Color3.fromRGB(40, 42, 52)
    btn.Text = "  " .. default .. "  ▼"
    btn.TextColor3 = Color3.fromRGB(220, 220, 230)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 12
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.BorderSizePixel = 0
    btn.ZIndex = 21
    btn.Parent = row
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
    local list = Instance.new("Frame")
    list.Size = UDim2.new(0.52, 0, 0, #options * 24)
    list.Position = UDim2.new(0.48, 0, 1, 2)
    list.BackgroundColor3 = Color3.fromRGB(32, 34, 44)
    list.BorderSizePixel = 0
    list.Visible = false
    list.ZIndex = 50
    list.Parent = row
    Instance.new("UICorner", list).CornerRadius = UDim.new(0, 5)
    Instance.new("UIStroke", list).Color = Color3.fromRGB(60, 70, 90)
    local lay = Instance.new("UIListLayout")
    lay.Parent = list
    local open = false
    for _, opt in ipairs(options) do
        local optBtn = Instance.new("TextButton")
        optBtn.Size = UDim2.new(1, 0, 0, 24)
        optBtn.BackgroundColor3 = Color3.fromRGB(32, 34, 44)
        optBtn.Text = "  " .. opt
        optBtn.TextColor3 = Color3.fromRGB(200, 200, 210)
        optBtn.Font = Enum.Font.Gotham
        optBtn.TextSize = 12
        optBtn.TextXAlignment = Enum.TextXAlignment.Left
        optBtn.BorderSizePixel = 0
        optBtn.ZIndex = 51
        optBtn.Parent = list
        optBtn.MouseButton1Click:Connect(function()
            btn.Text = "  " .. opt .. "  ▼"
            list.Visible = false
            open = false
            if callback then callback(opt) end
        end)
        optBtn.MouseEnter:Connect(function() optBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 180) end)
        optBtn.MouseLeave:Connect(function() optBtn.BackgroundColor3 = Color3.fromRGB(32, 34, 44) end)
    end
    btn.MouseButton1Click:Connect(function()
        open = not open
        list.Visible = open
    end)
    return row
end

local function createTextBox(parent, text, default, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, -16, 0, 28)
    row.BackgroundTransparency = 1
    row.Parent = parent
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.4, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(210, 210, 220)
    label.Font = Enum.Font.Gotham
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = row
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0.58, 0, 0, 24)
    box.Position = UDim2.new(0.42, 0, 0.5, -12)
    box.BackgroundColor3 = Color3.fromRGB(40, 42, 52)
    box.Text = default
    box.TextColor3 = Color3.fromRGB(220, 220, 230)
    box.Font = Enum.Font.Gotham
    box.TextSize = 12
    box.ClearTextOnFocus = false
    box.BorderSizePixel = 0
    box.Parent = row
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 5)
    box.FocusLost:Connect(function()
        if callback then callback(box.Text) end
    end)
    return row, box
end

local function createButton(parent, text, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -16, 0, 28)
    btn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
    btn.Text = text
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 12
    btn.BorderSizePixel = 0
    btn.Parent = parent
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    btn.MouseButton1Click:Connect(function() if callback then callback() end end)
    return btn
end

local function createSection(parent, title)
    local section = Instance.new("Frame")
    section.Size = UDim2.new(1, -12, 0, 0)
    section.AutomaticSize = Enum.AutomaticSize.Y
    section.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
    section.BorderSizePixel = 0
    section.Parent = parent
    Instance.new("UICorner", section).CornerRadius = UDim.new(0, 7)
    local header = Instance.new("TextLabel")
    header.Size = UDim2.new(1, -14, 0, 26)
    header.Position = UDim2.fromOffset(10, 0)
    header.BackgroundTransparency = 1
    header.Text = title
    header.TextColor3 = Color3.fromRGB(0, 180, 255)
    header.Font = Enum.Font.GothamBold
    header.TextSize = 12
    header.TextXAlignment = Enum.TextXAlignment.Left
    header.Parent = section
    local content = Instance.new("Frame")
    content.Size = UDim2.new(1, 0, 0, 0)
    content.Position = UDim2.fromOffset(0, 26)
    content.AutomaticSize = Enum.AutomaticSize.Y
    content.BackgroundTransparency = 1
    content.Parent = section
    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 2)
    layout.Parent = content
    local pad = Instance.new("UIPadding")
    pad.PaddingLeft = UDim.new(0, 8)
    pad.PaddingRight = UDim.new(0, 8)
    pad.PaddingBottom = UDim.new(0, 8)
    pad.Parent = content
    return section, content
end

local function switchTab(name)
    STATE.currentTab = name
    for n, frame in pairs(STATE.tabFrames) do frame.Visible = (n == name) end
    for n, btn in pairs(STATE.sideButtons) do
        btn.BackgroundColor3 = (n == name) and Color3.fromRGB(0, 120, 200) or Color3.fromRGB(30, 32, 42)
        btn.TextColor3 = (n == name) and Color3.new(1,1,1) or Color3.fromRGB(170, 170, 185)
    end
end

local function cleanup()
    if STATE.conn then pcall(function() STATE.conn:Disconnect() end) end
    for plr in pairs(STATE.ESPInstances) do ClearESP(plr) end
    for obj in pairs(STATE.WorldESPInstances) do ClearWorldESP(obj) end
    pcall(function() FovCircle:Remove() end)
    pcall(function() TrackerLine:Remove() end)
    pcall(function() TrackerCircle:Remove() end)
    if STATE.PistolLaser then pcall(function() STATE.PistolLaser:Destroy() end) end
    if STATE.gui then pcall(function() STATE.gui:Destroy() end) end
    print("[BintangX6LoccHub] Unloaded")
end

local function buildUI()
    local parent = (type(gethui) == "function" and gethui()) or CoreGui
    local gui = Instance.new("ScreenGui")
    gui.Name = "BintangX6LoccHub"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.DisplayOrder = 999999
    gui.Parent = parent
    STATE.gui = gui

    local main = Instance.new("Frame")
    main.Size = UDim2.fromOffset(420, 340)
    main.Position = UDim2.new(1, -440, 1, -360) -- pojok kanan bawah
    main.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
    main.BorderSizePixel = 0; main.Active = true; main.ZIndex = 10; main.Parent = gui
    Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)
    Instance.new("UIStroke", main).Color = Color3.fromRGB(40, 50, 70)
    STATE.mainFrame = main
    STATE.mainExpanded = true
    STATE.mainFullSize = UDim2.fromOffset(420, 340)

    local titleBar = Instance.new("Frame")
    titleBar.Size = UDim2.new(1, 0, 0, 38)
    titleBar.BackgroundColor3 = Color3.fromRGB(24, 26, 36)
    titleBar.BorderSizePixel = 0; titleBar.ZIndex = 11; titleBar.Parent = main
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 11)
    local titleFix = Instance.new("Frame")
    titleFix.Size = UDim2.new(1, 0, 0, 12)
    titleFix.Position = UDim2.new(0, 0, 1, -12)
    titleFix.BackgroundColor3 = Color3.fromRGB(24, 26, 36)
    titleFix.BorderSizePixel = 0; titleFix.ZIndex = 11; titleFix.Parent = titleBar

    -- Logo
    local logo = Instance.new("ImageLabel")
    logo.Size = UDim2.fromOffset(28, 28)
    logo.Position = UDim2.fromOffset(8, 5)
    logo.BackgroundTransparency = 1
    logo.ScaleType = Enum.ScaleType.Crop
    logo.ZIndex = 13
    logo.Parent = titleBar
    Instance.new("UICorner", logo).CornerRadius = UDim.new(0, 6)
    if LOGO_IMAGE and LOGO_IMAGE ~= "" then
        logo.Image = LOGO_IMAGE
    else
        logo.BackgroundTransparency = 0
        logo.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
        local letter = Instance.new("TextLabel")
        letter.Size = UDim2.fromScale(1, 1)
        letter.BackgroundTransparency = 1
        letter.Text = "B"
        letter.TextColor3 = Color3.new(1,1,1)
        letter.Font = Enum.Font.GothamBold
        letter.TextSize = 16
        letter.ZIndex = 14
        letter.Parent = logo
    end

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -100, 1, 0)
    title.Position = UDim2.fromOffset(42, 0)
    title.BackgroundTransparency = 1
    title.Text = "BintangX6LoccHub  •  Violence District"
    title.TextColor3 = Color3.fromRGB(230, 230, 240)
    title.Font = Enum.Font.GothamBold; title.TextSize = 13
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.ZIndex = 12; title.Parent = titleBar

    local minBtn = Instance.new("TextButton")
    minBtn.Size = UDim2.fromOffset(24, 24)
    minBtn.Position = UDim2.new(1, -60, 0, 7)
    minBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    minBtn.Text = "−"; minBtn.TextColor3 = Color3.new(1,1,1)
    minBtn.Font = Enum.Font.GothamBold; minBtn.TextSize = 16
    minBtn.BorderSizePixel = 0; minBtn.ZIndex = 13; minBtn.Parent = titleBar
    Instance.new("UICorner", minBtn).CornerRadius = UDim.new(0, 5)
    minBtn.MouseButton1Click:Connect(function()
        STATE.mainExpanded = not STATE.mainExpanded
        if STATE.mainExpanded then
            main.Size = STATE.mainFullSize
            minBtn.Text = "−"
            for _, f in pairs(STATE.tabFrames) do
                -- restore visibility of current only
            end
            if STATE.sideButtons then
                for n, b in pairs(STATE.sideButtons) do b.Visible = true end
            end
            -- show side + content again
            for _, child in ipairs(main:GetChildren()) do
                if child ~= titleBar and child:IsA("Frame") then
                    child.Visible = true
                end
            end
            switchTab(STATE.currentTab or "Info")
        else
            main.Size = UDim2.fromOffset(420, 38)
            minBtn.Text = "+"
            for _, child in ipairs(main:GetChildren()) do
                if child ~= titleBar and child:IsA("Frame") then
                    child.Visible = false
                end
            end
        end
    end)

    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.fromOffset(24, 24)
    closeBtn.Position = UDim2.new(1, -32, 0, 7)
    closeBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
    closeBtn.Text = "✕"; closeBtn.TextColor3 = Color3.new(1,1,1)
    closeBtn.Font = Enum.Font.GothamBold; closeBtn.TextSize = 12
    closeBtn.BorderSizePixel = 0; closeBtn.ZIndex = 13; closeBtn.Parent = titleBar
    Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 5)
    closeBtn.MouseButton1Click:Connect(cleanup)

    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            STATE.dragging = true
            STATE.dragStart = input.Position
            STATE.startPos = main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then STATE.dragging = false end
            end)
        end
    end)
    titleBar.InputChanged:Connect(function(input)
        if not STATE.dragging then return end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - STATE.dragStart
            main.Position = UDim2.new(STATE.startPos.X.Scale, STATE.startPos.X.Offset + delta.X, STATE.startPos.Y.Scale, STATE.startPos.Y.Offset + delta.Y)
        end
    end)

    local side = Instance.new("Frame")
    side.Size = UDim2.new(0, 115, 1, -38)
    side.Position = UDim2.fromOffset(0, 38)
    side.BackgroundColor3 = Color3.fromRGB(22, 24, 32)
    side.BorderSizePixel = 0; side.ZIndex = 11; side.Parent = main
    local sideLayout = Instance.new("UIListLayout")
    sideLayout.Padding = UDim.new(0, 2); sideLayout.Parent = side
    local sidePad = Instance.new("UIPadding")
    sidePad.PaddingTop = UDim.new(0, 8)
    sidePad.PaddingLeft = UDim.new(0, 6)
    sidePad.PaddingRight = UDim.new(0, 6)
    sidePad.Parent = side

    local function makeSideBtn(name)
        local b = Instance.new("TextButton")
        b.Size = UDim2.new(1, 0, 0, 28)
        b.BackgroundColor3 = Color3.fromRGB(30, 32, 42)
        b.Text = name
        b.TextColor3 = Color3.fromRGB(170, 170, 185)
        b.Font = Enum.Font.Gotham; b.TextSize = 12
        b.BorderSizePixel = 0; b.ZIndex = 12; b.Parent = side
        Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
        b.MouseButton1Click:Connect(function() switchTab(name) end)
        STATE.sideButtons[name] = b
        return b
    end
    makeSideBtn("Info")
    makeSideBtn("Survivor")
    makeSideBtn("Killer")
    makeSideBtn("ESP")
    makeSideBtn("Camera")
    makeSideBtn("Config")

    local function makeTab(name)
        local sf = Instance.new("ScrollingFrame")
        sf.Size = UDim2.new(1, -125, 1, -48)
        sf.Position = UDim2.fromOffset(120, 44)
        sf.BackgroundTransparency = 1
        sf.BorderSizePixel = 0
        sf.ScrollBarThickness = 3
        sf.ScrollBarImageColor3 = Color3.fromRGB(0, 150, 220)
        sf.CanvasSize = UDim2.new(0,0,0,0)
        sf.AutomaticCanvasSize = Enum.AutomaticSize.Y
        sf.Visible = false
        sf.ZIndex = 11
        sf.Parent = main
        local lay = Instance.new("UIListLayout")
        lay.Padding = UDim.new(0, 7); lay.Parent = sf
        local pad = Instance.new("UIPadding")
        pad.PaddingTop = UDim.new(0, 2)
        pad.PaddingBottom = UDim.new(0, 10)
        pad.Parent = sf
        STATE.tabFrames[name] = sf
        return sf
    end

    -- KILLER
    local tabKiller = makeTab("Killer")
    local s1, c1 = createSection(tabKiller, "Veil Spear Silent")
    createToggle(c1, "Enable Silent Veil", true, function(v) STATE.Veil_Enabled = v end)
    createToggle(c1, "Auto Predict", true, function(v) STATE.Veil_Predict = v end)
    createToggle(c1, "Show Tracker", true, function(v) STATE.Veil_Tracker = v end)
    createToggle(c1, "Show FOV", true, function(v) STATE.Veil_ShowFOV = v end)
    createSlider(c1, "FOV Radius", 30, 400, 150, function(v) STATE.Veil_FOVRadius = v end)
    createSlider(c1, "Lead Multiplier", 5, 30, 14, function(v) STATE.Veil_Lead = v / 10 end)
    createSlider(c1, "Spear Speed", 50, 250, 165, function(v) STATE.Veil_Speed = v end)
    createSlider(c1, "Spear Gravity", 50, 200, 103, function(v) STATE.Veil_Gravity = v end)

    -- SURVIVOR
    local tabSurv = makeTab("Survivor")
    local s2, c2 = createSection(tabSurv, "Silent Pistol (Twist of Fate)")
    createToggle(c2, "Enable Silent Pistol", false, function(v) STATE.Pistol_Enabled = v end)
    createToggle(c2, "Prediction", true, function(v) STATE.Pistol_Predict = v end)
    createToggle(c2, "Show Laser", true, function(v) STATE.Pistol_ShowLaser = v end)
    createDropdown(c2, "Target Mode", {"Killer", "Survivor"}, "Killer", function(v) STATE.Pistol_TargetMode = v end)
    createSlider(c2, "Bullet Speed", 50, 400, 200, function(v) STATE.Pistol_BulletSpeed = v end)

    local sFlash, cFlash = createSection(tabSurv, "Silent Flashlight")
    createToggle(cFlash, "Enable Silent Flash", false, function(v) STATE.Flash_Enabled = v end)
    createSlider(cFlash, "Y Offset", 0, 5, 15, function(v) STATE.Flash_YOffset = v / 10 end)

    local s3, c3 = createSection(tabSurv, "Generator")
    createDropdown(c3, "Auto Skill Check", {"Disabled", "Normal", "Perfect", "Instant"}, "Disabled", function(v)
        STATE.AutoSkill = v
    end)

    local s4, c4 = createSection(tabSurv, "Combat")
    createToggle(c4, "Auto Parry (Safety)", false, function(v) STATE.AutoParry = v end)
    createToggle(c4, "Parry Aggressive (Predict)", false, function(v) STATE.ParryAggressive = v end)
    createSlider(c4, "Parry Distance", 4, 25, 8, function(v) STATE.ParryDistance = v end)

    -- ESP
    local tabESP = makeTab("ESP")
    local s5, c5 = createSection(tabESP, "Player ESP")
    createToggle(c5, "Enable Player ESP", false, function(v)
        STATE.ESP.Enabled = v
        if not v then for plr in pairs(STATE.ESPInstances) do ClearESP(plr) end end
    end)
    createToggle(c5, "Chams", true, function(v) STATE.ESP.Chams = v end)
    createToggle(c5, "Box", true, function(v) STATE.ESP.Box = v end)
    createToggle(c5, "Skeleton", false, function(v) STATE.ESP.Skeleton = v end)
    createToggle(c5, "Names", true, function(v) STATE.ESP.Names = v end)
    createToggle(c5, "Distance", true, function(v) STATE.ESP.Distance = v end)
    createToggle(c5, "Health Bar", true, function(v) STATE.ESP.Health = v end)
    createToggle(c5, "Target Survivor", true, function(v) STATE.ESP.Survivor = v end)
    createToggle(c5, "Target Killer", false, function(v) STATE.ESP.Killer = v end)

    local s6, c6 = createSection(tabESP, "World ESP")
    createToggle(c6, "Enable World ESP", false, function(v)
        STATE.WorldESP.Enabled = v
        if not v then for obj in pairs(STATE.WorldESPInstances) do ClearWorldESP(obj) end end
    end)
    createToggle(c6, "Generators", true, function(v) STATE.WorldESP.Generators = v end)
    createToggle(c6, "Hooks", true, function(v) STATE.WorldESP.Hooks = v end)
    createToggle(c6, "Pallets", true, function(v) STATE.WorldESP.Pallets = v end)
    createToggle(c6, "Vault / Window", true, function(v) STATE.WorldESP.Windows = v end)
    createToggle(c6, "Gates", false, function(v) STATE.WorldESP.Gates = v end)
    createToggle(c6, "Pumpkins", true, function(v) STATE.WorldESP.Pumpkins = v end)
    createToggle(c6, "Traps", true, function(v) STATE.WorldESP.Traps = v end)
    createToggle(c6, "Show Name", true, function(v) STATE.WorldESP.ShowName = v end)
    createToggle(c6, "Show Distance", true, function(v) STATE.WorldESP.ShowDistance = v end)
    createSlider(c6, "Max Distance", 50, 300, 180, function(v) STATE.WorldESP.MaxDistance = v end)

    local sVis, cVis = createSection(tabESP, "Visual / Lighting")
    createToggle(cVis, "Fullbright", false, function(v)
        STATE.Fullbright = v
        pcall(ApplyFullbright)
    end)
    createSlider(cVis, "Fullbright Value", 50, 255, 180, function(v)
        STATE.FullbrightValue = v
        if STATE.Fullbright then pcall(ApplyFullbright) end
    end)
    createToggle(cVis, "No Shadow", false, function(v)
        STATE.NoShadow = v
        pcall(ApplyNoShadow)
    end)
    createToggle(cVis, "Clean Sky / No Fog", false, function(v)
        STATE.CleanSky = v
        pcall(ApplyCleanSky)
    end)

    -- CAMERA
    local tabCam = makeTab("Camera")
    local sCam, cCam = createSection(tabCam, "Camera")
    createToggle(cCam, "Custom FOV", false, function(v) STATE.Cam_FOVEnabled = v end)
    createSlider(cCam, "FOV Value", 30, 120, 70, function(v) STATE.Cam_FOV = v end)
    createToggle(cCam, "DBD Camera", false, function(v) STATE.Cam_DBD = v end)
    createSlider(cCam, "DBD Smoothness", 5, 50, 20, function(v) STATE.Cam_DBDSmooth = v / 100 end)
    createToggle(cCam, "Unlock Zoom", false, function(v) STATE.Cam_UnlockZoom = v end)
    createSlider(cCam, "Max Zoom", 10, 100, 50, function(v) STATE.Cam_MaxZoom = v end)

    -- CONFIG
    local tabCfg = makeTab("Config")
    local sCfg, cCfg = createSection(tabCfg, "Save / Load")
    local _, nameBox = createTextBox(cCfg, "Config Name", "Default", function(t)
        STATE.ConfigName = t ~= "" and t or "Default"
    end)
    createButton(cCfg, "Save Config", function()
        SaveConfig(STATE.ConfigName)
    end)
    createButton(cCfg, "Load Config", function()
        LoadConfig(STATE.ConfigName)
    end)

    local sCtrl, cCtrl = createSection(tabCfg, "Controls")
    local cfgLbl = Instance.new("TextLabel")
    cfgLbl.Size = UDim2.new(1, 0, 0, 40)
    cfgLbl.BackgroundTransparency = 1
    cfgLbl.Text = "RightShift = Toggle Silent Veil\nDrag title bar to move panel"
    cfgLbl.TextColor3 = Color3.fromRGB(160, 160, 175)
    cfgLbl.Font = Enum.Font.Gotham
    cfgLbl.TextSize = 12
    cfgLbl.TextXAlignment = Enum.TextXAlignment.Left
    cfgLbl.TextYAlignment = Enum.TextYAlignment.Top
    cfgLbl.Parent = cCtrl

    -- INFO (paling atas)
    local tabInfo = makeTab("Info")
    local sInfo, cInfo = createSection(tabInfo, "BintangX6LoccHub")
    local infoLbl = Instance.new("TextLabel")
    infoLbl.Size = UDim2.new(1, 0, 0, 110)
    infoLbl.BackgroundTransparency = 1
    infoLbl.Text = "BERMAIN DENGAN AMAN\n\nJANGAN LUPA FEEDBACK\n\nSilent Veil • Pistol • Flash\nSkillCheck • Auto Parry\nFull ESP • Camera • Config"
    infoLbl.TextColor3 = Color3.fromRGB(200, 210, 220)
    infoLbl.Font = Enum.Font.GothamBold
    infoLbl.TextSize = 13
    infoLbl.TextXAlignment = Enum.TextXAlignment.Center
    infoLbl.TextYAlignment = Enum.TextYAlignment.Top
    infoLbl.Parent = cInfo

    local sDc, cDc = createSection(tabInfo, "Discord")
    local DISCORD_LINK = "https://discord.gg/YOUR_INVITE" -- ganti link DC lu
    local dcLbl = Instance.new("TextLabel")
    dcLbl.Size = UDim2.new(1, 0, 0, 20)
    dcLbl.BackgroundTransparency = 1
    dcLbl.Text = DISCORD_LINK
    dcLbl.TextColor3 = Color3.fromRGB(120, 180, 255)
    dcLbl.Font = Enum.Font.Gotham
    dcLbl.TextSize = 11
    dcLbl.TextXAlignment = Enum.TextXAlignment.Left
    dcLbl.Parent = cDc
    createButton(cDc, "COPY LINK DC", function()
        local ok = pcall(function()
            if setclipboard then
                setclipboard(DISCORD_LINK)
            elseif toclipboard then
                toclipboard(DISCORD_LINK)
            end
        end)
        if ok then
            print("[BintangX6LoccHub] Discord link copied!")
        else
            warn("[BintangX6LoccHub] Clipboard not supported")
        end
    end)

    switchTab("Info")
end

UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        STATE.Veil_Enabled = not STATE.Veil_Enabled
    end
end)

buildUI()
setupHook()
task.spawn(ScanMap)
pcall(SetupParryHooks)

STATE.conn = RunService.RenderStepped:Connect(function()
    pcall(UpdateSilentVeil)
    pcall(UpdateSilentPistol)
    pcall(UpdateSilentFlash)
    pcall(UpdateCamera)
    pcall(UpdatePlayerESP)
    pcall(UpdateWorldESP)
    pcall(UpdateAutoSkill)
    pcall(UpdateAutoParry)
    if STATE.Fullbright then pcall(ApplyFullbright) end
end)

print("[BintangX6LoccHub] Loaded")
