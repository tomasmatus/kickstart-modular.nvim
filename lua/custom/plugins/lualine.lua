-- lualine
-- https://github.com/nvim-lualine/lualine.nvim

local function get_active_copilot()
  local buf_clients = vim.lsp.get_clients { bufnr = 0 }
  local copilot_str = ''

  for _, client in pairs(buf_clients) do
    if client.name == 'copilot' then
        copilot_str = ''
    end
  end

  return copilot_str
end

return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = true,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {},
        lualine_x = { 'encoding', 'fileformat', 'filetype', get_active_copilot },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {
        lualine_b = {
          {
            'filename',
            color = 'background',
          },
        },
        lualine_c = {
          {
            'navic',
            color = 'background',
            color_correction = nil,
            navic_opts = nil,
          },
        },
      },
      inactive_winbar = {},
      extensions = {},
    },
  },
}
