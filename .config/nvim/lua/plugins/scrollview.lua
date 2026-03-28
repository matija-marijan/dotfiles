return {
  "dstein64/nvim-scrollview",
  event = "BufReadPost",
  config = function()
    require("scrollview").setup({
      excluded_filetypes = {
        "prompt", "TelescopePrompt", "noice", "notify", "lazy",
        "NvimTree", "neo-tree", "blink-cmp-menu", "dropbar_menu"
      },
      signs_on_startup = { "diagnostics", "search" },
      current_only = false,
      winblend = 30,
    })
  end,
}
