local status, go = pcall(require, "go")
if (not status) then return end

go.setup {
}

-- formatting and goimport
require("go.format").goimport()  -- goimport + gofmt

-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)