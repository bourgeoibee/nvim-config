local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
    return
end

cmp.setup {
    snippet = {
	expand = function(args)
	    luasnip.lsp_expand(args.body)
	end,
    },
    mapping = cmp.mapping.preset.insert({
	['<C-k>'] = cmp.mapping.select_prev_item(),
	['<C-j>'] = cmp.mapping.select_next_item(),
	['<C-b>'] = cmp.mapping(cmp.mapping.scoll_docs(-1), { 'i', 'c' }),
	['<C-f>'] = cmp.mapping(cmp.mapping.scoll_docs(1), { 'i', 'c' }),
	['<C-y>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping {
	    i = cmp.mapping.abort(),
	    c = cmp.mapping.close(),
	},
	['<CR>'] = cmp.mapping.confirm,
	--['<Tab>'] = cmp.mapping(function(fallback)
	    --if cmp.visible() then
		--cmp.mapping.select_next_item()
	    --elseif luasnip.expand_or_jumpable() then
		--luasnip.expand_or_jump()
	    --else
		--fallback()
	    --end
	--end, { 'i', 's' }),
	--['<S-Tab>'] = cmp.mapping(function(fallback)
	    --if cmp.visible() then
		--cmp.mapping.select_prev_item()
	    --elseif luasnip.jumpable(-1) then
		--luasnip.jump(-1)
	    --else
		--fallback()
	    --end
	--end, { 'i', 's' }),

    }),
    sources = {
	{ name = 'nvim_lua' },
	{ name = 'nvim_lsp' },
	{ name = 'luasnip' },
	{ name = 'buffer', keyword_length = 5 },
	{ name = 'path' },
    },
    confirm_opts = {
	behavior = cmp.ConfirmBehavior.Replace,
	select = true,
    },
}

