local options = {
    expandtab = false,
    softtabstop = 4,
    shiftwidth = 4,

    completeopt = { "menu", "menuone", "noselect" },

--vim.opt.cursorline = true,
    number = true,

    incsearch = true,
    hlsearch = true,

    errorbells = false,

    scrolloff = 8,

    wrap = false,

    smartindent = true,

    updatetime = 300,

    termguicolors = true,
}

for option, value in pairs(options) do
    vim.opt[option] = value
end
