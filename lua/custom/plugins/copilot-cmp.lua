-- Github copilot-cmp
-- Moves suggestions into completions menu
-- https://github.com/zbirenbaum/copilot-cmp

return {
  "zbirenbaum/copilot-cmp",
  config = function ()
    require("copilot_cmp").setup()
  end,
  opts = {
    event = "InsertEnter",
    fix_pair = true,
  }
}
