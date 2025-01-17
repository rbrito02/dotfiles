vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"


local vo = vim.opt

-- Vim options
vo.foldcolumn = "1" -- Show the fold column
vo.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vo.foldlevelstart = 99
vo.foldenable = true

vo.scrolloff = 5 -- Set the cursor 5 lines down instead of directly at the top of the file
vo.showmatch = true -- Show matching brackets by flickering
vo.showmode = false -- Do not show the mode
vo.sidescrolloff = 8 -- The minimal number of columns to keep to the left and to the right of the cursor if 'nowrap' is set
vo.smartcase = true -- Don't ignore case with capitals
vo.smoothscroll = true -- Smoother scrolling
vo.splitbelow = true -- Put new windows below current
vo.splitright = true -- Put new windows right of current
vo.textwidth = 120 -- Total allowed width on the screen
vo.timeoutlen = 300 -- Time in milliseconds to wait for a mapped sequence to complete
vo.updatetime = 250 -- If in this many milliseconds nothing is typed, the swap file will be written to disk
vo.wildmode = "list:longest" -- Command-line completion mode
vo.wildignore = { "*/.git/*", "*/node_modules/*" } -- Ignore these files/folders
vo.undolevels = 1000 -- Ensure we can undo a lot!
