local keymap = vim.keymap

-- keymap.set('n', '<leader>fd', ':Telescope find_directories<CR>', { noremap = true })
-- keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>', { noremap = true })
-- keymap.set('n', '<leader>fb', ':NeoTreeShow<CR>', { noremap = true })

-- tabs
-- keymap.set('n', '<leader>bt', ':tabnext<CR>', { noremap = true }) -- next tab
-- keymap.set('n', '<leader>bT', ':tabprev<CR>', { noremap = true }) -- prev tab
-- keymap.set('n', '<leader>bw', ':tabclose<CR>', { noremap = true }) -- close current tab
-- keymap.set('n', '<leader>bn', ':tabnew<CR>', { noremap = true }) -- new tab

-- splits
-- keymap.set('n', '<leader>sp', ':sp', { noremap = true }) -- split horizontally
-- keymap.set('n', '<leader>sv', ':vsp', { noremap = true }) -- split vertically
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
-- keymap.set('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

-- trouble plugin for showing troublesome lines
-- keymap.set('n', '<leader>xx', ':Trouble<CR>', { noremap = true })
-- keymap.set('n', '<leader>xX', ':TroubleClose<CR>', { noremap = true })
-- keymap.set('n', '<leader>xw', ':Trouble workspace_diagnostics<CR>', { noremap = true })
-- keymap.set('n', '<leader>xd', ':Trouble document_diagnostics<CR>', { noremap = true })
-- keymap.set('n', '<leader>xq', ':Trouble quickfix<CR>', { noremap = true })
-- keymap.set('n', '<leader>xr', ':Trouble refactor<CR>', { noremap = true })
-- keymap.set('n', '<leader>xl', ':Trouble loclist<CR>', { noremap = true })
-- keymap.set('n', '<leader>xg', ':Trouble goto<CR>', { noremap = true })
-- keymap.set('n', '<leader>xR', ':Trouble lsp_references<CR>', { noremap = true })


-- goto preview floating window
-- keymap.set('n', '<leader>gpd', [[<Cmd>lua require('goto-preview').goto_preview_definition()<CR>]], { noremap = true })
-- keymap.set('n', '<leader>gpt', [[<Cmd>lua require('goto-preview').goto_preview_type_definition()<CR>]], { noremap = true })
-- keymap.set('n', '<leader>gpi', [[<Cmd>lua requore('goto-preview').goto_preview_implementation()<CR>]], { noremap = true })
-- keymap.set('n', '<leader>gpx', [[<Cmd>lua require('goto-preview').close_all_win()<CR>]], { noremap = true })

-- lsp config management
-- lsp config keymaps
-- keymap.set('n', '<leader>dd', vim.diagnostic.open_float, { noremap = true })
-- keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts, { noremap = true})
-- keymap.set('n', '<leadeer>dn', vim.diagnostic.goto_next, opts, { noremap = true})
-- keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { noremap = true})

-- create which-key help mappings
local whichkey = require('which-key')
whichkey.register({
	f = {
		name = "file (telescope)", -- group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
	    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" }, -- additional options for creating the keymap
		d = { "<cmd>Telescope find_directories<cr>", "Find Directory" },
		b = { "<cmd>NeoTreeShow<cr>", "File Browser" },
	},
	m = {
		name = "material-theme",
		m = { "<cmd>lua require('material.functions').toggle_style()<cr>", "Toggle Material Theme" },
	},
	b = {
		name = "buffers",
		t = { "<cmd>tabnext<cr>", "Next Tab" },
		T = { "<cmd>tabprev<cr>", "Previous Tab" },
		w = { "<cmd>tabclose<cr>", "Close Tab" },
		n = { "<cmd>tabnew<cr>", "New Tab" },
	},
	s = {
		name = "split",
		p = { "<cmd>sp<cr>", "Split Horizontally" },
		v = { "<cmd>vsp<cr>", "Split Vertically" },
	},
	g = {
		name = "goto-preview",
		d = { "<cmd>lua require('goto-preview').goto_preview_definition()<cr>", "Goto Definition" },
		t = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>", "Goto Type Definition" },
		i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>", "Goto Implementation" },
		w = { "<cmd>lua require('goto-preview').close_all_win()<cr>", "Close All Preview Windows" },
		r = { "<cmd>lua require('goto-preview').goto_preview_references()<cr>", "Goto References" },
	},
	--[[ doesnt work, and i dont know why
	l = {
		name = "diagnostics",
		d = { "<cmd>lua vim.diagnostic.open_float(0, { scope = 'line', border = 'single' })<cr>", "Open Diagnostics" },
		e = { "<cmd>lua vim.lsp.diagnostic.open_float(0, { scope = 'line', border = 'single' })<cr>", "Open Diagnostics" },
		p = { "vim.diagnostic.goto_prev", "Previous Diagnostic" },
		n = { "vim.diagnostic.goto_next", "Next Diagnostic" },
		l = { "vim.diagnostic.setloclist", "Set Diagnostic Loclist" },
	}, --]]
	t = { 
		name= "tabs",
		t = { "<cmd>tabnext<cr>", "Next Tab" },
		T = { "<cmd>tabprev<cr>", "Previous Tab" },
	},
	x = {
		name = "trouble-diagnostics",
		x = { ":Trouble<CR>", "Trouble" },
		X = { ":TroubleClose<CR>", "Trouble Close" },
		w = { ":Trouble workspace_diagnostics<CR>", "Trouble Workspace Diagnostics" },
		d = { ":Trouble document_diagnostics<CR>", "Trouble Document Diagnostics" },
		q = { ":Trouble quickfix<CR>", "Trouble Quickfix" },
		f = { ":Trouble refactor<CR>", "Trouble Refactor (format)" },
		l = { ":Trouble loclist<CR>", "Trouble Loclist" },
		r = { ":Trouble lsp_references<CR>", "Trouble Lsp References" },
	}
}, {
	prefix = "<leader>",
	noremap = true, -- don't remap the keys
	mode = 'n', -- only map in normal mode
})
