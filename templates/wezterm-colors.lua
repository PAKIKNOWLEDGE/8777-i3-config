-- Matugen WezTerm colorscheme
-- Generated with Matugen
return {
    foreground = "{{colors.on_surface.default.hex}}",
    background = "{{colors.surface.default.hex}}",

    cursor_bg = "{{colors.secondary.default.hex}}",
    cursor_fg = "{{colors.on_surface_variant.default.hex}}",
    cursor_border = "{{colors.secondary.default.hex}}",

    selection_fg = "{{colors.on_secondary.default.hex}}",
    selection_bg = "{{colors.secondary_fixed_dim.default.hex}}",

    ansi = {
        "#4c4c4c",    -- black
        "#ac8a8c",    -- red
        "#9ab38d",    -- green
        "#aca98a",    -- yellow
        "{{colors.primary.default.hex}}",    -- blue
        "{{colors.tertiary.default.hex}}",   -- magenta
        "{{colors.secondary_fixed_dim.default.hex}}", -- cyan
        "#f0f0f0",    -- white
    },
    brights = {
        "{{colors.outline.default.hex}}",    -- bright black
        "#c49ea0",    -- bright red
        "#b0c9a3",    -- bright green
        "#c4c19e",    -- bright yellow
        "#a39ec4",    -- bright blue
        "{{colors.on_tertiary_container.default.hex}}", -- bright magenta
        "{{colors.secondary.default.hex}}",  -- bright cyan
        "#e7e7e7",    -- bright white
    },
}
