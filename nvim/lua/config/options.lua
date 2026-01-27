-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 光标行
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- 缩进
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2

-- 鼠标
vim.opt.mouse = "a"

-- 全局 lsp 诊断
vim.diagnostic.config({
  virtual_text = true, -- 保留行内提示
  update_in_insert = false, -- 插入模式不更新
})

-- 左右键可跨行
vim.o.whichwrap = vim.o.whichwrap .. "<>,h,l"

