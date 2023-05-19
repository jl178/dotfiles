return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
      { "<leader>m", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" }
    }
  }
}
