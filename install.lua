-- Install script
-- INTERFACE

if fs.exists("interface/test.lua") == false then
  fs.makeDir("interface/")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/INTERFACE/refs/heads/main/test/test.lua test.lua")
  fs.move("test.lua","interface/test.lua")
else
  fs.delete("interface/test.lua")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/INTERFACE/refs/heads/main/test/test.lua test.lua")
  fs.move("test.lua","interface/test.lua")
end

print("Done")
fs.delete("install.lua")
