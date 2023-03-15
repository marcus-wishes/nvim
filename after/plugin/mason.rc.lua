local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = { "tailwindcss", "lua_ls", "astro", "bashls", "cssmodules_ls", "dockerls", "docker_compose_language_service", "gradle_ls", "jdtls", "jsonls", "tsserver", "kotlin_language_server", "texlab", "marksman", "prismals", "pyre", "sqlls", "svelte", "taplo", "yamlls", "vuels" },
}
