return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = true,
  event = "User AstroFile",
  keys = {
    { "<leader>lc", "<cmd>lua require('neogen').generate()<cr>", desc = "Generate docstrings" }
  },
  -- opts = {
  --   languages = {
  --     python = {
  --       template = {
  --         annotation_convention = "reST",
  --       }
  --     },
  --   }
  -- }
}
