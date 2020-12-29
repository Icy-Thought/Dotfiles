-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- You can alias plugin names
  use {'challenger-deep-theme/vim', as = 'challenger-deep'}

  -- General
  use 'itchyny/lightline.vim'
  -- Adds a default start-page.
  use 'mhinz/vim-startify'
  -- Git-wrapper
  use 'tpope/vim-fugitive'
  -- Git branch viewer
  use 'rbong/vim-flog'
  use 'mcchrish/nnn.vim'
  use 'sirver/ultisnips'
  
  -- Code Formatting
  use 'jiangmiao/auto-pairs'
  -- Quoting/Paranthesizing made simple!
  use 'tpope/vim-surround'
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-characterize'
  use 'tpope/vim-speeddating'
  
  -- Neovim Built in LSP
  use {'neovim/nvim-lspconfig', opt =  true}
  use {'tjdevries/lsp_extensions.nvim', opt = true}
  use {'nvim-lua/completion-nvim', opt = true}
  use {'norcalli/nvim-colorizer.lua', opt = true}
  use {'tjdevries/nlua.nvim', opt = true}
  use {'nvim-lua/lsp-status.nvim', opt = true}
  
  -- Markdown + LaTeX
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Statusline
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require'internal.spaceline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

end)
