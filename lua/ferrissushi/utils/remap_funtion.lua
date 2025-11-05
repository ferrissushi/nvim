local M = {}
local keymap = vim.keymap

function M.nnoremap (new_map, old_map, description)
  return keymap.set("n", new_map, old_map, description)
end

function M.vnoremap (new_map, old_map, description)
  return keymap.set("v", new_map, old_map, description)
end

function M.xnoremap (new_map, old_map, description)
  return keymap.set("x", new_map, old_map, description)
end

function M.inoremap (new_map, old_map, description)
  return keymap.set("i", new_map, old_map, description)
end

return M
