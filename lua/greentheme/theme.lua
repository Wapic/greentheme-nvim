local M = {}

function M.get(config)
    local p = require('greentheme.palette')
    local theme = {}

    local background = (config.transparent_background and p.none) or p.background
    local contrast = config.nvim_tree.contrast

   theme = {
        -- base highlights
        Boolean = { fg = p.pink },
        Character = { fg = p.light_blue },
        ColorColumn = { bg = background },
        Comment = { fg = p.comment, italic = true },
        Conceal = { fg = p.blue, bg = background },
        Conditional = { fg = p.cyan },
        Constant = { fg = p.pink },
        Cursor = { fg = p.foreground, bg = p.foreground },
        CursorColumn = { bg = background },
        CursorIM = { fg = p.foreground, bg = p.foreground },
        CursorLine = { bg = p.cursorline },
        CursorLineNr = { fg = p.cursorline },
        Debug = { fg = p.red },
        Define = { fg = p.cyan },
        Delimiter = { fg = p.foreground },
        DiffAdd = { fg = p.blue, bg = background },
        DiffChange = { fg = p.pink, bg = background },
        DiffDelete = { fg = p.red, bg = background },
        DiffText = { fg = p.red, bg = background },
        Directory = { fg = p.blue },
        EndOfBuffer = { fg = p.background },
        Error = { fg = p.red, bg = background },
        ErrorMsg = { fg = p.red, bg = background },
        Exception = { fg = p.cyan },
        Float = { fg = p.pink },
        FloatBorder = { fg = p.green },
        FoldColumn = { fg = p.blue, bg = background },
        Folded = { fg = p.blue, bg = background },
        Function = { fg = p.cyan },
        Identifier = { fg = p.pink },
        Ignore = { fg = p.gray, bg = background },
        IncSearch = { fg = p.background, bg = p.light_green },
        Include = { fg = p.cyan },
        Keyword = { fg = p.cyan },
        Label = { fg = p.blue },
        LineNr = { fg = p.comment, bg = background },
        Macro = { fg = p.cyan },
        MatchParen = { fg = p.blue, bg = background },
        ModeMsg = { fg = p.foreground, bg = background },
        MoreMsg = { fg = p.pink },
        MsgArea = { fg = p.foreground, bg = background },
        MsgSeparator = { fg = p.foreground, bg = background },
        NonText = { fg = p.red },
        Normal = { fg = p.foreground, bg = background },
        NormalFloat = { bg = background },
        NormalNC = { fg = p.foreground, bg = background },
        Number = { fg = p.gold },
        Operator = { fg = p.cyan },
        Pmenu = { fg = p.foreground, bg = background },
        PmenuSbar = { bg = background },
        PmenuSel = { fg = p.background, bg = p.blue },
        PmenuThumb = { bg = p.green },
        PreCondit = { fg = p.cyan },
        PreProc = { fg = p.cyan },
        Question = { fg = p.pink },
        QuickFixLine = { bg = p.green },
        Repeat = { fg = p.cyan },
        Search = { fg = p.background, bg = p.light_green },
        SignColumn = { fg = p.background, bg = background },
        Special = { fg = p.cyan },
        SpecialChar = { fg = p.foreground },
        SpecialComment = { fg = p.green },
        SpecialKey = { fg = p.blue },
        SpellBad = { fg = p.green },
        SpellCap = { fg = p.cyan },
        SpellLocal = { fg = p.blue },
        SpellRare = { fg = p.cyan },
        Statement = { fg = p.cyan },
        StatusLine = { fg = foreground, bg = background },
        StatusLineNC = { bg = background, fg = p.background },
        Storage = { fg = p.light_red },
        StorageClass = { fg = p.gray },
        String = { fg = p.green },
        Structure = { fg = p.cyan },
        Substitute = { fg = p.gold, bg = p.cyan },
        TabLine = { fg = p.green, bg = background },
        TabLineFill = { fg = p.foreground, bg = background },
        TabLineSel = { fg = p.foreground, bg = background },
        Tag = { fg = p.blue },
        TermCursor = { fg = p.foreground, bg = p.foreground },
        TermCursorNC = { fg = p.foreground, bg = p.foreground },
        Title = { fg = p.blue, bold = true },
        Todo = { fg = p.red, bg = background },
        Type = { fg = p.pink },
        Typedef = { fg = p.cyan },
        Underlined = { fg = p.gold },
        Variable = { fg = p.pink },
        VertSplit = { fg = p.background, bg = p.darker_gray },
        Visual = { fg = p.background, bg = p.comment },
        VisualNOS = { bg = background },
        WarningMsg = { fg = p.gold, bg = background },
        Whitespace = { fg = p.red },
        WildMenu = { fg = p.gray, bg = p.blue },
        lCursor = { fg = p.foreground, bg = p.foreground },

        -- bufferline.nvim: https://github.com/akinsho/bufferline.nvim
        BufferLineFill = { fg = p.background, bg = background },
        BufferLineIndicatorSelected = { fg = p.green },

        -- Diagnostic
        DiagnosticError = { fg = p.red },
        DiagnosticHint = { fg = p.green },
        DiagnosticInfo = { fg = p.blue },
        DiagnosticWarn = { fg = p.gold },

        -- diff
        diffAdded = { fg = p.blue },
        diffChanged = { fg = p.pink },
        diffFile = { fg = p.gray },
        diffIndexLine = { fg = p.cyan },
        diffLine = { fg = p.red },
        diffNewFile = { fg = p.pink },
        diffOldFile = { fg = p.pink },
        diffRemoved = { fg = p.red },

        -- gitsigns: https://github.com/lewis6991/gitsigns.nvim
        GitSignsAdd = { fg = p.blue },
        GitSignsChange = { fg = p.pink },
        GitSignsDelete = { fg = p.red },

        -- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
        IndentBlanklineChar = { fg = p.darker_gray },

        -- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
        DefinitionCount = { fg = p.cyan },
        DefinitionIcon = { fg = p.gray },
        LspFloatWinBorder = { fg = p.background },
        LspFloatWinNormal = { bg = background },
        LspSagaBorderTitle = { fg = p.gray },
        LspSagaCodeActionBorder = { fg = p.gray },
        LspSagaCodeActionContent = { fg = p.cyan },
        LspSagaCodeActionTitle = { fg = p.gray },
        LspSagaDefPreviewBorder = { fg = p.blue },
        LspSagaFinderSelection = { fg = p.red },
        LspSagaHoverBorder = { fg = p.gray },
        LspSagaRenameBorder = { fg = p.blue },
        LspSagaSignatureHelpBorder = { fg = p.red },
        ReferencesCount = { fg = p.cyan },
        ReferencesIcon = { fg = p.gray },
        TargetWord = { fg = p.gray },

        -- Neogit: https://github.com/TimUntersberger/neogit
        NeogitBranch = { fg = p.cyan },
        NeogitDiffAddHighlight = { fg = p.blue, bg = background },
        NeogitDiffContextHighlight = { bg = background, fg = p.foreground },
        NeogitDiffDeleteHighlight = { fg = p.red, bg = background },
        NeogitHunkHeader = { bg = background, fg = p.foreground },
        NeogitHunkHeaderHighlight = { bg = p.comment, fg = p.gray },
        NeogitRemote = { fg = p.cyan },

        -- Neovim
        healthError = { fg = p.red },
        healthSuccess = { fg = p.blue },
        healthWarning = { fg = p.pink },

        -- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
        CmpDocumentationBorder = { fg = p.foreground, bg = background },
        CmpItemAbbr = { fg = p.foreground, bg = background },
        CmpItemAbbrDeprecated = { fg = p.green, bg = background },
        CmpItemAbbrMatch = { fg = p.gray, bg = background },
        CmpItemAbbrMatchFuzzy = { fg = p.gray, bg = background },
        CmpItemKind = { fg = p.blue, bg = background },
        CmpItemMenu = { fg = p.green, bg = background },

        -- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
        NvimTreeEmptyFolderName = { fg = p.green },
        NvimTreeEndOfBuffer = { fg = (contrast and p.contrast) or p.none, bg = (contrast and p.contrast) or p.none },
        NvimTreeEndOfBufferNC = { fg = (contrast and p.contrast) or p.none, bg = (contrast and p.contrast) or p.none },
        NvimTreeFolderIcon = { fg = p.blue, bg = background },
        NvimTreeFolderName = { fg = p.foreground },
        NvimTreeGitDeleted = { fg = p.red },
        NvimTreeGitDirty = { fg = p.pink },
        NvimTreeGitNew = { fg = p.blue },
        NvimTreeImageFile = { fg = p.foreground },
        NvimTreeIndentMarker = { fg = p.darker_gray },
        NvimTreeNormal = { fg = (contrast and p.none) or p.foreground, bg = (contrast and p.contrast) or background },
        NvimTreeNormalNC = { fg = (contrast and p.none) or p.foreground, bg = (contrast and p.contrast) or background },
        NvimTreeOpenedFolderName = { fg = p.green },
        NvimTreeRootFolder = { fg = p.red },
        NvimTreeSpecialFile = { fg = p.cyan },
        NvimTreeStatusLineNC = { bg = background, fg = p.background },
        NvimTreeSymlink = { fg = p.gray },
        NvimTreeVertSplit = { fg = (contrast and p.background) or p.none, bg = (contrast and p.background) or p.none },

        -- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
        ["@attribute"] = { fg = p.blue },
        ["@boolean"] = { fg = p.gold },
        ["@character"] = { fg = p.blue },
        ["@comment"] = { fg = p.comment, italic = true },
        ["@conditional"] = { fg = p.red },
        ["@constant"] = { fg = p.cyan },
        ["@constant.builtin"] = { fg = p.blue },
        ["@constant.macro"] = { fg = p.gold },
        ["@constructor"] = { fg = p.gold },
        ["@exception"] = { fg = p.dark_gray },
        ["@field"] = { fg = p.red },
        ["@float"] = { fg = p.dark_gray },
        ["@function"] = { fg = p.blue },
        ["@function.method"] = { fg = p.gold },
        ["@function.builtin"] = { fg = p.cyan2 },
        ["@function.macro"] = { fg = p.green },
        ["@include"] = { fg = p.light_red },
        ["@keyword"] = { fg = p.pink },
        ["@keyword.function"] = { fg = p.pink },
        ["@keyword.operator"] = { fg = p.pink },
        ["@label"] = { fg = p.blue },
        ["@method"] = { fg = p.light_blue },
        ["@namespace"] = { fg = p.light_red },
        ["@number"] = { fg = p.gold },
        ["@operator"] = { fg = p.gray },
        ["@parameter"] = { fg = p.red },
        ["@parameter.reference"] = { fg = p.light_red },
        ["@property"] = { fg = p.cyan },
        ["@punctuation.bracket"] = { fg = p.gray },
        ["@punctuation.delimiter"] = { fg = p.gray },
        ["@punctuation.special"] = { fg = p.red },
        ["@repeat"] = { fg = p.yellow },
        ["@string"] = { fg = p.green },
        ["@string.escape"] = { fg = p.blue },
        ["@string.regex"] = { fg = p.green },
        ["@string.special"] = { fg = p.green },
        ["@symbol"] = { fg = p.red },
        ["@tag"] = { fg = p.blue },
        ["@tag.attribute"] = { fg = p.red },
        ["@tag.delimiter"] = { fg = p.gray },
        ["@text"] = { fg = p.gray },
        ["@text.danger"] = { fg = p.dark_gray },
        ["@text.emphasis"] = { fg = p.gray, italic = true },
        ["@text.environment.name"] = { fg = p.gold },
        ["@text.environtment"] = { fg = p.pink },
        ["@text.literal"] = { fg = p.green, italic = true },
        ["@text.math"] = { fg = p.cyan },
        ["@text.note"] = { fg = p.dark_gray },
        ["@text.reference"] = { fg = p.cyan },
        ["@text.strike"] = { fg = p.gray, strikethrough = true },
        ["@text.strong"] = { fg = p.gray, bold = true },
        ["@text.title"] = { fg = p.gold, bold = true },
        ["@text.underline"] = { fg = p.pink, underline = true },
        ["@text.uri"] = { fg = p.gold, underline = true },
        ["@text.warning"] = { fg = p.darker_gray, bg = p.red },
        ["@type"] = { fg = p.cyan },
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
        TelescopeBorder = { fg = p.darker_gray, bg = background },
        TelescopeNormal = { fg = p.foreground, bg = background },
        TelescopeSelection = { fg = p.background, bg = p.pink },

        -- trouble.nvim: https://github.com/folke/trouble.nvim
        LspTroubleCount = { fg = p.cyan, bg = p.foreground },
        LspTroubleNormal = { fg = p.foreground, bg = background },
        LspTroubleText = { fg = p.foreground },

        -- vim-gitgutter: https://github.com/airblade/vim-gitgutter
        GitGutterAdd = { fg = p.blue },
        GitGutterChange = { fg = p.pink },
        GitGutterDelete = { fg = p.red },

        -- vim-illuminate: https://github.com/RRethy/vim-illuminate
        illuminatedCurWord = { bg = p.foreground },
        illuminatedWord = { bg = p.foreground },
    }

    vim.g.terminal_color_0 = p.darker_gray
    vim.g.terminal_color_1 = p.red
    vim.g.terminal_color_2 = p.green
    vim.g.terminal_color_3 = p.gold
    vim.g.terminal_color_4 = p.blue
    vim.g.terminal_color_5 = p.pink
    vim.g.terminal_color_6 = p.cyan
    vim.g.terminal_color_7 = p.gray
    vim.g.terminal_color_8 = p.dark_gray
    vim.g.terminal_color_9 = p.light_red
    vim.g.terminal_color_10 = p.light_green
    vim.g.terminal_color_11 = p.yellow
    vim.g.terminal_color_12 = p.light_blue
    vim.g.terminal_color_13 = p.light_pink
    vim.g.terminal_color_14 = p.cyan2
    vim.g.terminal_color_15 = p.light_gray

    return theme
end

return M 
