# Rien-nvim

This is a customization for a Neovim installation that contains the baseline configurations and plugins for getting started with a my personal preferences on a development environment.

When performing the installation/setup is is recommended to utilize a separate directory from the based Neovim installation with the `NVIM_APPNAME` variable.

## Dependencies

The following external dependencies are required/recommended to utilize these configuration files:

| Dependency | Usage | Required? |
| --- | --- | --- |
| [neovim](https://github.com/neovim/neovim) | Core for the configuration files| Yes |
| [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter) | Utility to leverage syntax highlighting and context based selection | No |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | Supports Telescope for faster file tree parsing | No |
| [stylua](https://github.com/JohnnyMorganz/StyLua) | Formatter for Lua files | No |
| [lua-language-server](https://github.com/LuaLS/lua-language-server) | Lua Langauge Server | No |
| [vtsls](https://github.com/yioneko/vtsls) | JavaScript/TypeScript Language Server | No |
| [vuels](https://github.com/vuejs/language-tools/tree/master/packages/language-server) | TypeScript/JavaScript Language Server for Vuejs| No |
| [gopls](https://go.dev/gopls/) | Go Langauge Server | No |
| [golangci-lint](https://github.com/golangci/golangci-lint) | Go Linter and Formatter | No |
| [Roslyn Language Server](https://github.com/dotnet/roslyn) | C# Langauge Server and Formatter | No |
| [prettier](https://github.com/prettier/prettier) | JS/TS Ecosystem Code Formatter | No | 
| [uv](https://docs.astral.sh/uv) | Python Virtual Environment Manager | No |
| [black](https://pypi.org/project/black/) | Python Code Formatter | No |
| [ruff](https://github.com/astral-sh/ruff) | Python Code Formatter and Linter | No |
| [pylint](https://www.pylint.org/) | Standalone Python Linter | No |

## Environment Variables

These are environment variables that are utilized to provide flexibility when loading pieces of the configuration that are dynamic, such as Node or NuGet packages.

| Variable Name | Usage | Language(s) |
| --- | --- | --- |
| VUE_LS_PATH | File path that points to the @vue/language-server installation. | Vue.JS projects with TypeScript |
| ROSLYN_LS_PATH | File path that points to the Roslyn Language Server dll | C# |
