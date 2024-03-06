-- https://github.com/Eandrju/cellular-automaton.nvim
-- cellular-automaton plugin configuration

return {
    "eandrju/cellular-automaton.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
        vim.keymap.set("n", "<leader>gml", "<cmd>CellularAutomaton game_of_life<CR>")
        -- vim.keymap.set("n", "<leader>sml", "<cmd>CellularAutomaton scramble<CR>")
    end,
}
