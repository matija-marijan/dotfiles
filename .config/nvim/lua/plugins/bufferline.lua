return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    -- use middle mouse click to close buffer
    opts.options.middle_mouse_command = function(n)
      Snacks.bufdelete(n)
    end
    -- disable right mouse click
    opts.options.right_mouse_command = false

    -- filter out opencode buffers
    opts.options.custom_filter = function(buf_num, _)
      local buf_name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf_num), ":t")
      -- Hide opencode panel from bufferline
      if buf_name:match("^opencode") or buf_name:match("^OpenCode") then
        return false
      end
    end
  end,
}
