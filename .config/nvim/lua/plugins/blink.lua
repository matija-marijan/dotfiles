return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = {
        "accept", -- accept blink.cmp popup selection if visible
        "select_next", -- or select next item in popup
        "snippet_forward", -- or advance snippet
        function(cmp) -- or accept copilot suggestion if visible
          if require("copilot.suggestion").is_visible() then
            require("copilot.suggestion").accept()
            return true
          end
        end,
        "fallback", -- otherwise: indent
      },
      ["<S-Tab>"] = false, -- disable blink.cmp, let default Neovim handle (unindent)
      ["<CR>"] = false, -- keep Enter as default (insert newline)
    },
  },
}
