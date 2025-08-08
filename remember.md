# Remember!!
## something
you can create keymaps to a callback and do whatever the hell you want!!
you can create keymaps to whatever sequence of characters you want and neovim seems to interpret them as if you typed them out manually!! eg:
```lua
  vim.keymap.set('n', '<f10>', ':ToggleTerm direction=float<CR>:lua print("hello from the toggi")<CR>')
```
## These are cool things I found in the neovim documentation that are worth remembering.
:set <vim option>& resets the vim option to its default value
eg. :set tabstop& resets tabstop to 8(the default value)
