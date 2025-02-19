local langservers = { 'ts_ls', 'clangd', 'lua_ls', 'eslint', 'markdown_oxide' }
require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = langservers
})

local lspconfig = require('lspconfig')

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in ipairs(langservers) do
    lspconfig[lsp].setup({
        capabilities = capabilities,
        -- After some tinkering I've decided I don't like the text changing when I save the file
        -- If I want to format it for now I'll do it by calling the command itself (probably a <C-f remap)
        -- on_attach = function(client)
        --     -- FIXME: should only be called on files that this lsp is running on...
        --     if client.supports_method("textDocument/formatting") then
        --         vim.api.nvim_create_autocmd("BufWritePre", {
        --             callback = function()
        --                 vim.lsp.buf.format()
        --             end
        --         })
        --     end
        -- end
    })
end


-- autocompletion (defaults, pretty much)
local cmp = require 'cmp'
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
        ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
        -- C-b (back) C-f (forward) for snippet placeholder navigation.
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = {
        { name = 'nvim_lsp' },
    },
})

-- LSP keymaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
-- vim.keymap.set('n', '<leader>s', vim.lsp.buf.rename) already have this one, and changing a single file is less catastrophic
vim.keymap.set('n', '<C-f>', vim.lsp.buf.format)
