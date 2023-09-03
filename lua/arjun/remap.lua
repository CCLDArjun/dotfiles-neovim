vim.g.mapleader = " "


function nmap (first, second)
    vim.keymap.set("n", first, second)
end
function vmap (first, second)
    vim.keymap.set("v", first, second)
end
function xmap (first, second)
    vim.keymap.set("x", first, second)
end
function imap (first, second)
    vim.keymap.set("i", first, second)
end

vim.g.mapleader = " "

nmap("|", ":vnew<CR>")
nmap("\\", ":new<CR>")

nmap("<C-h>", ":wincmd h<CR>")
nmap("<C-l>", ":wincmd l<CR>")
nmap("<C-j>", ":wincmd j<CR>")
nmap("<C-k>", ":wincmd k<CR>")

nmap("<leader>rw", vim.cmd.Ex)

vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")

nmap("J", "mzJ`z")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
nmap("n", "nzzzv")
nmap("N", "Nzzzv")

-- greatest remap ever
xmap("<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
nmap("<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

nmap("Q", "<nop>")
nmap("<leader>f", vim.lsp.buf.format)

nmap("<leader>k", "<cmd>lnext<CR>zz")
nmap("<leader>j", "<cmd>lprev<CR>zz")

nmap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
nmap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
nmap("<leader><leader>", function()
    vim.cmd("so")
end)

nmap("<leader>ls", ":TagbarToggle<CR>")

nmap("<leader>nt", ":NERDTreeToggle<CR>")

