-- Install script
-- INTERFACE

fs.makeDir("interface/")
shell.run("wget https://raw.githubusercontent.com/HambatEverett/INTERFACE/refs/heads/main/test/test.lua test.lua")
fs.move("test.lua","interface/")

print("Done")
