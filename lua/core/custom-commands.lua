-- Cargo Clean
vim.api.nvim_create_user_command('CargoClean', function()
    require('FTerm').run({'cargo', 'clean'})
end, { bang = true })

-- Cargo Build Debug
vim.api.nvim_create_user_command('CargoBuildDebug', function()
    require('FTerm').run({'cargo', 'build'})
end, { bang = true })

-- Cargo Build Release
vim.api.nvim_create_user_command('CargoBuildRelease', function()
    require('FTerm').run({'cargo', 'build', '-r'})
end, { bang = true })

-- Cargo Run Debug
vim.api.nvim_create_user_command('CargoRunDebug', function()
    require('FTerm').run({'cls'})
    require('FTerm').run({'cargo', 'run'})
end, { bang = true })

-- Cargo Run Release
vim.api.nvim_create_user_command('CargoRunRelease', function()
    require('FTerm').run({'cls'})
    require('FTerm').run({'cargo', 'run', '-r'})
end, { bang = true })
