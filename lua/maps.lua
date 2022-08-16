local keymap = vim.keymap

keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
keymap.set('n', '<leader>fb', ':NeoTreeShow<CR>', { noremap = true })

--tabs
keymap.set('n', '<leader>bt', ':tabnext', { noremap = true })
keymap.set('n', '<leader>bT', ':tabprev', { noremap = true })
keymap.set('n', '<leader>bw', ':tabclose', { noremap = true })
keymap.set('n', '<leader>bn', ':tabnew<CR>', { noremap = true })

-- bufferline plugin (shows better tabsl)
keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true })
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true })

-- keymaps from cmp are in the after/plugin/cmp.lua file
-- keymaps from telescope are in the after/plugin/telescope.lua file

