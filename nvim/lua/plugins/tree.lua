local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

nvim_tree.setup {
  open_on_setup = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  view = {
    width = 32,
    hide_root_folder = true,
  },
  filters = {
    dotfiles = true,
    custom = { '.git', 'node_modules', '.cache', '.bin' },
  },
  git = {
    enable = true,
    ignore = true,
  },
  respect_buf_cwd = true,
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = true
      }
    }
  },
  renderer = {
    indent_markers = {
      enable = true
    },
    highlight_git = true,
    highlight_opened_files = 'icon',
    icons = {
      glyphs = {
        default = '‣ ',
      },
      show = {
        git = true,
        folder = true,
        file = true
      }
    }
  }
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)
map('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)
