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
            theme = 'hyper',
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    {
                        icon = '󰊳 ',
                        desc = 'Lazy',
                        group = '@property',
                        action = 'Lazy',
                        key = 'l'
                    },
                    {
                        icon = '󰊳 ',
                        desc = 'Mason',
                        group = '@property',
                        action = 'Mason',
                        key = 'm'
                    },
                    {
                        icon = ' ',
                        icon_hl = '@variable',
                        desc = 'Files',
                        group = 'Label',
                        action = 'Telescope find_files',
                        key = 'f',
                    },
                    {
                        icon = ' ',
                        desc = 'nvimrc',
                        group = 'Number',
                        action = "edit $MYVIMRC",
                        key = 'n',
                    }
                },
            },
        }
    end,
}
