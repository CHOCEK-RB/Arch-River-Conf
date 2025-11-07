return {
  'zbirenbaum/copilot.lua',
  requires = {
    'copilotlsp-nvim/copilot-lsp',
  },
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup({})
    require('copilot.panel').accept()
    require('copilot.panel').jump_next()
    require('copilot.panel').jump_prev()
    require('copilot.panel').open({ position, ratio })
    require('copilot.panel').close()
    require('copilot.panel').toggle()
    require('copilot.panel').refresh()
    require('copilot.panel').is_open()

    require('cmp').event:on('menu_opened', function() vim.b.copilot_suggestion_hidden = true end)

    require('cmp').event:on('menu_closed', function() vim.b.copilot_suggestion_hidden = false end)
  end,
}
