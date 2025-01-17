return {{
  "rebelot/kanagawa.nvim",
  config = function()
      require('kanagawa').setup({
          colors = {
              theme = {
                  all = {
                      ui = {
                          bg_gutter = "none"
                      }
                  }
              }
          },
          overrides = function(colors)
              local theme = colors.theme
              local c = require("kanagawa.lib.color")

              -- Helper function for diagnostic virtual text colors
              local makeDiagnosticColor = function(color)
                  return {
                      fg = color,
                      bg = c(color):blend(theme.ui.bg, 0.95):to_hex(),
                  }
              end

              -- Return the overrides
              return {
                  -- Telescope Customization
                  TelescopeTitle = { fg = theme.ui.special, bold = true },
                  TelescopePromptNormal = { bg = theme.ui.bg_p1 },
                  TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
                  TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
                  TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
                  TelescopePreviewNormal = { bg = theme.ui.bg_dim },
                  TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

                  -- Pmenu Customization
                  Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                  PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                  PmenuSbar = { bg = theme.ui.bg_m1 },
                  PmenuThumb = { bg = theme.ui.bg_p2 },

                  -- Diagnostic Virtual Text Customization
                  DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
                  DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
                  DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
                  DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
              }
          end
      })
      vim.cmd("colorscheme kanagawa") -- Set the colorscheme
  end
}}
