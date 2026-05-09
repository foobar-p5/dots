local name = "visual-whitespace"
return {
    src = "https://github.com/mcauley-penney/visual-whitespace.nvim",
    name = name,
    setup = function()
        vim.cmd("packadd "..name)
        require("visual-whitespace").setup()
    end,
}
