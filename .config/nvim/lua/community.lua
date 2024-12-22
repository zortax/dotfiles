-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- PACKS
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },

  -- RECIPES
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.neovide" },

  -- DIAGNOSTIC
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },

  -- EDITING SUPPORT
  { import = "astrocommunity.editing-support.suda-vim" },

  -- MOTION
  { import = "astrocommunity.motion.leap-nvim" },

  -- COMPLETION
  { import = "astrocommunity.completion.copilot-lua-cmp" },

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

  -- COLOR SCHEMES
  { import = "astrocommunity.colorscheme.github-nvim-theme" },
  { import = "astrocommunity.colorscheme.hybrid-nvim" },
  { import = "astrocommunity.colorscheme.mellow-nvim" },
  { import = "astrocommunity.colorscheme.oldworld-nvim" },
  -- import/override with your plugins folder
}
