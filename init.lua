-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require('ide-settings.sensible')

-- Colorscheme
require('ide-settings.colorscheme')

-- Auto install packer.nvim if it is not installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
 -- Auto compile when there are changes in plugins.lua
vim.cmd 'autocmd BufWritePost ide-settings/plugins.lua PackerCompile'

-- Install plugins
require('ide-settings.plugins')

-- Key mappings
require('ide-settings.keymappings')

-- Language servers
require('plugin-settings.lsp')

-- Snippets
require('plugin-settings.snippets')

-- Completion
require('plugin-settings.completion')

-- GIT wrapper
require('plugin-settings.fugitive')

