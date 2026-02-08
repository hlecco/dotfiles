" General configurations
set relativenumber
set numberwidth=2


" ALE configuration
let g:ale_python_flake8_executable = 'pflake8'
let g:ale_python_flake8_change_directory = 'file'
let g:ale_python_flake8_use_global = 1


" Load plugins
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'

Plug 'ericbn/vim-solarized'

Plug 'github/copilot.vim'

Plug 'echasnovski/mini.nvim'
Plug 'MeanderingProgrammer/render-markdown.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'olimorris/codecompanion.nvim'

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'petertriho/cmp-git'
Plug 'lukas-reineke/cmp-rg'

call plug#end()


" Set up theme
source ~/.config/nvim/theme.vim


" Copilot keybindings
inoremap <C-l> <Plug>(copilot-accept-line)
inoremap <C-j> <Plug>(copilot-next)
inoremap <C-k> <Plug>(copilot-previous)
inoremap <C-h> <Plug>(copilot-dismiss)
inoremap <C-Space> <Plug>(copilot-suggest)

" CodeCompanion keybindings
nnoremap ci :CodeCompanion #buffer 
vnoremap ci :CodeCompanion #buffer 
nnoremap cc :CodeCompanionChat Toggle<CR>

" fzf.vim
inoremap <expr> <F1> fzf#vim#complete({'source': map(complete_info().items, "v:val.word")})


" nvim-cmp
lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      --['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    formatting = {
      format = function(entry, vim_item)
        vim_item.menu = entry.source.name
        return vim_item
      end,
		},
		matching = {
			disallow_fuzzy_matching = false,
		},
		performance = {
			max_view_entries = 5,
		},
    sources = cmp.config.sources({
			{ name = 'buffer', group_index = 1 },
			{ name = 'path', group_index = 1 },
			{ name = 'rg', group_index = 2 },
    })
  })

  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
   })
   require("cmp_git").setup()

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })


  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
	local lspconfig = require('lspconfig')
	--lspconfig.pyright.setup {
  --  capabilities = capabilities
  --}
EOF


lua << EOF
	require("codecompanion").setup({
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
    },
  })
EOF

lua << EOF
	require("render-markdown").setup({
	  heading = {
			enabled = true,
			backgrounds = {
            'Title',
            'Title',
            'Title',
            'Title',
            'Title',
            'Title',
        },
        foregrounds = {
            'Title',
            'Title',
            'Title',
            'Title',
            'Title',
            'Title',
        }
		}
  })
