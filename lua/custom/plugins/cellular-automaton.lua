-- https://github.com/Eandrju/cellular-automaton.nvim
-- cellular-automaton plugin configuration

return {
    "eandrju/cellular-automaton.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = 'Make It Rain' })
        vim.keymap.set("n", "<leader>gml", "<cmd>CellularAutomaton game_of_life<CR>", { desc = 'Game Of Life' })
    end,
}
