return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function() end,
        },
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
            },
          },
        },
      },
      ruff = {
        on_attach = function(client, bufnr)
          client.server_capabilities.hoverProvider = false
        end,
      },
    },
  },
}
