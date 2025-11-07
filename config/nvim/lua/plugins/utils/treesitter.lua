return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      highlight = { enable = {} },
      additional_vim_regex_highlighting = false,
      indent = { enable = true },

      ensure_installed = {
        'c',
        'bash',
        'vim',
        'lua',
        'vimdoc',
        'html',
        'css',
        'python',
        'php',
        'cpp',
        'java',
        'svelte',
        'typescript',
        'javascript',
        'rust',
        'xml',
        'yaml',
        'yuck',
        'typst',
      },
    })
  end,
}
