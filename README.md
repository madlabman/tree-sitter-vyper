tree-sitter-vyper
==================

[![build](https://github.com/madlabman/tree-sitter-vyper/actions/workflows/ci.yml/badge.svg)](https://github.com/madlabman/tree-sitter-vyper/actions/workflows/ci.yml)

Vyper grammar for [tree-sitter][].

[tree-sitter]: https://github.com/tree-sitter/tree-sitter

#### Installation

```lua
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.vyper = {
	install_info = {
		url = "https://github.com/madlabman/tree-sitter-vyper", -- local path or git repo
		files = {
			"src/parser.c",
			"src/scanner.cc",
		},
		-- optional entries:
		branch = "master", -- default branch in case of git repo if different from master
		generate_requires_npm = false, -- if stand-alone parser without npm dependencies
		requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
	},
	filetype = "vyper", -- if filetype does not match the parser name
}
```

#### References

* [Vyper Grammar](https://github.com/vyperlang/vyper/blob/master/vyper/ast/grammar.lark)
