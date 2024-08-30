-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")



-- Run clang-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.c", "*.cpp", "*.h", "*.hpp"},
    callback = function()
        vim.cmd("silent! !clang-format -i " .. vim.fn.expand("%"))
        vim.cmd("edit!")
    end,
})
