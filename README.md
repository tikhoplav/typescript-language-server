# Dockerized typescript-language-server

Can be used with `nvim` lsp using the following config:

```lua
local root_dir = vim.fn.getcwd()

require('lspconfig').tsserver.setup({
  before_init = function(params)
    params.processId = vim.NIL
  end,
  cmd = {
    'docker', 'run', '-i', '--rm',
    '-v', root_dir .. ':' .. root_dir,
    'tikhoplav/typescript-language-server:4.3.3'
  },
```

