require('cscope_maps').setup()

if io.open("cscope.out", "r") then
    vim.cmd("cs add cscope.out")
end
