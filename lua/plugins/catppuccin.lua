return { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
        local catppuccin = require("catppuccin")
        local transparent_background = true

        catppuccin.setup({
            highlight_overrides = {
                all = function()
                    return {
                        -- For base configs
                        NormalFloat = { fg = "#F2F2BF", bg = "#161320" },
                    }
                end
            },
            transparent_background = transparent_background,
            treesitter = true,
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                },
                underlines = {
                    errors = { "underline" },
                    hints = { "underline" },
                    warnings = { "underline" },
                    information = { "underline" },
                },
                inlay_hints = {
                    background = true,
                },
            },
        })
        vim.cmd.colorscheme("catppuccin-mocha")
    end
}
