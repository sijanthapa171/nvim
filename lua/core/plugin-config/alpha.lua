local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require ("alpha.themes.dashboard")

vim.api.nvim_create_autocmd("User", {
    pattern = "LazyVimStarted",
    desc = "Add Alpha dashboard footer",
    once = true,
    callback = function()
    local stats = require("lazy").stats()
    local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
    dashboard.section.footer.val = { "Neovim loaded " .. stats.count .. " plugins  in " .. ms .. "ms" }
    pcall(vim.cmd.AlphaRedraw)
    end,
})

-- check if the currunt operating system is windows
if package.config:sub(1,1) == '\\' then
    dashboard.section.buttons.val = {
        dashboard.button("ff", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("nf", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("rf", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("fg", "  Live grep", ":Telescope live_grep <CR>"),
        dashboard.button("cf", "  Configuration", ":e " .. os.getenv("homepath") .. "\\appdata\\local\\nvim<CR>"),
        dashboard.button("qn", "  Quit Neovim", ":qa<CR>"),
    }
-- check if the currunt operating system is unix
elseif package.config:sub(1,1) == '/' then
    dashboard.section.buttons.val = {
        dashboard.button("ff", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("nf", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("rf", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("fg", "  Live grep", ":Telescope live_grep <CR>"),
        dashboard.button("cf", "  Configuration", ":e " .. "~/.config/nvim<CR>"),
        dashboard.button("qn", "  Quit Neovim", ":qa<CR>"),
    }
end



-- Delete the definition below to use the default Neovim ascii art or define your own.
dashboard.section.header.val = {
[[  _                 ]],
[[ | |   _   ___   __ ]],
[[ | |  | | | \ \ / / ]],
[[ | |__| |_| |\ V /  ]],
[[ |_____\__,_| \_/   ]],
[[                    ]],   
}

alpha.setup(dashboard.opts)