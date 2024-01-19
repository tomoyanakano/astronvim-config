return {
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {
          "javascript",
          "liquid",
          "typescriupt",
          "typescriptreact",
          "lua",
          "dart",
        },
      },
    },
    servers = {
      "dartls",
    },
    setup_handlers = {
      dartls = function(_, opts) require("flutter-tools").setup { lsp = opts } end,
    },
  },
  highlights = {
    init = {
      Normal = { bg = "NONE", ctermbg = "NONE" },
      NormalNC = { bg = "NONE", ctermbg = "NONE" },
      CursorColumn = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
      CursorLine = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
      CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
      LineNr = {},
      SignColumn = {},
      StatusLine = {},
      NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
      NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
    },
  },
  colorscheme = "catppuccin",
}
