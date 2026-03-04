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
      local buf_name = vim.fn.bufname(buf_num)
      if buf_name and buf_name:match("opencode %-%-port") then
        return false
      end
      return true
    end
  end,
}
