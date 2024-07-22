-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

local if_not_neovide = function()
  if vim.g.neovide then
    return false
  else
    return true
  end
end

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- THEMES
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      transparent_background = if_not_neovide(),
      no_underline = false,
      integrations = {
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
      },
    },
  },
  { import = "astrocommunity.colorscheme.mellow-nvim" },
  { import = "astrocommunity.colorscheme.nvim-juliana" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.vim-dogrun" },
  { import = "astrocommunity.colorscheme.rose-pine" },

  -- PACKS
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  --{ import = "astrocommunity.pack.typescript-deno" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },

  -- EDITING SUPPORT
  { import = "astrocommunity.editing-support.suda-vim" },

  -- MOTION
  { import = "astrocommunity.motion.leap-nvim" },

  -- COMPLETION
  --{ import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.completion.codeium-vim" },

  -- MISC
  { import = "astrocommunity.scrolling.vim-smoothie" },
  {
    "psliwka/vim-smoothie",
    cond = function()
      if vim.g.neovide then
        return false
      else
        return true
      end
    end,
  },
}
