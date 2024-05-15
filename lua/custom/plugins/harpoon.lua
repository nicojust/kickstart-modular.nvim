-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
-- Harpoon plugin configuration

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = 'Add to harpoon' })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Show harpoon' })

        -- Set <leader>h1..<leader>h5 as shortcuts for selecting files
        for _, idx in ipairs { 1, 2, 3, 4, 5 } do
            vim.keymap.set("n", string.format("<leader>h%d", idx), function() harpoon:list():select(idx) end, { desc = string.format("harpoon buffer [%d]", idx) })
        end

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = '[p]revious harpoon buffer' })
        vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = '[n]ext harpoon buffer' })
    end,
}
