local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


vim.g.mapleader = ' '  -- leader map ==> <space>

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
keymap("n", "<leader>q", "<cmd>q!<CR>", opts)
keymap("n", "<leader>w", "<cmd>w!<CR>", opts)

-- Telescope --
-- find file
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
-- find text
keymap("n", "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
-- find project
keymap("n", "<leader>P", "<cmd>lua require('telescope').extensions.projects.projects()<cr>", opts)


-- Packer --
-- Packer Sync
keymap("n", "<leader>ps", "<cmd>PackerSync<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>c", ":BufferClose<CR>", opts)

-- Navigate jump through
keymap("n", "<C-[>", "<C-o>", opts)
keymap("n", "<C-]>", "<C-i>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jj", "<ESC>", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "Y", '"+y', opts)
keymap("v", "p", '"_dP', opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)



