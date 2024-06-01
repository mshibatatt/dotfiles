return {
  {
    "R-nvim/R.nvim",
    config = function ()
      -- Create a table with the options to be passed to setup()
      local opts = {
        R_args = {"--no-save"},
        hook = {
          on_filetype = function ()
            -- This function will be called at the FileType event
            -- of files supported by R.nvim. This is an
            -- opportunity to create mappings local to buffers.
            vim.api.nvim_buf_set_keymap(0, "n", "<Enter>", "<Plug>RDSendLine", {})
            vim.api.nvim_buf_set_keymap(0, "v", "<Enter>", "<Plug>RSendSelection", {})
          end
        },
        rconsole_width = 57,
        min_editor_width = 18,
        pipe_keymap = "<C-b>",
        disable_cmds = {
          "RClearConsole",
          "RCustomStart",
          "RSPlot",
          "RSaveClose",
        },
      }
      -- Check if the environment variable "R_AUTO_START" exists.
      -- If using fish shell, you could put in your config.fish:
      -- alias r "R_AUTO_START=true nvim"
      if vim.env.R_AUTO_START == "true" then
          opts.auto_start = 1
          opts.objbr_auto_start = true
      end
      require("r").setup(opts)
    end,
    lazy = false
  },
  {
    "R-nvim/cmp-r",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function ()
      require("nvim-treesitter.configs").setup({
        sync_install = true,
        ensure_installed = {
          "r",
          "markdown",
          "markdown_inline",
          "rnoweb",
        },
      })
    end,
  },
}
