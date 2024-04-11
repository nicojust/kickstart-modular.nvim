-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
-- Harpoon plugin configuration

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = 'Add to harpoon' })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Show harpoon' })

        vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = 'Open harpoon buffer 1' })
        vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = 'Open harpoon buffer 2' })
        vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = 'Open harpoon buffer 3' })
        vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = 'Open harpoon buffer 4' })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = 'Open [p]revious harpoon buffer' })
        vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = 'Open [n]ext harpoon buffer' })
    end,
}
