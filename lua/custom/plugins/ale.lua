return {
  'dense-analysis/ale',
  -- enable = false,
  config = function()
    local g = vim.g

    -- g.ale_ruby_rubocop_auto_correct_all = 1

    g.ale_linters = {
      -- ruby = { 'rubocop', 'ruby' },
      lua = { 'lua_language_server' },
      cs = { 'OmniSharp' },
      js = { 'biome' },
      css = { 'stylelint' },
    }
  end,
}
