return {
  {
    "AstroNvim/astroui",
    ---@param opts AstroUIOpts
    opts = function(_, opts)
      -- update the colorscheme
      -- opts.colorscheme = "dracula"
      opts.colorscheme = "kanagawa"
      return opts
    end,
  },
}
