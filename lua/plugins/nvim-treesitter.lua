require('nvim-treesitter.configs').setup {
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
