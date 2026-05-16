-- Auto-switching logic
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "VeryLazy",
--   callback = function()
--     local function set_colorscheme()
--       local hour = tonumber(os.date("%H"))
--
--       if hour >= 7 and hour < 18 then
--         vim.cmd.colorscheme("kanagawa-lotus")
--       else
--         vim.cmd.colorscheme("kanagawa-dragon")
--       end
--     end
--
--     set_colorscheme()
--
--     vim.fn.timer_start(600000, function()
--       set_colorscheme()
--     end, { ["repeat"] = -1 })
--   end,
-- })

-- Plugin spec
return {
  { "thesimonho/kanagawa-paper.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-paper",
    },
  },
}
