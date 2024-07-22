-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

if vim.g.neovide then
  vim.o.guifont = "UbuntuMono Nerd Font:b:h15"
  vim.g.neovide_scale_factor = 0.9
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_transparency = 1.0
end
