-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  --
  {
    "williamboman/mason.nvim",
    opts = {
      -- Force Mason to use 7-zip or tar instead of trying winrar
      providers = {
        ["mason.providers.client"] = {
          unzip = {
            -- Prefer 7z if installed, otherwise fall back to built-in tar
            cmd = vim.fn.executable "7z" == 1 and "7z" or "tar",
          },
        },
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        "debugpy",

        -- install any other package


        -- React / TS / Node
        "prettier",
        "js-debug-adapter",
        "chrome-debug-adapter",

        -- Go
        "gopls",
        "goimports",
        "gofumpt",
        "delve",
      },
    },
  },
}
