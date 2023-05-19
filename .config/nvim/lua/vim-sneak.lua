return {
  {
    'justinmk/vim-sneak',
    event = "User AstroFile",
    init = function()
      vim.cmd([[map f <Plug>Sneak_s]])
      vim.cmd([[map F <Plug>Sneak_S]])
    end,
  }
}
