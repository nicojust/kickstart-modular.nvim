-- https://github.com/stevearc/oil.nvim

return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            columns = { "icon" },

            -- Set to false if you still want to use netrw.
            default_file_explorer = true,

            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
            },
        })

        -- Open parent directory in current window
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

        -- Open parent directory in floating window
        vim.keymap.set("n", "<space>-", require("oil").toggle_float, { desc = "Open parent directory in floating window" })
    end
}
