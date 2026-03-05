return {
  "folke/snacks.nvim",
  opts = {
    styles = {
      -- Style for regular terminal (Ctrl+/ toggle)
      terminal = {
        height = 0.325, -- Your desired small height
        position = "bottom", -- Bottom split
      },
      -- Style for lazygit (independent sizing)
      lazygit = {
        height = 0.9, -- Larger height for lazygit
        width = 0.9, -- Larger width for lazygit
        position = "float", -- Floating window
      },
    },
  },
}
