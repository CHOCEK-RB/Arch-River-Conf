local keymap = vim.keymap.set

keymap("n", "<C-s>", ":w<CR>", { desc = "Guardar archivo" })
keymap("i", "<C-s>", "<ESC>:w<CR>", { desc = "Guardar archivo" })

keymap("n", "<C-h>", "<C-w>h", { desc = "Mover a la ventana izquierda" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Mover a la ventana de abajo" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Mover a la ventana de arriba" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Mover a la ventana derecha" })

keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Mover línea hacia abajo" })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Mover línea hacia arriba" })

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("i", "jk", "<ESC>", { desc = "Salir del modo inserción" })

keymap("n", "<C-c>", '"+y$', { desc = "Copy to system clipboard (EOL)" })
keymap("v", "<C-c>", '"+y', { desc = "Copy to system clipboard (Visual)" })

keymap("n", "<C-x>", '"+d$', { desc = "Cut to system clipboard (EOL)" })
keymap("v", "<C-x>", '"+d', { desc = "Cut to system clipboard (Visual)" })

keymap({ "n", "v" }, "<C-v>", '"+p', { desc = "Paste from system clipboard" })

keymap("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next Buffer" })
keymap("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })
keymap("n", "<leader>bb", "<cmd>buffer #<CR>", { desc = "Last Buffer" })
keymap("n", "<leader>bl", "<cmd>buffers<CR>", { desc = "List Buffers" })

-- Oil

keymap("n", "-", "<CMD>Oil<CR>", { desc = "Abrir directorio con Oil" })

-- Mini

keymap("n", "<leader>ff", ":Pick files<CR>", { desc = "Buscar Archivos (Find Files)" })

keymap("n", "<leader>fg", ":Pick grep_live<CR>", { desc = "Buscar por Texto (Grep)" })
