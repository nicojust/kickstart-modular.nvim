-- https://github.com/NeogitOrg/neogit
-- https://github.com/sindrets/diffview.nvim
-- https://github.com/rhysd/committia.vim

return {
    "NeogitOrg/neogit",
    branch = 'nightly',
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "rhysd/committia.vim",
        "nvim-telescope/telescope.nvim",
    },
    config = true
}
