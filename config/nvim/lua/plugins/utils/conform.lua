return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre', -- uncomment for format on save
    opts = {
      formatters = {
        prettier = {
          prepend_args = { '--single-quote' },
        },
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        css = { 'prettier' },
        html = { 'prettier' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        svelte = { 'prettier' },
        json = { 'prettier' },
        bash = { 'shfmt', 'shellcheck' },
        zsh = { 'shfmt', 'shellcheck' },
        sh = { 'shfmt', 'shellcheck' },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },

    config = function(_, opts)
      local conform = require('conform')
      conform.setup(opts)
      conform.formatters.prettier = {
        prepend_args = { '--prose-wrap', 'always' },
      }
    end,
  },
}
