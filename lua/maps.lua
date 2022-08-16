local keymap = vim.keymap

keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
keymap.set('n', '<leader>fb', ':NeoTreeShow<CR>', { noremap = true })

-- tabs
keymap.set('n', '<leader>bt', ':tabnext<CR>', { noremap = true }) -- next tab
keymap.set('n', '<leader>bT', ':tabprev<CR>', { noremap = true }) -- prev tab
keymap.set('n', '<leader>bw', ':tabclose<CR>', { noremap = true }) -- close current tab
keymap.set('n', '<leader>bn', ':tabnew<CR>', { noremap = true }) -- new tab

-- splits
keymap.set('n', '<leader>sp', ':sp', { noremap = true }) -- split horizontally
keymap.set('n', '<leader>sv', ':vsp', { noremap = true }) -- split vertically
keymap.set('n', '<leader>*', ':resize +5<CR>', { noremap = true }) -- grow split horizontally
keymap.set('n', '<leader>_', ':resize -5<CR>', {noremap = true}) -- shrink split horizontally
keymap.set('n', '<leader>+', ':vertical resize +5<CR>', {noremap = true}) -- shrink split vertically
keymap.set('n', '<leader>-', ':vertical resize -5<CR>', {noremap = true}) -- resize to equal size


-- bufferline plugin (shows better tabs)
keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true }) -- next tab
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true }) -- prev tab

-- keymaps from cmp are in the after/plugin/cmp.lua file
-- keymaps from telescope are in the after/plugin/telescope.lua file

-- switch material color schema
keymap.set('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })
