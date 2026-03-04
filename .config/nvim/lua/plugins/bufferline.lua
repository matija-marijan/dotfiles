return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options.middle_mouse_command = function(n)
      Snacks.bufdelete(n)
    end
    -- optionally disable right-click closing:
    -- opts.options.right_mouse_command = false
  end,
}
