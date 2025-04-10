return {
  {
    'catppuccin/nvim',
    priority = 1000,
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        color_overrides = {
          mocha = {
            base = '#161616',
            mantle = '#101010',
            crust = '#0d0d0d',
            yellow = '#e0cc9e',
          },
        },
        custom_highlights = function(colors)
          return {
            ['@lsp.type.interface.cs'] = { fg = colors.rosewater },
            ['@lsp.type.enum.cs'] = { fg = colors.rosewater },
            ['@lsp.type.struct.cs'] = { fg = colors.teal },
            ['@lsp.type.namespace.cs'] = { fg = colors.text },
            ['@lsp.type.property.cs'] = { fg = colors.text },
            ['@lsp.type.constant.cs'] = { fg = colors.sapphire },
          }
        end,
        integrations = {
          cmp = true,
          gitsigns = true,
          indent_blankline = true,
          mason = true,
          mini = {
            enabled = true,
          },
          neotree = true,
          neogit = true,
          native_lsp = {
            enabled = true,
            inlay_hints = {
              background = true,
            },
          },
          semantic_tokens = true,
          treesitter = true,
          rainbow_delimiters = true,
          telescope = {
            enabled = true,
          },
          which_key = true,
        },
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'mofiqul/vscode.nvim',
    priority = 1000,
    config = function()
      local c = require('vscode.colors').get_colors()
      local disableTreeBg = false

      require('vscode').setup {
        group_overrides = {
          ['@lsp.type.interface.cs'] = { fg = '#aacb8c' },
          ['@lsp.type.enum.cs'] = { fg = '#aacb8c' },
          ['@lsp.type.struct.cs'] = { fg = '#4ec95e' },
          ['@lsp.type.namespace.cs'] = { fg = 'white' },
          ['@lsp.type.property.cs'] = { fg = 'white' },
          ['@lsp.type.constant.cs'] = { link = 'Constant' },

          NeoTreeDirectoryName = { fg = c.vscFront, bg = 'NONE' },
          NeoTreeDirectoryIcon = { fg = c.vscViolet, bg = 'NONE' },
          NeoTreeRootName = { fg = c.vscFront, bg = 'NONE', bold = true },
          NeoTreeNormal = { fg = c.vscFront, bg = disableTreeBg and c.vscBack or c.vscLeftDark },
          NeoTreeNormalNC = { fg = c.vscFront, bg = disableTreeBg and c.vscBack or c.vscLeftDark },
          NeoTreeDimText = { fg = c.vscGray, bg = 'NONE' },
          NeoTreeVertSplit = { fg = disableTreeBg and c.vscSplitDark or c.vscBack, bg = c.vscBack },

          NeoTreeFileNameOpened = { fg = c.vscPink, bg = 'NONE' },
          NeoTreeTabActive = { fg = c.vscFront, bg = c.vscBack },
          NeoTreeTabInactive = { fg = c.vscGray, bg = c.vscLeftDark },
          NeoTreeIndentMarker = { fg = c.vscFront, bg = 'NONE' },
          NeoTreeModified = { fg = c.vscGitRenamed, bg = 'NONE' },

          NeoTreeGitIgnored = { fg = c.vscGitIgnored, bg = 'NONE' },
          NeoTreeGitDeleted = { fg = c.vscGitDeleted, bg = 'NONE' },
          NeoTreeGitStaged = { fg = c.vscGitStageModified, bg = 'NONE' },
          NeoTreeGitUnstaged = { fg = c.vscGitStageDeleted, bg = 'NONE' },
          NeoTreeGitUntracked = { fg = c.vscGitUntracked, bg = 'NONE' },
          NeoTreeGitAdded = { fg = c.vscGitAdded, bg = 'NONE' },
          NeoTreeGitModified = { fg = c.vscGitModified, bg = 'NONE' },
          NeoTreeGitConflict = { fg = c.vscGitConflicting, bg = 'NONE' },
        },
      }
    end,
  },
}
