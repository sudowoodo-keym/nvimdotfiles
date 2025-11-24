-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, { desc = "Show diagnostic"})
vim.keymap.set('n', '<leader>vk', function()
      local new_config = not vim.diagnostic.config().virtual_lines
      vim.diagnostic.config({ virtual_lines = new_config })
    end, { desc = 'Toggle diagnostic virtual lines' })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev diagnostic"})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnositc"})
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename)
