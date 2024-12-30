{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    package = pkgs.neovim;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraLuaConfig = # lua
      ''
        vim.opt.expandtab = true
        vim.opt.smarttab = true
        vim.opt.shiftwidth = 2
        vim.opt.smartindent = true

        vim.opt.number = true
        vim.opt.cursorline = true

        vim.api.nvim_create_autocmd('LspAttach', {
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if client.supports_method('textDocument/inlayHint') then
              vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
            end
           if client.supports_method('textDocument/completion') then
              vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
            end
            if client.supports_method('textDocument/formatting') then
              vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = args.buf,
                callback = function()
                  vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                end,
              })
            end
          end,
        })
      '';
    plugins = with pkgs.vimPlugins; [
      {
        plugin = gitsigns-nvim;
        type = "lua";
        config = "require('gitsigns').setup {
          current_line_blame = true,
        }";
      }
      {
        plugin = nvim-colorizer-lua;
        type = "lua";
        config = # lua
          "require('colorizer').setup {}";
      }
      {
        plugin = nvim-lspconfig;
        type = "lua";
        config = # lua
          ''
            local lspconfig = require('lspconfig')
            lspconfig.nixd.setup {}
            lspconfig.rust_analyzer.setup {
              ['rust-analyzer'] = {
                cargo = {
                  features = 'all',
                },
                check = {
                  command = 'clippy',
                },
              },
            }
          '';
      }
      {
        plugin = nvim-treesitter.withAllGrammars;
        type = "lua";
        config = # lua
          ''
            require('nvim-treesitter.configs').setup {
              highlight = {
                enable = true,
              },
            }
          '';
      }
      {
        plugin = leetcode-nvim;
        type = "lua";
        config = # lua
          ''
            require('leetcode').setup {
              lang = 'rust',
            }
          '';
      }
      todo-comments-nvim
      markdown-preview-nvim
    ];
    extraPackages = with pkgs; [
      nixd
      nixfmt-rfc-style
    ];
  };
}
