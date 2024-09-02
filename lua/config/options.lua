vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"
-- vim.opt.ambiwidth= 'double'

vim.opt.cursorline = true
vim.opt.timeoutlen = 300
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = "a"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.getenv("HOME") .. "/.vimdid"
vim.opt.undofile = true
vim.opt.scrolloff = 999
vim.opt.laststatus = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.relativenumber = true
vim.opt.number = true

vim.o.foldenable = true
vim.o.foldmethod = "expr"
vim.o.foldlevel = 1000
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

if vim.fn.has("macunix") then
  vim.opt.clipboard:append({ "unnamedplus" })
end

-- au TextYankPost * silent! lua vim.highlight.on_yank()
vim.cmd("au TextYankPost * silent! lua.highlight.on_yank()")

-- no line numbers when using the teminal
vim.cmd("au TermOpen * setlocal nonumber norelativenumber")

-- neomutt text-flowed option
vim.cmd("au BufNewFile,BufRead neomutt-* setf mail")

-- format on save
vim.cmd("au BufWritePre * lua vim.lsp.buf.format()")
