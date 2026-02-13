vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "ty-high-contrast"
vim.opt.background = "dark"

local fondo = "#080714" 
local amarillo = "#ffe400"
local blanco = "#FFFFFF"
local verde = "#29da11"
local rojo = "#ff0000"
local celeste = "#64ecff"
local celeste_oscuro = "#004752"
local gris = "#666666"
local negro = "#000000"

local bg_groups = {
    "Normal", "NormalNC", "NormalFloat", "SignColumn",
    "LineNr", "EndOfBuffer", "CursorLine", "FoldColumn",
    "StatusLine", "Pmenu", "FloatBorder"
}
for _, g in ipairs(bg_groups) do
    vim.api.nvim_set_hl(0, g, { fg = blanco, bg = fondo, ctermbg = 0 })
end

local syntax = {
    ["Keyword"] = { fg = blanco, bold = true },
    ["Function"] = { fg = amarillo },
    ["Identifier"] = { fg = celeste },
    ["Statement"] = { fg = rojo },
    ["Type"] = { fg = celeste },
    ["Operator"] = { fg = blanco },
    ["String"] = { fg = verde },
    ["Constant"] = { fg = blanco },
    ["Number"] = { fg = rojo },
    ["NonText"] = { fg = "#333333" },
    ["@variable"] = { fg = celeste},
    ["@property"] = { fg = celeste },
    ["@parameter"] = { fg = celeste_oscuro},
    ["@comment"] = { fg = gris , italic = true },
    ["StorageClass"] = { fg = blanco },
    ["Structure"] = { fg = blanco },
    ["Typedef"] = { fg = blanco },
    ["@type"] = { fg = blanco},
    ["@type.builtin"] = { fg = blanco },
    ["@type.definition"] = { fg = blanco },
}

for group, settings in pairs(syntax) do
    vim.api.nvim_set_hl(0, group, settings)
end

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = blanco, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = "#333333" })
vim.api.nvim_set_hl(0, "Search", { fg = amarillo, bg = negro })
