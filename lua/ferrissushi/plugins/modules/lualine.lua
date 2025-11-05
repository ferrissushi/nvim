local icons = require("ferrissushi.utils.icons")
local palette = require("ferrissushi.plugins.modules.palette")

-- mode colors remain the same, but background will be dark
local mode_color_map = {
  n = palette.blue,
  i = palette.green,
  c = palette.yellow,
  t = palette.cyan,
  R = palette.red,
}

-- dark background for the entire lualine
local bg = palette.black
local fg_default = palette.white

return {
  mode = {
    "mode",
    fmt = function() return icons.neovim end,
    color = function()
      local mode = vim.fn.mode()
      return { fg = mode_color_map[mode] or palette.magenta, bg = bg }
    end,
  },

  branch = {
    "branch",
    icon = icons.branch,
    color = { fg = palette.green, bg = bg },
  },

  diff = {
    "diff",
    symbols = { added = "󰐕 ", modified = "󰜥 ", removed = "󰍴 " },
    color = { bg = bg },
  },

  filetype = {
    "bo:filetype",
    color = { fg = fg_default, bg = bg },
  },

  filesize = {
    "filesize",
    fmt = function(str) return str ~= "" and "(" .. str .. ")" end,
    color = { fg = palette.gray, bg = bg },
  },

  macro = {
    function() return vim.fn.reg_recording() end,
    icon = "REC:",
    color = function() return { fg = palette.red, bg = bg } end,
  },

  lsp_progress = function(state)
    return {
      function()
        local status = state.lsp_progress or {}
        local client = vim.lsp.get_clients({ id = status.client_id })[1]
        if not client then return "" end
        local value = status.params.value
        if value.kind ~= "report" then return "" end
        if #value.message > 20 then value.message = value.message:sub(1, 20) .. "..." end
        return string.format("[%s] %s (%s)", value.message, value.title, client.name)
      end,
      color = function() return { fg = palette.gray, bg = bg } end,
    }
  end,

  lsp = {
    function()
      local clients = vim.lsp.get_clients({ bufnr = 0 })
      if next(clients) == nil then return "" end
      local attached_clients = vim.tbl_map(function(client) return client.name end, clients)
      return table.concat(attached_clients, ", ")
    end,
    icon = icons.braces,
    color = function() return { fg = palette.gray, bg = bg } end,
  },

  diagnostics = {
    "diagnostics",
    color = { bg = bg },
  },

  encoding = {
    "encoding",
    color = { fg = palette.blue, bg = bg },
  },

  fileformat = {
    "fileformat",
    color = { fg = palette.blue, bg = bg },
  },

  indentation = {
    "indentation",
    fmt = function()
      local type = vim.bo[0].expandtab and "spaces" or "tabs"
      return type .. ": " .. vim.bo[0].shiftwidth
    end,
    color = { fg = palette.blue, bg = bg },
  },

  progress = {
    "progress",
    fmt = function(location) return vim.trim(location) end,
    color = { fg = palette.magenta, bg = bg },
  },

  location = {
    "location",
    fmt = function(location) return vim.trim(location) end,
    color = { fg = palette.magenta, bg = bg },
  },
}
