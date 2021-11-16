local theme = require('spacegray.theme')
local spacegray = {}

function highlight(group, color)
    if color.link then
      vim.cmd('highlight! link ' .. group .. ' ' .. color.link)
    else
      local style = color.style and 'gui=' .. color.style or 'gui=NONE'
      local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
      local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
      local sp = color.sp and 'guisp=' .. color.sp or ''
      local hi = 'highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp
      vim.cmd(hi)
    end
end

function spacegray.colorscheme()
  -- initialize scheme
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'spacegray'

  local theme = theme.setup()

  -- set base highlights from theme
  for group, color in pairs(theme.base) do
    highlight(group, color)
  end

  -- set highlights for configured plugins
  -- FIXME: make these configurable
  for group, color in pairs(theme.plugins.lsp) do
    highlight(group, color)
  end

  for group, color in pairs(theme.plugins.treesitter) do
    highlight(group, color)
  end

  -- TODO: handle vim.g.terminal_colors
end

return spacegray
