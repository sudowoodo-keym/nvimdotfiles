return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)

      opts.zen = {
        on_open = function()
          -- detach LSP cleanly (safer than stop())
          for _, client in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
            vim.lsp.buf_detach_client(0, client.id)
          end

          vim.diagnostic.enable(false)

          if vim.lsp.inlay_hint then
            vim.lsp.inlay_hint.enable(false, { bufnr = 0 })
          end
        end,

        on_close = function()
          vim.diagnostic.enable(true)

          if vim.lsp.inlay_hint then
            vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
          end

          -- safer than :edit
          vim.cmd("edit!")
        end,
      }

      return opts
    end,
  },
}
