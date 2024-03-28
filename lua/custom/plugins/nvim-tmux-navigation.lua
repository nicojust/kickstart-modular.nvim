-- https://github.com/alexghergh/nvim-tmux-navigation
-- Tmux navigation inside neovim

return {
    'alexghergh/nvim-tmux-navigation',
    config = function()
        local nvim_tmux_nav = require('nvim-tmux-navigation')

        nvim_tmux_nav.setup {
            disable_when_zoomed = true -- defaults to false
        }

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, { desc = 'Tmux navigate left' })
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, { desc = 'Tmux navigate down' })
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, { desc = 'Tmux navigate up' })
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, { desc = 'Tmux navigate right' })
        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive, { desc = 'Tmux navigate to last active' })
        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext, { desc = 'Tmux navigate to next' })
    end
}
