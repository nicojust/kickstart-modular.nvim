-- https://github.com/nvimdev/dashboard-nvim
-- Dashboard plugin configuration

return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require('dashboard').setup {
            -- config
        }
    end,
}
