return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'mason-org/mason.nvim',
    'mason-org/mason-lspconfig.nvim',

    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local border = {
      { '┌', 'FloatBorder' },
      { '─', 'FloatBorder' },
      { '┐', 'FloatBorder' },
      { '│', 'FloatBorder' },
      { '┘', 'FloatBorder' },
      { '─', 'FloatBorder' },
      { '└', 'FloatBorder' },
      { '│', 'FloatBorder' },
    }

    local handlers = {
      ['textDocument/hover'] = vim.lsp.buf.hover({ border = border, max_height = 25 }),
      ['textDocument/signatureHelp'] = vim.lsp.buf.signature_help({ border = border, max_height = 25 }),
    }

    local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
    for type, icon in pairs(signs) do
      local hl = 'DiagnosticSign' .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    vim.diagnostic.config({
      virtual_text = true,
      signs = { active = signs },
      float = { border = 'single' },
      underline = true,
      update_in_insert = true,
      severity_sort = true,
    })

    require('cmp').setup({
      window = {
        completion = require('cmp').config.window.bordered(),
        documentation = require('cmp').config.window.bordered(),
      },
    })

    local on_attach = function(_, bufnr)
      local keymap = vim.keymap.set
      local opts = { buffer = bufnr }

      keymap('n', 'K', vim.lsp.buf.hover, opts)
      keymap('n', 'gd', vim.lsp.buf.definition, opts)
      keymap('n', 'gr', vim.lsp.buf.references, opts)
      keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
      keymap('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      keymap('n', '[d', vim.diagnostic.get_prev, opts)
      keymap('n', ']d', vim.diagnostic.get_next, opts)
    end

    require('mason-lspconfig').setup({
      ensure_installed = {
        'lua_ls',
        'ts_ls',
        'html',
        'cssls',
        'jsonls',
        'pyright',
        'rust_analyzer',
        'phpactor',
        'clangd',
        'svelte',
        'jdtls',
        'tinymist',
        'tailwindcss',
        'bashls',
      },
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({
            on_attach = on_attach,
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            handlers = handlers,
          })
        end,
      },
    })

    vim.lsp.config('lua_ls', {
      on_attach = on_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities(),
      handlers = handlers,
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              'vim',
              'require',
            },
          },
          runtime = { version = 'LuaJIT' },
          workspace = {
            library = {
              vim.fn.expand('$VIMRUNTIME/lua'),
              '${3rd}/luv/library',
            },
          },
        },
      },
    })
    vim.lsp.config('svelte', {
      filetypes = { 'svelte' },
      on_attach = function(client, bufnr)
        if client.name == 'svelte' then
          vim.api.nvim_create_autocmd('BufWritePost', {
            pattern = { '*.js', '*.ts', '*.svelte' },
            callback = function(ctx) client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.file }) end,
          })
        end
        if vim.bo[bufnr].filetype == 'svelte' then
          vim.api.nvim_create_autocmd('BufWritePost', {
            pattern = { '*.js', '*.ts', '*.svelte' },
            callback = function(ctx) client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.file }) end,
          })
        end
      end,
    })

    vim.lsp.config('tinymist', {
      on_attach = function(client, bufnr)
        vim.keymap.set(
          'n',
          '<leader>tp',
          function()
            client:exec_cmd({
              title = 'pin',
              command = 'tinymist.pinMain',
              arguments = { vim.api.nvim_buf_get_name(0) },
            }, { bufnr = bufnr })
          end,
          { desc = '[T]inymist [P]in', noremap = true }
        )

        vim.keymap.set(
          'n',
          '<leader>tu',
          function()
            client:exec_cmd({
              title = 'unpin',
              command = 'tinymist.pinMain',
              arguments = { vim.v.null },
            }, { bufnr = bufnr })
          end,
          { desc = '[T]inymist [U]npin', noremap = true }
        )
      end,

      settings = {
        formatterMode = 'typstyle',
        exportPdf = 'onType',
        semanticTokens = 'disable',
      },
    })

    vim.lsp.config('plantuml_lsp', {
      cmd = {
        '/home/CHOCEK/go/bin/plantuml-lsp',
        '--stdlib-path=/home/CHOCEK/go/bin/plantuml-lsp',
        '--exec-path=plantuml',
      },
      filetypes = { 'plantuml' },
      root_dir = function(fname)
        return vim.lsp.config.util.find_git_ancestor(fname) or vim.lsp.config.util.path.dirname(fname)
      end,
      settings = {},
    })
  end,
}
