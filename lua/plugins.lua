-- Autocommand that reloads neovim when you save plugins.lua
vim.cmd [[
    augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

packer = require('packer')

-- Have packer use a popup window
packer.init  {
    display = {
	open_fn = function()
	    return require('packer.util').float { border = 'rounded' }
	end,    
    },
}

-- Installs plugins
packer.startup(function()
    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'lunarvim/colorschemes'
end)
