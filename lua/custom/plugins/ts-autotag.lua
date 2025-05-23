-- autoclose and rename html/tsx elements
-- https://github.com/windwp/nvim-ts-autotag

return {
  'windwp/nvim-ts-autotag',
  opts = {
    opts = {
      -- Auto close tags
      enable_close = true,

      -- Auto rename pairs of tags
      enable_rename = true,

      -- Auto close on trailing </
      enable_close_on_slash = false
    }
  },
}
