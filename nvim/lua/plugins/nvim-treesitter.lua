require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    languages = {
      typescript = {
        comment = {
          padding = 1,
        },
      },
    },
  }
}

