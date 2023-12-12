require('nvim-tree').setup({
  renderer = {
    icons = {
      webdev_colors = false,
      git_placement = "before",
      modified_placement = "after",
      padding = " ",
      symlink_arrow = " -> ",
      show = {
        file = false,
        folder = true,
        folder_arrow = false,
        git = true,
        modified = true,
      },
      glyphs = {
        default = " ",
        symlink = "S",
        bookmark = "B",
        modified = "M",
        folder = {
          arrow_closed = ">",
          arrow_open = "v",
          default = ">",
          open = "v",
          empty = "-",
          empty_open = "=",
          symlink = "<",
          symlink_open = "^",
        },
        git = {
          unstaged = "!",
          staged = "+",
          unmerged = "X",
          renamed = "`",
          untracked = "?",
          deleted = "-",
          ignored = ".",
        },
      }
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
    debounce_delay = 50,
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.ERROR,
    },
    icons = {
      hint = "H",
      info = "I",
      warning = "W",
      error = "E",
    },
  }
})

local function open_nvim_tree(data)

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a real file on the disk
  local real_file = vim.fn.filereadable(data.file) == 1

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  -- change to the directory
  if directory or no_name then
    if directory then
      vim.cmd.cd(data.file)
    end

    -- open the tree
    require("nvim-tree.api").tree.open()
  else

    -- open the tree but don't focus it
    require("nvim-tree.api").tree.toggle({ focus = false })
  end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.g.nvim_tree_disable_netrw = 0
vim.g.nvim_tree_hijack_netrw = 0
