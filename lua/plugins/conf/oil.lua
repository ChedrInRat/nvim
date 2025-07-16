require("oil").setup({
	win_options = {
		signcolumn = "yes:3",
	},
})

local status_const = require("oil-vcs-status.constant.status")
local StatusType = status_const.StatusType

require("oil-vcs-status").setup({
	status_symbol = {
		[StatusType.Added] = "",
		[StatusType.Copied] = "󰆏",
		[StatusType.Deleted] = "",
		[StatusType.Ignored] = "",
		[StatusType.Modified] = "",
		[StatusType.Renamed] = "",
		[StatusType.TypeChanged] = "󰉺",
		[StatusType.Unmodified] = " ",
		[StatusType.Unmerged] = "",
		[StatusType.Untracked] = "",
		[StatusType.External] = "",

		[StatusType.UpstreamAdded] = "󰈞",
		[StatusType.UpstreamCopied] = "󰈢",
		[StatusType.UpstreamDeleted] = "",
		[StatusType.UpstreamIgnored] = " ",
		[StatusType.UpstreamModified] = "󰏫",
		[StatusType.UpstreamRenamed] = "",
		[StatusType.UpstreamTypeChanged] = "󱧶",
		[StatusType.UpstreamUnmodified] = " ",
		[StatusType.UpstreamUnmerged] = "",
		[StatusType.UpstreamUntracked] = " ",
		[StatusType.UpstreamExternal] = "",
	},
})

local hl = vim.api.nvim_set_hl

-- Local statuses
hl(0, "OilVcsStatusAdded", { link = "GitSignsAdd" })
hl(0, "OilVcsStatusCopied", { link = "GitSignsAdd" })
hl(0, "OilVcsStatusDeleted", { link = "GitSignsDelete" })
hl(0, "OilVcsStatusIgnored", { link = "Comment" })
hl(0, "OilVcsStatusModified", { link = "GitSignsChange" })
hl(0, "OilVcsStatusRenamed", { link = "Identifier" })
hl(0, "OilVcsStatusTypeChanged", { link = "WarningMsg" })
hl(0, "OilVcsStatusUnmodified", { link = "Normal" })
hl(0, "OilVcsStatusUnmerged", { link = "ErrorMsg" })
hl(0, "OilVcsStatusUntracked", { link = "DiagnosticHint" })
hl(0, "OilVcsStatusExternal", { link = "SpecialComment" })

-- Upstream statuses
hl(0, "OilVcsStatusUpstreamAdded", { link = "GitSignsAdd" })
hl(0, "OilVcsStatusUpstreamCopied", { link = "GitSignsAdd" })
hl(0, "OilVcsStatusUpstreamDeleted", { link = "GitSignsDelete" })
hl(0, "OilVcsStatusUpstreamIgnored", { link = "Comment" })
hl(0, "OilVcsStatusUpstreamModified", { link = "GitSignsChange" })
hl(0, "OilVcsStatusUpstreamRenamed", { link = "Identifier" })
hl(0, "OilVcsStatusUpstreamTypeChanged", { link = "WarningMsg" })
hl(0, "OilVcsStatusUpstreamUnmodified", { link = "Normal" })
hl(0, "OilVcsStatusUpstreamUnmerged", { link = "ErrorMsg" })
hl(0, "OilVcsStatusUpstreamUntracked", { link = "DiagnosticHint" })
hl(0, "OilVcsStatusUpstreamExternal", { link = "SpecialComment" })
