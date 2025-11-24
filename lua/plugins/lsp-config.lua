return {
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    enabled = true,
  },
  { "hrsh7th/cmp-nvim-lsp", lazy = false },
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", -- lua
          "elixirls", -- elixir
          "ts_ls", --typescript/javascript
          "jsonls", --json
          "pyright", --python
          "kotlin_language_server", -- kotlin
          "clangd", -- c/c++
          "zls", -- zig
          "rust_analyzer", -- rust
          "harper_ls", -- a lot of languages importantly Go C/C++/C# Java Javascript/Typescript Python Ruby Rust fallback
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- local lspconfig = require("lspconfig")
    vim.lsp.config('lua_ls', {
        settings = {}
        })
    vim.lsp.config('pyright', {
        settings = {}
        })
    vim.lsp.config('zls', {
        settings = {}
        })
    vim.lsp.config('rust_analyzer', {
        settings = {}
        })
    vim.lsp.config('asm_lsp', {
        settings = {}
        })
    vim.lsp.config('clangd', {
        settings = {}
        })
    vim.lsp.config('harper-ls', {
    settings = {
        ["harper-ls"] = {
            linters = {
                SpellCheck = false,
                SpelledNumbers = false,
                SentenceCapitalizaiton = false,
            },
            filetypes = {
                "sh",
                "bash",
                "zsh",
                "c",
                "cmake",
                "cpp",
                "cs",
                "dart",
                "mail",
                "git-commit",
                "go",
                "hs",
                "html",
                "java",
                "js",
                "jsx",
                "lhs",
                "md",
                "nix",
                "php",
                "py",
                "rb",
                "rs",
                "swift",
                "toml",
                "ts",
                "tsx",
                },
            },
        },
    })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Get references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
    end,
  },
}
