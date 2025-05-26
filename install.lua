-- Install script
-- INTERFACE

if fs.exists("interface/test.lua") == false then
  fs.makeDir("interface/")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/INTERFACE/refs/heads/main/interr/vercont.lua vercont.lua")
  fs.move("vercont.lua","interface/vercont.lua")
else
  fs.delete("interface/test.lua")
  shell.run("wget https://raw.githubusercontent.com/HambatEverett/INTERFACE/refs/heads/main/inter/vercont.lua vercont.lua")
  fs.move("vercont.lua","interface/test.lua")
end

print("Done")
fs.delete("install.lua")
