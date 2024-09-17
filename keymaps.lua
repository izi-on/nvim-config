-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local cmp = require("cmp")
-- He

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm()
      else
        fallback()
      end
    end, { "i", "s" }),

    -- Disable the default <CR> mapping
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        fallback()
      else
        fallback()
      end
    end),
  },
})
