-- https://github.com/stevearc/oil.nvim

return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            -- Set to false if you still want to use netrw.
            default_file_explorer = true,

            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
