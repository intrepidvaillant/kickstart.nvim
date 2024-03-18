return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_enabled = 1
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = false
    vim.api.nvim_exec([[iunmap <Tab>]], false)
    vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', {
      silent = true,
      expr = true,
      replace_keycodes = false,
    })
    vim.api.nvim_set_keymap('i', '<C-Space>', 'copilot#Trigger()', {
      silent = true,
      expr = true,
    })
    vim.g.copilot_filetypes = {
      ['*'] = false,
      ['lua'] = true,
      ['go'] = true,
      ['python'] = true,
    }
  end,
}
