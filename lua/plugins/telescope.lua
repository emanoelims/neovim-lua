local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

telescope.setup {
  defaults = {
    file_ignore_patterns = {'node_modules', 'dist'}
  }
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<Leader><Leader>", ":Telescope find_files<CR>", opts)
map("n", "<C-p>", ":Telescope buffers<CR>", opts)
