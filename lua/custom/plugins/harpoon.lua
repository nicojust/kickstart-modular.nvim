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

        vim.keymap.set("n", "ha", function() harpoon:list():append() end)
        vim.keymap.set("n", "hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "h1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "h2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "h3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "h4", function() harpoon:list():select(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "hp", function() harpoon:list():prev() end)
        vim.keymap.set("n", "hn", function() harpoon:list():next() end)
    end,
}
