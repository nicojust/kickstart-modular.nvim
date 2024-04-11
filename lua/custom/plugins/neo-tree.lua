-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- Nvim Neo-tree plugin configuration

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            -- https://github.com/nvim-neo-tree/neo-tree.nvim/wiki/Recipes/161f7fd5ea0a7365b5fec8a4e39ba0e904e720a1#harpoon-index
            -- harpoon_index
            filesystem = {
                components = {
                    harpoon_index = function(config, node, _)
                        local harpoon_list = require("harpoon"):list()
                        local path = node:get_id()
                        local harpoon_key = vim.uv.cwd()

                        for i, item in ipairs(harpoon_list.items) do
                            local value = item.value
                            if string.sub(item.value, 1, 1) ~= "/" then
                                value = harpoon_key .. "/" .. item.value
                            end

                            if value == path then
                                vim.print(path)
                                return {
                                    text = string.format(" ⥤ %d", i), -- <-- Add your favorite harpoon like arrow here
                                    highlight = config.highlight or "NeoTreeDirectoryIcon",
                                }
                            end
                        end
                        return {}
                    end,
                },
                renderers = {
                    file = {
                        { "icon" },
                        { "name",         use_git_status_colors = true },
                        { "harpoon_index" }, --> This is what actually adds the component in where you want it
                        { "diagnostics" },
                        { "git_status",   highlight = "NeoTreeDimText" },
                    },
                },

                follow_current_file = {
                    enabled = true
                },
            },
        })

        -- Keymaps
        vim.keymap.set("n", "<leader>nt",
            function() require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() }) end,
            { desc = 'Toggle [N]eo [T]ree' }
        )
    end,
}
