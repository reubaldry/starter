-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.termguicolors = true

-- Ensure LazyVim and Gruvbox don’t override Cursor settings

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Set the cursor highlight (yellow background and black text)
    vim.api.nvim_set_hl(0, "Cursor", { bg = "#c46608", fg = "#000000", reverse = false })
    vim.api.nvim_set_hl(0, "lCursor", { bg = "#FABD2F", fg = "#000000" })

    -- Set Normal text color to ensure the character under the cursor is black
    vim.api.nvim_set_hl(0, "Normal", { fg = "#000000", bg = "#282828" }) -- White text on dark background

    -- Set CursorLine to avoid blending with the cursor
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3C3836" }) -- Darker gray for line highlight
  end,
})
vim.opt.cursorline = true -- Keep CursorLine enabled

vim.api.nvim_set_hl(0, "Cursor2", { fg = "#282828", bg = "#FB4934" }) -- Gruvbox Red for Insert Mode

-- Set custom cursor styles
--else vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50"

-- vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50"
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50"

vim.api.nvim_set_hl(0, "lCursor", { bg = "#FABD2F" }) -- Ensure lCursor is properly set

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { fg = "#EBDBB2", bg = "#282828" }) -- Gruvbox Default
  end,
})

vim.o.wrap = true

vim.keymap.set("n", "<leader>lvv", ":VimtexView<CR>", { silent = true })
