return {
  "jay-babu/mason-null-ls.nvim",
  -- overrides `require("mason-null-ls").setup(...)`
  opts = {
    ensure_installed = {
      "stylua",
      "eslint-lsp",
      -- add more arguments for adding more null-ls sources
    },
  },
}
