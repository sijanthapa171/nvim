local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- 'user/repo'
  -- Themes
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  'folke/tokyonight.nvim',
  'Mofiqul/vscode.nvim',
  'navarasu/onedark.nvim',
  'ellisonleao/gruvbox.nvim',

  -- General
  {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.2',
  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      check_ts = true,
      ts_config = { java = false },
      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0,
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    lazy = true;
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      enabled = vim.g.icons_enabled,
      opts = {
        override = {
          deb = { icon = "", name = "Deb" },
          lock = { icon = "󰌾", name = "Lock" },
          mp3 = { icon = "󰎆", name = "Mp3" },
          mp4 = { icon = "", name = "Mp4" },
          out = { icon = "", name = "Out" },
          ["robots.txt"] = { icon = "󰚩", name = "Robots" },
          ttf = { icon = "", name = "TrueTypeFont" },
          rpm = { icon = "", name = "Rpm" },
          woff = { icon = "", name = "WebOpenFontFormat" },
          woff2 = { icon = "", name = "WebOpenFontFormat2" },
          xz = { icon = "", name = "Xz" },
          zip = { icon = "", name = "Zip" },
        },
      },
    },
  },
  { "max397574/better-escape.nvim", event = "InsertCharPre", opts = { timeout = 300 } },
  'folke/neodev.nvim',
  'nmac427/guess-indent.nvim',
  'numToStr/FTerm.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-treesitter/nvim-treesitter',
  'lukas-reineke/indent-blankline.nvim',
  'nvim-lualine/lualine.nvim',
  'tpope/vim-sleuth',
  

  -- Display keymaps
  --{
  --  "folke/which-key.nvim",
  --  event = "VeryLazy",
  --  init = function()
  --    vim.o.timeout = true
  --    vim.o.timeoutlen = 300
  --  end,
  --  opts = {}
  --},
  
  -- Git
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Languages
  'simrat39/rust-tools.nvim',

  -- Language server protocol
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
      'glepnir/lspsaga.nvim',
    },
  },
  

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
      -- 'github/copilot.vim',
    },
  },
}

local opts = {defaults = {lazy = true}}

require("lazy").setup(plugins, opts)