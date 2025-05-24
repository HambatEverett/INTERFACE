local component = require("component")
local event = require("event")
local socket = component.socket

local address = "ws://your_server_ip:8080/ws" -- Replace with your server address
local connected = false

local function connect()
  if not connected then
    if socket.connect(address) then
      print("Connected to server")
      connected = true
    else
      print("Failed to connect, retrying in 5 seconds...")
      return false
    end
  end
  return true
end

while true do
  if connect() then
    local eventData = { event.pull("websocket_message") }
    if eventData then
      local _, message = table.unpack(eventData)
      print("Received:", message)
      socket.send(message)
    end
  else
    os.sleep(5)
  end
end
