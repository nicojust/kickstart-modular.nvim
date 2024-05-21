-- https://github.com/NeogitOrg/neogit
-- https://github.com/sindrets/diffview.nvim
-- https://github.com/rhysd/committia.vim

return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",  -- required
        "sindrets/diffview.nvim", -- optional - Diff integration
        "rhysd/committia.vim",
        -- Only one of these is needed, not both.
        "nvim-telescope/telescope.nvim", -- optional
        --   "ibhagwan/fzf-lua",              -- optional
    },
    config = true
}
