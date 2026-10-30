DeltaX.luau in specific is a fixed version of the SPDM Team dump

Removed:
Key system checks (includes funcs boost_whitelist() and whitelist() and the entire platoboost check but the "receive key" button still copies a platoboost link)
made some checks return either nil or true

fixed:
in line 47 it used runcode(sc) instead of loadstring(sc)() and fixed it

added:
replaced "local bool = checkkey()" with "local bool = GrantAccess()" so it instantly opens the main ui instead of the key gui
