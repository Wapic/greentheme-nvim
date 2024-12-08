local p = require('greentheme.palette')

return {
    normal = {
        a = { bg = p.green, fg = p.background },
        b = { bg = p.background, fg = p.gray },
        c = { bg = p.background, fg = p.foreground },
    },
    insert = {
        a = { bg = p.blue, fg = p.background },
        b = { bg = p.background, fg = p.blue },
    },
    command = {
        a = { bg = p.red, fg = p.background },
        b = { bg = p.background, fg = p.pink },
    },
    visual = {
        a = { bg = p.pink, fg = p.background },
        b = { bg = p.background, fg = p.pink },
    },
    replace = {
        a = { bg = p.red, fg = p.background },
        b = { bg = p.background, fg = p.yellow },
    },
    inactive = {
        a = { bg = p.background, fg = p.gray },
        b = { bg = p.background, fg = p.foreground, gui = 'bold' },
        c = { bg = p.background, fg = p.foreground },
    },
}
