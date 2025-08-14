-- [[ Keymaps ]]
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

local wk = require("which-key")
local ts = require("telescope.builtin")

local M = {}
M.static_keymap = {
	{
		"<leader>s",
		group = "Search",
		mode = "n",
		{ "<leader>sb", ts.buffers, desc = "[S]earch [B]uffers" },
		{ "<leader>sd", ts.diagnostics, desc = "[S]earch [D]iagnostics" },
		{ "<leader>sf", ts.find_files, desc = "[S]earch [F]iles" },
		{ "<leader>sg", ts.live_grep, desc = "[S]earch by [G]rep" },
		{ "<leader>sh", ts.help_tags, desc = "[S]earch [H]elp" },
		{ "<leader>sk", ts.keymaps, desc = "[S]earch [K]eymaps" },
		{ "<leader>so", ts.oldfiles, desc = '[S]earch Recent Files ("o" for repeat)' },
		{ "<leader>sr", ts.resume, desc = "[S]earch [R]esume" },
		{ "<leader>ss", ts.builtin, desc = "[S]earch [S]elect Telescope" },
		{ "<leader>sw", ts.grep_string, desc = "[S]earch current [W]ord" },
		{ "<leader>s/", ts.current_buffer_fuzzy_find, desc = "Fuzzily [S]earch Buffer [/]" },
	},
	{
		"<leader>d",
		group = "Diagnostics",
		mode = "n",
		{ "<leader>do", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" } },
		{ "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostics list" } },
		{
			"<leader>d[",
			function()
				vim.diagnostic.jump({ count = -1 })
			end,
			{ desc = "Go to previous diagnostic message" },
		},
		{
			"<leader>d]",
			function()
				vim.diagnostic.jump({ count = 1 })
			end,
			{ desc = "Go to next diagnostic message" },
		},
	},
}

-- TODO: Treesitter

-- LSP
M.lsp_keymap = {
	"<leader>gr",
	group = "LSP",
	mode = "n",
	{ "grn", vim.lsp.buf.rename, desc = "[R]e[n]ame" },
	{ "gra", vim.lsp.buf.code_action, desc = "[G]oto Code [A]ction", { "n", "x" } },
	{ "grr", ts.lsp_references, desc = "[G]oto [R]eferences" },
	{ "gri", ts.lsp_implementations, desc = "[G]oto [I]mplementation" },
	{ "grd", ts.lsp_definitions, desc = "[G]oto [D]efinition" },
	{ "grD", vim.lsp.buf.declaration, desc = "[G]oto [D]eclaration" },
	{ "gro", ts.lsp_document_symbols, desc = "Open Document Symbols" },
	{ "grd", ts.lsp_dynamic_workspace_symbols, desc = "Open Workspace Symbols" },
	{ "grt", ts.lsp_type_definitions, desc = "[G]oto [T]ype Definition" },
}

wk.add(M.static_keymap)
return M
