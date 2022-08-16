local status, mattheme = pcall(require, "material")
if (not status) then return end

mattheme.setup({
	contrast = {
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = true, -- Enable contrast background for the sign column
		cursor_line = true, -- Enable darker background for the cursor line
		non_current_windows = true, -- Enable darker background for non-current windows
		popup_menu = true, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = true, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},
})
 
vim.cmd('colorscheme material')
