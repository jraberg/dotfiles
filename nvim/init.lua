-- Map leader to space
vim.g.mapleader = ' '

-- setup global options and key remaps
require "globals.options"
require "globals.remaps"

-- Language server settings
require "lsp.lsp"

require "plugins.packer"
