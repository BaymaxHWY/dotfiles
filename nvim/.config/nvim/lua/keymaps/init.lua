local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- keymap("n", "<leader>q", "<cmd>q!<CR>", opts)
-- keymap("n", "<leader>w", "<cmd>w!<CR>", opts)
-- keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Telescope --
-- find file
-- keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
-- find text
-- keymap("n", "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
-- find project
-- keymap("n", "<leader>P", "<cmd>lua require('telescope').extensions.projects.projects()<cr>", opts)

-- Comment
keymap('n', '<leader>/', '<CMD>lua require("Comment.api").toggle_current_linewise()<CR>', opts)
keymap('n', '<S-leader>/', '<CMD>lua require("Comment.api").toggle_current_blockwise()<CR>', opts)

-- Nvimtree
-- keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Navigate buffers bufferline
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev", opts)
-- keymap("n", "gb", ":BufferLinePick<CR>", opts)
-- keymap("n", "<leader>c", "<cmd>Bdelete!<CR>", opts)

-- hlslens
keymap("n", "n", "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", opts)
keymap("n", "N", "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", opts)
keymap("n", "*", "*<Cmd>lua require('hlslens').start()<CR>", opts)
keymap("n", "#", "#<Cmd>lua require('hlslens').start()<CR>", opts)
keymap("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", opts)
keymap("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", opts)


-- Navigate jump through
keymap("n", "<C-[>", "<C-o>", opts)
keymap("n", "<C-]>", "<C-i>", opts)

-- hop
-- keymap("n", "f", "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opts)
-- keymap("n", "F", "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opts)


-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)
-- keymap("i", "kj", "<ESC>", opts)
-- insert semicolon int line end
keymap("i", ";<CR>", "<C-o>A;<CR>", opts);


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "Y", '"+y', opts)
keymap("v", "p", '"_dP', opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "s", "<Nop>", opts)


-- Comment
keymap('x', '<leader>/', '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)
keymap('x', '<S-leader>/', '<ESC><CMD>lua require("Comment.api").toggle_blockwise_op(vim.fn.visualmode())<CR>', opts)

