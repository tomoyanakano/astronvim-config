return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {},
        dartls = {},
      },
      setup = {
        eslint = function()
          require("lazyvim.util").on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "BufRead",
    noremap = true,
    silent = true,
    config = function()
      local keymap = vim.keymap
      keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
      keymap.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>")
      keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
      keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>")
      keymap.set("n", "gn", "<cmd>Lspsaga rename<CR>")
      keymap.set("n", "ge", "<cmd>Lspsaga show_line_diagnostics<CR>")
      keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
      keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
      keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>")
      -- vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>")
      keymap.set("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]])
    end,
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup {
        fvm = true,
      }
    end,
  },
}
