return {
  {
    "ziontee113/color-picker.nvim",
    opts = {
      -- Customize color picker behavior here
      -- For example, to change the increment/decrement steps:
      increment_step = 1,
      increment_step_large = 5,
      increment_step_huge = 10,
      -- Define custom keymaps, e.g.:
      keymaps = {
        next_color = "j",
        prev_color = "k",
        next_shade = "l",
        prev_shade = "h",
        -- ... other keymaps
      },
    },
    -- Optionally, configure the keymap to activate the color picker:
    keys = {
      { "<leader>c", "<cmd>ColorPicker<cr>", desc = "Color Picker" },
    },
  },
}
