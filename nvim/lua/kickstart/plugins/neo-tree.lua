-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree toggle left reveal<CR>', desc = 'Toggle NeoTree', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = false, -- set true to show hidden files by default
      },
      window = {
        position = 'left',
        width = 30,
        mappings = {
          ['\\'] = 'close_window',
          ['H'] = 'toggle_hidden',
          ['V'] = 'open_vsplit',
          ['S'] = 'open_split',
        },
      },
    },
    git_status = {
      window = { position = 'float' },
    },
  },
}
