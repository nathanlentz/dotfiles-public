return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    -- formatters_by_ft = {
    --   ["javascript"] = { "prettier", "biome", stop_after_first = true },
    --   ["javascriptreact"] = { "prettier", "biome", stop_after_first = true },
    --   ["typescript"] = { "prettier", "biome", stop_after_first = true },
    --   ["typescriptreact"] = { "prettier", "biome", stop_after_first = true },
    --   ["vue"] = { "prettier", "biome", stop_after_first = true },
    --   ["css"] = { "prettier", "biome", stop_after_first = true },
    --   ["scss"] = { "prettier", "biome", stop_after_first = true },
    --   ["less"] = { "prettier", "biome", stop_after_first = true },
    --   ["html"] = { "prettier", "biome", stop_after_first = true },
    --   ["json"] = { "prettier", "biome", stop_after_first = true },
    --   ["jsonc"] = { "prettier", "biome", stop_after_first = true },
    --   ["yaml"] = { "prettier", "biome", stop_after_first = true },
    --   ["markdown"] = { "prettier", "biome", stop_after_first = true },
    --   ["markdown.mdx"] = { "prettier", "biome", stop_after_first = true },
    --   ["graphql"] = { "prettier", "biome", stop_after_first = true },
    --   ["handlebars"] = { "prettier", "biome", stop_after_first = true },
    -- },
    formatters = {
      prettier = {
        require_cwd = true,
      },
    },
  },
}
