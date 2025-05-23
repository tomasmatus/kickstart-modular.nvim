-- navic
-- https://github.com/SmiteshP/nvim-navic
-- A simple statusline component that uses LSP to show your current code context.

return {
  {
    'SmiteshP/nvim-navic',
    opts = {
      lsp = {
        auto_attach = true,
      },
      highlight = false,
    },
  },
}
