local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.api.nvim_create_user_command
local namespace = vim.api.nvim_create_namespace

local utils = require "astronvim.utils"
local is_available = utils.is_available

autocmd({ "InsertLeave" }, {
  pattern = { "*" },
  callback = function()
    local status = vim.fn.system "im-select"
    if status ~= "com.apple.keylayout.ABC" then vim.fn.system "im-select com.apple.keylayout.ABC" end
  end,
})
