return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<leader>dS",
				function()
					require("dap").session()
				end,
				desc = "Session",
			},
			{
				"<leader>dC",
				function()
					require("dap").continue()
				end,
				desc = "Continue",
			},
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle breakpoint",
			},
		},
		config = function()
			local dap = require("dap")
			dap.adapters = {
				["local-lua"] = {
					type = "executable",
					command = "node",
					args = {
						"/home/reichenour/debuggers/local-lua-debugger-vscode/extension/debugAdapter.js",
					},
					enrich_config = function(config, on_config)
						if not config["extensionPath"] then
							local c = vim.deepcopy(config)
							c.extensionPath = "/home/reichenour/debuggers/local-lua-debugger-vscode/"
							on_config(c)
						else
							on_config(config)
						end
					end,
				},
			}

			dap.configurations = {
				lua = {
					{
						name = "Current file (lua)",
						type = "local-lua",
						request = "launch",
						cwd = "${workspaceFolder}",
						program = {
							lua = "lua5.1",
							file = "${file}",
						},
						args = {},
					},
				},
			}
		end,
	},
	-- {
	-- 	"rcarriga/nvim-dap-ui",
	-- 	opts = {},
	-- 	config = function()
	-- 		local dap, dapui = require("dap"), require("dapui")
	-- 		dap.listeners.before.attach.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.launch.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.event_terminated.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 		dap.listeners.before.event_exited.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 	end,
	-- 	dependencies = {
	-- 		"mfussenegger/nvim-dap",
	-- 		"nvim-neotest/nvim-nio",
	-- 	},
	-- },
}
