local vim = vim

local mapping = setmetatable({}, { __index = { vim = {},plugin = {} } })

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

function mapping:load_vim_define()
  self.vim= {
    -- Vim map
    ["n|<C-x>k"]     = map_cr('Bdelete'):with_noremap():with_silent(),
    ["n|<C-s>"]      = map_cu('write'):with_noremap(),
    ["n|Y"]          = map_cmd('y$'),
    ["n|]w"]         = map_cu('WhitespaceNext'):with_noremap(),
    ["n|[w"]         = map_cu('WhitespacePrev'):with_noremap(),
    ["n|]b"]         = map_cu('bp'):with_noremap(),
    ["n|[b"]         = map_cu('bn'):with_noremap(),
    ["n|<C-w>["]     = map_cr('vertical resize -5'),
    ["n|<C-w>]"]     = map_cr('vertical resize +5'),
  -- Insert
    ["i|<C-h>"]      = map_cmd('<BS>'):with_noremap(),
    ["i|<C-d>"]      = map_cmd('<Del>'):with_noremap(),
    ["i|<C-k>"]      = map_cmd('<ESC>d$a'):with_noremap(),
    ["i|<C-u>"]      = map_cmd('<C-G>u<C-U>'):with_noremap(),
    ["i|<C-b>"]      = map_cmd('<Left>'):with_noremap(),
    ["i|<C-f>"]      = map_cmd('<Right>'):with_noremap(),
    ["i|<C-a>"]      = map_cmd('<ESC>^i'):with_noremap(),
    ["i|<C-o>"]      = map_cmd('<Esc>o'):with_noremap(),
    ["i|<C-s>"]      = map_cmd('<Esc>:w<CR>'),
    ["i|<C-q>"]      = map_cmd('<Esc>:wq<CR>'),
  -- Package management
    ["n|vd"]        = map_cmd('PackCompile')
    ["n|vp"]        = map_cmd('PackUpdate')
    ["n|vs"]        = map_cmd('PackSync')
  }
end

function mapping:load_plugin_define()
  self.plugin = {
    ["n|gb"]             = map_cr("BufferLinePick"):with_noremap():with_silent(),
    -- Lsp mapp work when insertenter and lsp start
    ["n|[e"]             = map_cmd("<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>"):with_noremap():with_silent(),
    ["n|]e"]             = map_cmd("<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>"):with_noremap():with_silent(),
    ["n|K"]              = map_cmd("<cmd>lua vim.lsp.buf.hover()<CR>"):with_noremap():with_silent(),
    ["n|ga"]             = map_cmd("<cmd>lua vim.lsp.buf.code_action()<CR>"):with_noremap():with_silent(),
    ["n|gd"]             = map_cmd("<cmd>lua require'lspsaga.provider'.preview_definiton()<CR>"):with_noremap():with_silent(),
    ["n|gD"]             = map_cmd("<cmd>lua vim.lsp.buf.implementation()<CR>"):with_noremap():with_silent(),
    ["n|gs"]             = map_cmd("<cmd>lua vim.lsp.buf.signature_help()<CR>"):with_noremap():with_silent(),
    ["n|gr"]             = map_cmd("<cmd>lua vim.lsp.buf.references()<CR>"):with_noremap():with_silent(),
    ["n|gh"]             = map_cmd("<cmd>lua require'lspsaga.provider'.lsp_finder({definition_icon='  ',reference_icon = '  '})<CR>"):with_noremap():with_silent(),
    ["n|gt"]             = map_cmd("<cmd>lua vim.lsp.buf.type_definition()<CR>"):with_noremap():with_silent(),
    ["n|<Leader>cw"]     = map_cmd("<cmd>lua vim.lsp.buf.workspace_symbol()<CR>"):with_noremap():with_silent(),
    ["n|<Leader>ce"]     = map_cmd("<cmd>lua require'lspsaga.diagnostic'.show_buf_diagnostics()<CR>"):with_noremap():with_silent(),
    ["n|<Leader>ct"]      = map_args("Template"),
		   -- Plugin MarkdownPreview
    ["n|<Leader>om"]     = map_cu('MarkdownPreview'):with_noremap():with_silent(),
		  };
end

local function load_mapping()
  mapping:load_vim_define()
  mapping:load_plugin_define()
end

load_mapping()
