-- most of it was smade by claude BUT removed unnecessary stuff like unnecessary comments and variables
local function p(path) return "Arceus" .. "/" .. tostring(path or "") end
local function mk() if not isfolder("Arceus") then makefolder("Arceus") end end
mk()

getgenv().drawingLoaded = true
getgenv().rconsole = getgenv().rconsole or {
	warn = function(...) warn(...) end, print = print,
	info = print, err = warn, clear = function() end,
}

local keyDone = false
getgenv().arceus = {
	isiosdevice = function() return false end,
	is_ios = function() return false end,
	getversion = function() return "1.0" end,
	ispermissiongranted = function() return true end,
	openurl = function(u)  end,
	WOWPALAKSZMNXBRU = function(...) print("[arceus]", ...) end,
	SDKEUIEWOWOASKS = function() return keyDone end,
	UJSWOOALSKDSJEO = function(v) keyDone = v end,

	isarceusfolder = function(f) return isfolder(p(f)) end,
	makearceusfolder = function(f) if not isfolder(p(f)) then makefolder(p(f)) end end,
	deletearceusfolder = function(f) if isfolder(p(f)) then delfolder(p(f)) end end,

	isarceusfile = function(f) return isfile(p(f)) end,
	readarceusfile = function(f) return readfile(p(f)) end,
	writearceusfile = function(f, c) writefile(p(f), c) end,
	deletearceusfile = function(f) if isfile(p(f)) then delfile(p(f)) end end,
	listarceusfiles = function(f) return listfiles(p(f)) end,
	getfilesize = function(f) return #readfile(p(f)) end,
	loadarceusfile = function(f) return loadstring(readfile(p(f))) end,

	iscustomasset = function(f) return isfile(p(f)) end,
	writecustomasset = function(f, c) writefile(p(f), c) end,
	retrievecustomasset = function(f) return getcustomasset(p(f)) end,
	deletecustomasset = function(f) if isfile(p(f)) then delfile(p(f)) end end,
}
