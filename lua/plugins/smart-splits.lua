return {
  "mrjones2014/smart-splits.nvim",
  keys = {
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Move to left window",
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Move to right window",
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Move to below window",
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Move to above window",
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize current window right",
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize current window down",
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize current window up",
    },
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize current window left",
    },
    {
      "<A-H>",
      function()
        require("smart-splits").swap_buf_right()
      end,
      desc = "swap_buf current window right",
    },
    {
      "<A-J>",
      function()
        require("smart-splits").swap_buf_down()
      end,
      desc = "swap_buf current window down",
    },
    {
      "<A-K>",
      function()
        require("smart-splits").swap_buf_up()
      end,
      desc = "swap_buf current window up",
    },
    {
      "<A-L>",
      function()
        require("smart-splits").swap_buf_left()
      end,
      desc = "swap_buf current window left",
    },

    -- {
    --   "<A-S-l>",
    --   function()
    --     require("smart-splits").swap_buf_right()
    --   end,
    --   desc = "swap_buf current window right",
    -- },
    -- {
    --   "<A-S-j>",
    --   function()
    --     require("smart-splits").swap_buf_down()
    --   end,
    --   desc = "swap_buf current window down",
    -- },
    -- {
    --   "<A-S-k>",
    --   function()
    --     require("smart-splits").swap_buf_up()
    --   end,
    --   desc = "swap_buf current window up",
    -- },
    -- {
    --   "<A-S-h>",
    --   function()
    --     require("smart-splits").swap_buf_left()
    --   end,
    --   desc = "swap_buf current window left",
    -- },
  },
}
