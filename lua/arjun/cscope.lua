require('cscope_maps').setup()

vim.cmd "command Cs Cscope"
if io.open("cscope.out", "r") then
    vim.cmd("cs add cscope.out")
end

