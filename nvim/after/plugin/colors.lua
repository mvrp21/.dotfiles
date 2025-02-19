function Colors(scheme)
    scheme = scheme or 'catppuccin-mocha'
    require('catppuccin').setup({
        flavour = 'mocha',
        transparent_background = true
    })
    vim.cmd.colorscheme(scheme)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
require ('colorizer').setup()
Colors()
