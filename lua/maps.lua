local keymap = vim.keymap

keymap.set('n', '<leader>ff', ':Telescope find_files', { noremap = true })
keymap.set('n', '<leader>fb', ':NeoTreeShow', { noremap = true })
