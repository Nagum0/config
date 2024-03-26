-- function ColorMyPencils(color, bg)
-- 	color = color or "gruvbox"
--     bg = bg or true
-- 	require("catppuccin").setup({
-- 		transparent_background = bg
-- 	})
--     
--     require("gruvbox").setup({
--         transparent_mode = true
--     })
--
-- 	vim.cmd.colorschem(color)
-- end
--
-- ColorMyPencils()

require("gruvbox").setup({
    transparent_mode = false
})

vim.cmd.colorschem("gruvbox")
