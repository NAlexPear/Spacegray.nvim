local M = {}

function M.setup()
  local colors = {}

  -- base16-style colors based on Spacegray.vim
  -- https://github.com/ackyshake/Spacegray.vim/blob/main/colors/spacegray.vim
  colors = {
    background = '#111314',
    foreground = '#b7bbb7',
    black = '#2c2f33',
    gray = '#4b5056',
    darkgray = '#171a1c',
    lightgray = '#808080',
    red = '#b04c50',
    pink = '#cc6666',
    green = '#919652',
    lightgreen = '#95b47b',
    yellow = '#e2995c',
    darkyellow = '#ffaf00',
    lightyellow = '#e5C078',
    orange = '#c5735e',
    blue = '#66899d',
    lightblue = '#85a7a5',
    bluegray = '#7d8fa3',
    magenta = '#8d6494',
    lilac = '#a57a9e',
    cyan = '#527c77',
    white = '#dde3dc'
  }

  return colors
end

return M
