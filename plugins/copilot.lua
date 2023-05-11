return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = true },
    panel = { enabled = true },
  },
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<M-CR>",
        },
      },
      server_opts_overrides = {
        trace = "verbose",
        settings = {
          advanced = {
            listCount = 10, -- #completions for panel
            inlineSuggestCount = 3, -- #completions for getCompletions
          }
        },
      }
    })
  end,
}
