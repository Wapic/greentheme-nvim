local M = {}

function M.get(config)
    local p = require('greentheme.palette')
    local theme = {}

    local background = (config.transparent_background and p.none) or p.background
    local contrast = config.nvim_tree.contrast

   theme = {
        -- base highlights
        Boolean = { fg = p.color5 },
        Character = { fg = p.color12 },
        ColorColumn = { bg = background },
        Comment = { fg = p.comment, italic = true },
        Conceal = { fg = p.blue, bg = background },
        Conditional = { fg = p.color6 },
        Constant = { fg = p.color5 },
        Cursor = { fg = p.foreground, bg = p.foreground },
        CursorColumn = { bg = background },
        CursorIM = { fg = p.foreground, bg = p.foreground },
        CursorLine = { bg = p.cursorline },
        CursorLineNr = { fg = p.cursorline },
        Debug = { fg = p.red },
        Define = { fg = p.color6 },
        Delimiter = { fg = p.foreground },
        DiffAdd = { fg = p.blue, bg = background },
        DiffChange = { fg = p.color5, bg = background },
        DiffDelete = { fg = p.red, bg = background },
        DiffText = { fg = p.red, bg = background },
        Directory = { fg = p.blue },
        EndOfBuffer = { fg = p.background },
        Error = { fg = p.red, bg = background },
        ErrorMsg = { fg = p.red, bg = background },
        Exception = { fg = p.color6 },
        Float = { fg = p.color5 },
        FloatBorder = { fg = p.color2 },
        FoldColumn = { fg = p.blue, bg = background },
        Folded = { fg = p.blue, bg = background },
        Function = { fg = p.color6 },
        Identifier = { fg = p.color5 },
        Ignore = { fg = p.color7, bg = background },
        IncSearch = { fg = p.background, bg = p.color10 },
        Include = { fg = p.color6 },
        Keyword = { fg = p.color6 },
        Label = { fg = p.blue },
        LineNr = { fg = p.comment, bg = background },
        Macro = { fg = p.color6 },
        MatchParen = { fg = p.blue, bg = background },
        ModeMsg = { fg = p.foreground, bg = background },
        MoreMsg = { fg = p.color5 },
        MsgArea = { fg = p.foreground, bg = background },
        MsgSeparator = { fg = p.foreground, bg = background },
        NonText = { fg = p.red },
        Normal = { fg = p.foreground, bg = background },
        NormalFloat = { bg = background },
        NormalNC = { fg = p.foreground, bg = background },
        Number = { fg = p.gold },
        Operator = { fg = p.color6 },
        Pmenu = { fg = p.foreground, bg = background },
        PmenuSbar = { bg = background },
        PmenuSel = { fg = p.background, bg = p.blue },
        PmenuThumb = { bg = p.color2 },
        PreCondit = { fg = p.color6 },
        PreProc = { fg = p.color6 },
        Question = { fg = p.color5 },
        QuickFixLine = { bg = p.color2 },
        Repeat = { fg = p.color6 },
        Search = { fg = p.background, bg = p.color10 },
        SignColumn = { fg = p.background, bg = background },
        Special = { fg = p.color6 },
        SpecialChar = { fg = p.foreground },
        SpecialComment = { fg = p.color2 },
        SpecialKey = { fg = p.blue },
        SpellBad = { fg = p.color2 },
        SpellCap = { fg = p.color6 },
        SpellLocal = { fg = p.blue },
        SpellRare = { fg = p.color6 },
        Statement = { fg = p.color6 },
        StatusLine = { fg = foreground, bg = background },
        StatusLineNC = { bg = background, fg = p.background },
        Storage = { fg = p.color9 },
        StorageClass = { fg = p.color7 },
        String = { fg = p.color2 },
        Structure = { fg = p.color6 },
        Substitute = { fg = p.gold, bg = p.color6 },
        TabLine = { fg = p.color2, bg = background },
        TabLineFill = { fg = p.foreground, bg = background },
        TabLineSel = { fg = p.foreground, bg = background },
        Tag = { fg = p.blue },
        TermCursor = { fg = p.foreground, bg = p.foreground },
        TermCursorNC = { fg = p.foreground, bg = p.foreground },
        Title = { fg = p.blue, bold = true },
        Todo = { fg = p.red, bg = background },
        Type = { fg = p.color5 },
        Typedef = { fg = p.color6 },
        Underlined = { fg = p.gold },
        Variable = { fg = p.color5 },
        VertSplit = { fg = p.background, bg = p.color0 },
        Visual = { fg = p.background, bg = p.comment },
        VisualNOS = { bg = background },
        WarningMsg = { fg = p.gold, bg = background },
        Whitespace = { fg = p.red },
        WildMenu = { fg = p.color7, bg = p.blue },
        lCursor = { fg = p.foreground, bg = p.foreground },

        -- bufferline.nvim: https://github.com/akinsho/bufferline.nvim
        BufferLineFill = { fg = p.background, bg = background },
        BufferLineIndicatorSelected = { fg = p.color2 },

        -- Diagnostic
        DiagnosticError = { fg = p.red },
        DiagnosticHint = { fg = p.color2 },
        DiagnosticInfo = { fg = p.blue },
        DiagnosticWarn = { fg = p.gold },

        -- diff
        diffAdded = { fg = p.blue },
        diffChanged = { fg = p.color5 },
        diffFile = { fg = p.color7 },
        diffIndexLine = { fg = p.color6 },
        diffLine = { fg = p.red },
        diffNewFile = { fg = p.color5 },
        diffOldFile = { fg = p.color5 },
        diffRemoved = { fg = p.red },

        -- gitsigns: https://github.com/lewis6991/gitsigns.nvim
        GitSignsAdd = { fg = p.blue },
        GitSignsChange = { fg = p.color5 },
        GitSignsDelete = { fg = p.red },

        -- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
        IndentBlanklineChar = { fg = p.color0 },

        -- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
        DefinitionCount = { fg = p.color6 },
        DefinitionIcon = { fg = p.color7 },
        LspFloatWinBorder = { fg = p.background },
        LspFloatWinNormal = { bg = background },
        LspSagaBorderTitle = { fg = p.color7 },
        LspSagaCodeActionBorder = { fg = p.color7 },
        LspSagaCodeActionContent = { fg = p.color6 },
        LspSagaCodeActionTitle = { fg = p.color7 },
        LspSagaDefPreviewBorder = { fg = p.blue },
        LspSagaFinderSelection = { fg = p.red },
        LspSagaHoverBorder = { fg = p.color7 },
        LspSagaRenameBorder = { fg = p.blue },
        LspSagaSignatureHelpBorder = { fg = p.red },
        ReferencesCount = { fg = p.color6 },
        ReferencesIcon = { fg = p.color7 },
        TargetWord = { fg = p.color7 },

        -- Neogit: https://github.com/TimUntersberger/neogit
        NeogitBranch = { fg = p.color6 },
        NeogitDiffAddHighlight = { fg = p.blue, bg = background },
        NeogitDiffContextHighlight = { bg = background, fg = p.foreground },
        NeogitDiffDeleteHighlight = { fg = p.red, bg = background },
        NeogitHunkHeader = { bg = background, fg = p.foreground },
        NeogitHunkHeaderHighlight = { bg = p.comment, fg = p.color7 },
        NeogitRemote = { fg = p.color6 },

        -- Neovim
        healthError = { fg = p.red },
        healthSuccess = { fg = p.blue },
        healthWarning = { fg = p.color5 },

        -- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
        CmpDocumentationBorder = { fg = p.foreground, bg = background },
        CmpItemAbbr = { fg = p.foreground, bg = background },
        CmpItemAbbrDeprecated = { fg = p.color2, bg = background },
        CmpItemAbbrMatch = { fg = p.color7, bg = background },
        CmpItemAbbrMatchFuzzy = { fg = p.color7, bg = background },
        CmpItemKind = { fg = p.blue, bg = background },
        CmpItemMenu = { fg = p.color2, bg = background },

        -- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
        NvimTreeEmptyFolderName = { fg = p.color2 },
        NvimTreeEndOfBuffer = { fg = (contrast and p.contrast) or p.none, bg = (contrast and p.contrast) or p.none },
        NvimTreeEndOfBufferNC = { fg = (contrast and p.contrast) or p.none, bg = (contrast and p.contrast) or p.none },
        NvimTreeFolderIcon = { fg = p.blue, bg = background },
        NvimTreeFolderName = { fg = p.foreground },
        NvimTreeGitDeleted = { fg = p.red },
        NvimTreeGitDirty = { fg = p.color5 },
        NvimTreeGitNew = { fg = p.blue },
        NvimTreeImageFile = { fg = p.foreground },
        NvimTreeIndentMarker = { fg = p.color0 },
        NvimTreeNormal = { fg = (contrast and p.none) or p.foreground, bg = (contrast and p.contrast) or background },
        NvimTreeNormalNC = { fg = (contrast and p.none) or p.foreground, bg = (contrast and p.contrast) or background },
        NvimTreeOpenedFolderName = { fg = p.color2 },
        NvimTreeRootFolder = { fg = p.red },
        NvimTreeSpecialFile = { fg = p.color6 },
        NvimTreeStatusLineNC = { bg = background, fg = p.background },
        NvimTreeSymlink = { fg = p.color7 },
        NvimTreeVertSplit = { fg = (contrast and p.background) or p.none, bg = (contrast and p.background) or p.none },

        -- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
        ["@attribute"] = { fg = p.blue },
        ["@boolean"] = { fg = p.color6 },
        ["@character"] = { fg = p.blue },
        ["@comment"] = { fg = p.comment, italic = true },
        ["@conditional"] = { fg = p.red },
        ["@constant"] = { fg = p.color6 },
        ["@constant.builtin"] = { fg = p.blue },
        ["@constant.macro"] = { fg = p.gold },
        ["@constructor"] = { fg = p.blue },
        ["@exception"] = { fg = p.color8 },
        ["@field"] = { fg = p.red },
        ["@float"] = { fg = p.color8 },
        ["@function"] = { fg = p.blue },
        ["@function.method"] = { fg = p.gold },
        ["@function.builtin"] = { fg = p.color14 },
        ["@function.macro"] = { fg = p.color2 },
        ["@include"] = { fg = p.color9 },
        ["@keyword"] = { fg = p.color5 },
        ["@keyword.function"] = { fg = p.color5 },
        ["@keyword.operator"] = { fg = p.color5 },
        ["@label"] = { fg = p.blue },
        ["@method"] = { fg = p.color12 },
        ["@namespace"] = { fg = p.color9 },
        ["@number"] = { fg = p.gold },
        ["@operator"] = { fg = p.color7 },
        ["@parameter"] = { fg = p.red },
        ["@parameter.reference"] = { fg = p.color9 },
        ["@property"] = { fg = p.color6 },
        ["@punctuation.bracket"] = { fg = p.color7 },
        ["@punctuation.delimiter"] = { fg = p.color7 },
        ["@punctuation.special"] = { fg = p.red },
        ["@repeat"] = { fg = p.color11 },
        ["@string"] = { fg = p.color2 },
        ["@string.escape"] = { fg = p.blue },
        ["@string.regex"] = { fg = p.color2 },
        ["@string.special"] = { fg = p.gold },
        ["@symbol"] = { fg = p.red },
        ["@tag"] = { fg = p.blue },
        ["@tag.attribute"] = { fg = p.red },
        ["@tag.delimiter"] = { fg = p.color7 },
        ["@text"] = { fg = p.color7 },
        ["@text.danger"] = { fg = p.color8 },
        ["@text.emphasis"] = { fg = p.color7, italic = true },
        ["@text.environment.name"] = { fg = p.gold },
        ["@text.environtment"] = { fg = p.color5 },
        ["@text.literal"] = { fg = p.color2, italic = true },
        ["@text.math"] = { fg = p.color6 },
        ["@text.note"] = { fg = p.color8 },
        ["@text.reference"] = { fg = p.color6 },
        ["@text.strike"] = { fg = p.color7, strikethrough = true },
        ["@text.strong"] = { fg = p.color7, bold = true },
        ["@text.title"] = { fg = p.gold, bold = true },
        ["@text.underline"] = { fg = p.color5, underline = true },
        ["@text.uri"] = { fg = p.gold, underline = true },
        ["@text.warning"] = { fg = p.color0, bg = p.red },
        ["@type"] = { fg = p.color6 },
        ["@type.builtin"] = { fg = p.gold },
        ["@variable"] = { fg = p.foreground },
        ["@variable.builtin"] = { fg = p.blue },

        -- LSP semantic tokens
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.interface"] = { link = "Identifier" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },

        -- telescope.nvim: https://github.com/nvim-telescope/telescope.nvim
        TelescopeBorder = { fg = p.color0, bg = background },
        TelescopeNormal = { fg = p.foreground, bg = background },
        TelescopeSelection = { fg = p.background, bg = p.color5 },

        -- trouble.nvim: https://github.com/folke/trouble.nvim
        LspTroubleCount = { fg = p.color6, bg = p.foreground },
        LspTroubleNormal = { fg = p.foreground, bg = background },
        LspTroubleText = { fg = p.foreground },

        -- vim-gitgutter: https://github.com/airblade/vim-gitgutter
        GitGutterAdd = { fg = p.blue },
        GitGutterChange = { fg = p.color5 },
        GitGutterDelete = { fg = p.red },

        -- vim-illuminate: https://github.com/RRethy/vim-illuminate
        illuminatedCurWord = { bg = p.foreground },
        illuminatedWord = { bg = p.foreground },
    }

    vim.g.terminal_color_0 = p.color0
    vim.g.terminal_color_1 = p.red
    vim.g.terminal_color_2 = p.color2
    vim.g.terminal_color_3 = p.gold
    vim.g.terminal_color_4 = p.blue
    vim.g.terminal_color_5 = p.color5
    vim.g.terminal_color_6 = p.color6
    vim.g.terminal_color_7 = p.color7
    vim.g.terminal_color_8 = p.color8
    vim.g.terminal_color_9 = p.color9
    vim.g.terminal_color_10 = p.color10
    vim.g.terminal_color_11 = p.color11
    vim.g.terminal_color_12 = p.color12
    vim.g.terminal_color_13 = p.color13
    vim.g.terminal_color_14 = p.color14
    vim.g.terminal_color_15 = p.color15

    return theme
end

return M 
