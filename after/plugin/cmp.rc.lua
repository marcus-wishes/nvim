local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end 

cmp.setup({
  window = {
    completion = {
      border = border "CmpBorder",
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
	  autocomplete = false,
    },
    documentation = {
      border = border "CmpDocBorder",
    },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
	{ name = 'copilot', group_index = 2 },
    { name = 'nvim_lsp', group_index = 2 },
    { name = 'buffer' },
	{ name = 'path', group_index = 2 },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  },
  sorting = {
	priority_weight = 2,
    comparators = {
      require("copilot_cmp.comparators").prioritize,
      require("copilot_cmp.comparators").score,

      -- Below is the default comparitor list and order for nvim-cmp
      cmp.config.compare.offset,
      -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
      cmp.config.compare.exact,
      cmp.config.compare.score,
      cmp.config.compare.recently_used,
      cmp.config.compare.locality,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    }
  }
})

--[[
vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
--]]
