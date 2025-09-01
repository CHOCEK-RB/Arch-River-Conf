local lush = require("lush")
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

local c = {
	black = hsl(235, 25, 45),
	red = hsl(353, 70, 62),
	crimson = hsl(348, 75, 55),
	darkred = hsl(350, 65, 40),
	orange = hsl(25, 90, 60),
	darkorange = hsl(20, 100, 55),
	coral = hsl(16, 80, 70),
	salmon = hsl(12, 70, 65),
	tomato = hsl(14, 85, 65),
	gold = hsl(40, 100, 60),
	yellow = hsl(35, 75, 60),
	lemon = hsl(50, 95, 75),
	lime = hsl(75, 80, 55),
	green = hsl(143, 39, 64),
	forestgreen = hsl(130, 50, 40),
	darkgreen = hsl(120, 45, 30),
	mint = hsl(150, 60, 75),
	aquamarine = hsl(160, 70, 65),
	turquoise = hsl(175, 65, 60),
	cyan = hsl(20, 35, 72),
	teal = hsl(180, 50, 45),
	azure = hsl(195, 80, 75),
	blue = hsl(212, 80, 68),
	navy = hsl(220, 70, 30),
	royalblue = hsl(215, 85, 65),
	dodgerblue = hsl(205, 95, 65),
	skyblue = hsl(198, 80, 70),
	deepskyblue = hsl(190, 95, 65),
	steelblue = hsl(218, 60, 50),
	lavender = hsl(250, 70, 80),
	purple = hsl(299, 49, 77),
	violet = hsl(275, 75, 70),
	darkviolet = hsl(270, 70, 55),
	indigo = hsl(265, 65, 45),
	magenta = hsl(310, 80, 65),
	pink = hsl(330, 90, 80),
	rose = hsl(340, 85, 70),
	hotpink = hsl(335, 90, 65),
	deeppink = hsl(330, 85, 60),
	plum = hsl(305, 60, 75),
	orchid = hsl(300, 75, 75),
	peach = hsl(25, 85, 80),
	beige = hsl(45, 50, 85),
	tan = hsl(35, 55, 65),
	brown = hsl(20, 60, 40),
	saddlebrown = hsl(25, 60, 35),
	chocolate = hsl(20, 70, 50),
	sienna = hsl(15, 60, 50),
	olive = hsl(60, 40, 40),
	olivedrab = hsl(80, 45, 45),
	gray = hsl(235, 20, 60),
	dimgray = hsl(235, 15, 45),
	darkgray = hsl(235, 20, 65),
	lightgray = hsl(235, 25, 80),
	silver = hsl(235, 20, 75),
	white = hsl(235, 30, 70),
	ghostwhite = hsl(240, 100, 97),
	snow = hsl(0, 100, 98),
	ivory = hsl(60, 100, 95),
	navajowhite = hsl(30, 100, 85),
	wheat = hsl(35, 85, 80),
	burlywood = hsl(30, 65, 70),
	linen = hsl(40, 100, 94),
	aliceblue = hsl(204, 100, 95),
	lavenderblush = hsl(350, 100, 95),
	seashell = hsl(15, 100, 94),
	antiquewhite = hsl(35, 80, 88),
	papayawhip = hsl(18, 100, 93),
	blanchedalmond = hsl(25, 100, 92),
	bisque = hsl(20, 100, 90),
	floralwhite = hsl(45, 100, 96),
	oldlace = hsl(45, 100, 95),
	mistyrose = hsl(0, 100, 94),
	whitesmoke = hsl(235, 20, 90),
	gainsboro = hsl(235, 10, 85),
	lightsteelblue = hsl(215, 50, 75),
	powderblue = hsl(190, 60, 80),
	lightcyan = hsl(180, 100, 90),
	mintcream = hsl(150, 100, 95),
	azure1 = hsl(195, 100, 95),
	lavender1 = hsl(250, 70, 80),
	aliceblue1 = hsl(204, 100, 95),
	honeydew = hsl(120, 100, 95),
	peachpuff = hsl(25, 100, 85),
	mediumaquamarine = hsl(155, 70, 65),
	darkseagreen = hsl(135, 50, 55),
	palegreen = hsl(90, 65, 75),
	lawngreen = hsl(85, 100, 50),
	chartreuse = hsl(90, 100, 50),
	mediumseagreen = hsl(145, 60, 50),
	mediumturquoise = hsl(175, 70, 60),
	lightseagreen = hsl(175, 70, 40),
	cadetblue = hsl(180, 40, 45),
	cornflowerblue = hsl(219, 70, 70),
	mediumpurple = hsl(270, 60, 70),
	slateblue = hsl(260, 60, 55),
	darkslateblue = hsl(255, 60, 40),
	mediumvioletred = hsl(320, 70, 55),
	darkmagenta = hsl(300, 60, 45),
	rebeccapurple = hsl(270, 60, 50),
	darkslategray = hsl(180, 40, 30),
	dimgray1 = hsl(235, 15, 45),
	firebrick = hsl(0, 60, 40),
	peru = hsl(35, 60, 55),
	sandybrown = hsl(25, 80, 65),
	darkgoldenrod = hsl(40, 70, 50),
	mediumorchid = hsl(290, 65, 70),
	thistle = hsl(300, 50, 85),
	khaki = hsl(50, 60, 75),
	darkkhaki = hsl(50, 50, 60),
	palegoldenrod = hsl(55, 80, 80),
	rosybrown = hsl(345, 30, 60),
	mediumslateblue = hsl(270, 70, 65),
	slategray = hsl(210, 30, 55),
	lightslategray = hsl(210, 25, 60),
	darkolivegreen = hsl(80, 40, 35),
	maroon = hsl(0, 50, 35),
	indianred = hsl(10, 60, 60),
	mediumvioletred1 = hsl(320, 70, 55),
	orchid1 = hsl(300, 75, 75),
	darkorchid = hsl(285, 65, 55),

	black1 = hsl(0, 0, 5),
	darkcharcoal = hsl(235, 15, 8),
	offblack = hsl(240, 5, 10),

	darkred1 = hsl(350, 65, 30),
	crimsondark = hsl(345, 70, 35),
	maroon1 = hsl(0, 50, 25),
	burgundy = hsl(355, 50, 30),
	oxblood = hsl(352, 60, 32),
	cordovan = hsl(348, 55, 34),

	darkorange1 = hsl(20, 85, 40),
	burntorange = hsl(18, 75, 45),
	russet = hsl(15, 65, 38),
	darkgoldenrod1 = hsl(40, 65, 40),
	darkolive = hsl(60, 50, 30),
	olivedrabdark = hsl(80, 50, 35),

	darkkhaki1 = hsl(55, 55, 45),
	olivegreen = hsl(65, 55, 40),
	forestyellow = hsl(50, 70, 48),

	forestgreen1 = hsl(130, 50, 30),
	darkgreen1 = hsl(120, 45, 25),
	evergreen = hsl(140, 55, 35),
	pinegreen = hsl(135, 60, 38),
	junglegreen = hsl(155, 65, 40),
	seagreen = hsl(165, 55, 35),
	tealdeep = hsl(175, 50, 30),
	darkcyan = hsl(180, 60, 38),

	navy1 = hsl(220, 70, 20),
	darknavy = hsl(230, 65, 15),
	deepocean = hsl(210, 60, 28),
	steelbluedark = hsl(218, 55, 35),
	royalbluedark = hsl(215, 75, 38),
	peavy = hsl(205, 60, 32),
	bluecharcoal = hsl(225, 30, 22),
	slategraydark = hsl(210, 30, 28),

	darkslateblue1 = hsl(255, 60, 30),
	darkindigo = hsl(265, 60, 28),
	darkviolet1 = hsl(270, 65, 38),
	darkmagenta1 = hsl(300, 55, 30),
	darkorchid1 = hsl(285, 60, 40),
	duskyrose = hsl(310, 40, 35),
	eggplant = hsl(315, 50, 32),
	raspberrydark = hsl(330, 60, 38),

	rebeccapurple1 = hsl(270, 60, 40),
	darkplum = hsl(300, 45, 36),
	royalpurple = hsl(280, 65, 42),

	dimgray2 = hsl(235, 15, 25),
	darkgray1 = hsl(235, 15, 35),
	coolgray = hsl(240, 15, 30),
	warmgray = hsl(25, 5, 30),
	charcoal = hsl(235, 18, 20),
	ashgray = hsl(230, 12, 40),
	onyx = hsl(240, 10, 15),
	jet1 = hsl(0, 0, 20),

	chocolate1 = hsl(20, 65, 35),
	saddlebrown1 = hsl(25, 60, 30),
	sienna1 = hsl(15, 55, 32),
	umber = hsl(18, 50, 28),
	taupe = hsl(35, 20, 35),
	darktan = hsl(35, 45, 40),

	whitegray = hsl(235, 10, 94),
	gray90 = hsl(235, 12, 90),
	gray85 = hsl(235, 10, 85),
	cloud = hsl(230, 15, 86),
	mist = hsl(220, 18, 88),

	lightyellow = hsl(60, 100, 94),
	creme = hsl(50, 80, 93),
	palegold = hsl(55, 90, 90),
	eggshell = hsl(42, 70, 91),
	banana = hsl(52, 95, 92),
	champagne = hsl(48, 75, 90),
	parchment = hsl(40, 60, 90),

	salmonlight = hsl(12, 80, 88),
	coralblush = hsl(14, 85, 90),
	apricot = hsl(22, 90, 92),
	softorange = hsl(28, 95, 91),

	lightpink = hsl(335, 95, 90),
	blush = hsl(340, 85, 91),
	rosewhite = hsl(345, 75, 93),
	carnation = hsl(350, 80, 92),
	dustyrose = hsl(342, 50, 88),
	salmonrose = hsl(10, 70, 86),

	mintfrost = hsl(155, 85, 94),
	springgreen = hsl(135, 75, 88),
	honeygreen = hsl(80, 70, 86),
	limefizz = hsl(75, 85, 88),
	sage = hsl(90, 40, 85),
	sagebrush = hsl(95, 35, 82),

	lightblue = hsl(205, 85, 92),
	columbia = hsl(210, 90, 93),
	iceblue = hsl(200, 80, 95),
	periwinkle = hsl(250, 80, 92),
	lavendermist = hsl(260, 70, 93),
	softblue = hsl(220, 75, 90),
	cerulean = hsl(200, 85, 88),

	mauve = hsl(310, 50, 90),
	lilac = hsl(290, 65, 92),
	paleviolet = hsl(285, 60, 93),
	dustyviolet = hsl(275, 55, 88),
	heather = hsl(265, 45, 86),

	sand = hsl(40, 55, 86),
	ecru = hsl(48, 40, 90),
	paleolive = hsl(65, 50, 88),
	camel = hsl(38, 70, 84),
}

local bg = hsl("#170C11")

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Normal({ bg = bg, fg = c.cerulean }), -- Normal text
		Visual({ bg = Normal.bg.lighten(15), fg = Normal.fg }), -- Visual mode selection
		CursorLine({ bg = Normal.bg.lighten(10) }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorColumn(CursorLine), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		lCursor({ bg = c.darkgray1 }), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		ColorColumn({}), -- Columns set with 'colorcolumn'
		-- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ bg = Normal.bg.lighten(20) }), -- Character under the cursor
		-- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		-- Directory      { }, -- Directory names (and other special names in listings)
		-- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
		-- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
		-- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
		-- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     { }, -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		-- ErrorMsg       { }, -- Error messages on the command line
		-- VertSplit      { }, -- Column separating vertically split windows
		-- Folded         { }, -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		-- SignColumn     { }, -- Column where |signs| are displayed
		-- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     { }, -- |:substitute| replacement text highlighting
		LineNr({ bg = Normal.bg.lighten(-20), fg = c.yellow }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove({ bg = LineNr.bg, fg = LineNr.fg.lighten(20) }), -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow({ bg = LineNr.bg, fg = LineNr.fg.lighten(-20) }), -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr({ lCursor }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold({ bg = c.white }), -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign({}), -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		-- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		-- NormalFloat    { }, -- Normal text in floating windows.
		-- FloatBorder    { }, -- Border of floating windows.
		-- FloatTitle     { }, -- Title of floating windows.
		-- NormalNC       { }, -- normal text in non-current windows
		-- Pmenu          { }, -- Popup menu: Normal item.
		-- PmenuSel       { }, -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		-- PmenuSbar      { }, -- Popup menu: Scrollbar.
		-- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
		-- Question       { }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLine     { }, -- Status line of current window
		-- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine        { }, -- Tab pages line, not active tab page label
		-- TabLineFill    { }, -- Tab pages line, where there are no labels
		-- TabLineSel     { }, -- Tab pages line, active tab page label
		-- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.

		-- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = c.yellow }), -- Warning messages
		-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment({ fg = c.red, gui = "italic", bold = true }), -- Any comment

		Constant({ fg = c.darkorange }), -- (*) Any constant
		String({ fg = c.green }), --   A string constant: "this is a string"
		Character({ fg = c.yellow }), --   A character constant: 'c', '\n'
		Number({ fg = c.darkgoldenrod }), --   A number constant: 234, 0xff
		Boolean({ fg = c.darkred }), --   A boolean constant: TRUE, false
		Float({ Number }), --   A floating point constant: 2.3e10

		Identifier({ fg = c.yellow }), -- (*) Any variable name
		Function({ fg = c.yellow }), --   Function name (also: methods for classes)

		-- Statement      { }, -- (*) Any statement
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword        { }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		-- PreProc        { }, -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		-- Type           { }, -- (*) int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		-- Special        { }, -- (*) Any special symbol
		-- SpecialChar    { }, --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		-- Delimiter      { }, --   Character that needs attention
		-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
		-- Debug          { }, --   Debugging statements

		-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		-- Error          { }, -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym"@text.literal"      { }, -- Comment
		-- sym"@text.reference"    { }, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym"@comment"           { }, -- Comment
		-- sym"@punctuation"       { }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		-- sym"@parameter"         { }, -- Identifier
		-- sym"@method"            { }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		-- sym"@tag"               { }, -- Tag
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
