return {
  'slugbyte/lackluster.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    local lackluster = require 'lackluster'

    local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9

    -- !must called setup() before setting the colorscheme!
    lackluster.setup {
      -- You can overwrite the following syntax colors by setting them to one of...
      --   1) a hexcode like "#a1b2c3" for a custom color.
      --   2) "default" or nil will just use whatever lackluster's default is.
      tweak_syntax = {
        -- string = 'default',
        -- -- string = "#a1b2c3", -- custom hexcode
        -- -- string = color.green, -- lackluster color
        -- string_escape = 'default',
        -- comment = 'default',
        -- builtin = 'default', -- builtin modules and functions
        -- type = 'default',
        -- keyword = 'default',
        -- keyword_return = 'default',
        -- keyword_exception = 'default',
      },
      -- You can overwrite the following background colors by setting them to one of...
      --   1) a hexcode like "#a1b2c3" for a custom color
      --   2) "none" for transparency
      --   3) "default" or nil will just use whatever lackluster's default is.
      tweak_highlight = {
        -- modify @keyword's highlights to be bold and italic
        -- ['@keyword'] = {
        --   overwrite = false, -- overwrite falsey will extend/update lackluster's defaults (nil also does this)
        --   -- bold = true,
        --   -- italic = true,
        --   -- see `:help nvim_set_hl` for all possible keys
        -- },

        -- ['@function'] = {
        --   overwrite = true, -- overwrite == true will force overwrite lackluster's default highlights
        --   link = '@keyword',
        -- },
      },
      tweak_background = {
        -- normal = 'default', -- main background
        -- normal = 'none',    -- transparent
        -- normal = '#a1b2c3',    -- hexcode
        normal = '#000000', -- hexcode
        -- normal = color.green,    -- lackluster color
        telescope = '#000000', -- telescope
        menu = '#000000', -- nvim_cmp, wildmenu ... (bad idea to transparent)
        popup = '#000000', -- lazy, mason, whichkey ... (bad idea to transparent)
      },
    }

    -- !must set colorscheme after calling setup()!
    -- vim.cmd.colorscheme 'lackluster-hack'
  end,
}
