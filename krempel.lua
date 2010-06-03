
--[[ OS library ---------------------------------- ]]--

--[[
-- capture the output of a shell command
]]--
function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end


--[[ String library ---------------------------------- ]]--

--[[
--  find a pattern in a string and return the matching part
]]--
function string.findpattern(text, pattern, start)
  return string.sub(text, string.find(text, pattern, start))
end


--[[
--  remove whitepsace from both sides of a string
]]--
function string.trim(s)
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

--[[
--  remove whitepsace from the beginning of a string
]]--
function string.ltrim(s)
  return (s:gsub("^%s*(.-)$", "%1"))
end

--[[
--  remove whitepsace from the end of a string
]]--
function string.rtrim(s)
  return (s:gsub("^(.-)%s*$", "%1"))
end


