" Theme: spacegray
" Author: NAlexPear
" License: MIT
" Source: https://github.com/NAlexPear/Spacgray.nvim

" FIXME: remove this outside of development
lua package.loaded['spacegray.colors'] = nil
lua package.loaded['spacegray.theme'] = nil
lua package.loaded['spacegray'] = nil

lua require('spacegray').colorscheme()
