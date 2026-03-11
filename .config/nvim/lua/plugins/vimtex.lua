return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_compiler_latexmk = {
      out_dir = 'out',
    }
  end,
}
