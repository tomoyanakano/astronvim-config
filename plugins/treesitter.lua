return {
  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
        disable = { "dart" },
      },
    },
    config = function()
      local ts_autotag = require "nvim-ts-autotag"
      ts_autotag.setup {
        filetypes = {
          "html",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "svelte",
          "vue",
          "jsx",
          "tsx",
          "liquid",
          "lua",
        },
      }
    end,
    lazy = true,
    event = "VeryLazy",
  },
}
