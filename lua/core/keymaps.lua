-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- old window mappings: keymap('n', '<c-j>', ':wincmd j<CR><CMD>startinsert<CR>')
-- old window mappings: keymap('n', '<c-k>', ':wincmd k<CR>')
-- old window mappings: keymap('n', '<c-l>', ':wincmd l<CR>')
-- old window mappings: keymap('n', '<c-h>', ':wincmd h<CR>')

local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Fterm
keymap('n', '<M-f>', '<CMD>lua require("FTerm").toggle()<CR>')
keymap('t', '<M-f>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Cargo hotkeys
keymap('n', '<M-F2>', '<CMD>CargoBuildDebug<CR>')
keymap('n', '<M-F3>', '<CMD>CargoBuildRelease<CR>')
keymap('n', '<M-F4>', '<CMD>CargoRunDebug<CR>')
keymap('n', '<M-F5>', '<CMD>CargoRunRelease<CR>')

-- Telescope
keymap('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
keymap('n', '<leader>ff', '<CMD>Telescope find_files<CR>')

---------------------------------------------------------

-- Normal --
-- Better window navigation
keymap('n', '<leader>h', ':nohlsearch<CR>')
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j<CMD>startinsert<CR>", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Insert --
-- Press jk fast to exit insert mode 
-- deprecated: keymap("i", "jk", "<ESC>", opts)
-- deprecated: keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Terminal (horizontal)
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>t", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>l", term_opts)
