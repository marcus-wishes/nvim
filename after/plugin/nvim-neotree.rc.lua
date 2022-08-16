local status, neotree = pcall(require, "neo-tree")
if (not status) then return end

-- remove neo_tree_remove_legacy_commands
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError",
  {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
  {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
  {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
  {text = "", texthl = "DiagnosticSignHint"})

neotree.setup({
  default_component_configs = {
	container = {
      enable_character_fade = true
    },
	indent = {
	  ident_size = 4
	},
	window = {
	  position = "left" -- "left" or "right"
	}
  }
})
