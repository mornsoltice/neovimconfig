return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "python",
        "lua",
        "rust",
        "vim",
        "vimdoc",
        "toml",
        "bash",
        "bibtex",
        "css",
        "diff",
        "gitignore",
        "html",
        "jq",
        "json",
        "latex",
        "lua",
        "markdown",
        "swift",
        "typescript",
        "javascript",
        "tsx",
        "elixir",
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
