vim.keymap.set('n', '<leader>ff', function() vim.api.nvim_command(':Files') end)
vim.keymap.set('n', '<leader>fw', function() vim.api.nvim_command(':Rg') end)
vim.keymap.set('n', '<leader>fg', function() vim.api.nvim_command(':GFiles') end)
vim.keymap.set('n', '<leader>fb', function() vim.api.nvim_command(':BLines') end)

