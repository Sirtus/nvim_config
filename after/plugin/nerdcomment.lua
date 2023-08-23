vim.keymap.set('n', '<C-_>', ":call nerdcommenter#Comment('n', 'toggle')<CR>")
vim.keymap.set('v', '<C-_>', ":call nerdcommenter#Comment('v', 'toggle')<CR>")
vim.keymap.set('i', '<C-_>', "<Esc>:call nerdcommenter#Comment('n', 'toggle')<CR>")

