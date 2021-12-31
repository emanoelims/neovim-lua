local status_ok, treesitter = pcall (require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

treesitter.setup {
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    'lua',
    'vim',
    'tsx',
    'css',
    'java',
    'html',
    'scss',
    'clojure',
    'javascript',
  }
}
