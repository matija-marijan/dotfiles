-- Follow symlinks; exclude large/irrelevant dirs from file finder and grep
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          -- fd uses --exclude
          files = {
            follow = true,
            args = {
              "--exclude", "miniconda3",
              "--exclude", "Zotero",
              "--exclude", "Downloads",
              "--exclude", "Pictures",
              "--exclude", "Videos",
            },
          },
          -- rg uses --glob
          grep = {
            follow = true,
            args = {
              "--glob", "!miniconda3",
              "--glob", "!Zotero",
              "--glob", "!Downloads",
              "--glob", "!Pictures",
              "--glob", "!Videos",
            },
          },
        },
      },
    },
  },
}
