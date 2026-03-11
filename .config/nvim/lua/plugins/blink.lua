return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "accept", "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = false, -- disable blink.cmp, let default Neovim handle (unindent)
      ["<CR>"] = false, -- keep Enter as default (insert newline)
    },
  },
}
