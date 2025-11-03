
local keymap = vim.keymap

local nnoremap = function(new_map, old_map)
  return keymap.set("n", new_map, old_map)
end

local vnoremap = function (new_map, old_map)
  return keymap.set("v", new_map, old_map)
end

local xnoremap = function (new_map, old_map)
  return keymap.set("x", new_map, old_map)
end

local inoremap = function (new_map, old_map)
  return keymap.set("i", new_map, old_map)
end

return {
  nnoremap, vnoremap, xnoremap, inoremap
}
