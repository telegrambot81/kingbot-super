do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = "1206290655,106789762"
  if msg.to.type == 'chat' then
    local chat = ''
    chat_add_user(chat, user, callback, false)
  else 
    return 'Only work in group'
  end

end

return {
  description = "Invite X Y Z C B Robots", 
  usage = {
    "/xy : invite x y z c b bots", 
  patterns = {
    "^[!/]xy$"
  }, 
  run = run,
  privileged = true
}

end
