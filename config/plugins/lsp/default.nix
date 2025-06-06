{pkgs, ...}: {
  plugins = {
    # dependencies
    fidget = {enable = true;};
    cmp-nvim-lsp = {enable = true;};

    lsp = {
      enable = true;

      servers = {
        lua_ls = {
          enable = true;
          settings = {
            completion = {
              callSnippet = "Replace";
            };
            diagnostics = {
              # disable = [ "missing-fields" "undefined-fields" ];
              globals = ["vim"];
            };
          };
        };
        nil_ls = {enable = true;};
        pyright = {enable = true;};
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
      };

      keymaps = {
        diagnostic = {
          "[d" = {
            action = "goto_prev";
            desc = "Go to previous [D]iagnostic message";
          };
          "]d" = {
            action = "goto_next";
            desc = "Go to next [D]iagnostic message";
          };
          "<leader>e" = {
            action = "open_float";
            desc = "Show diagnostic [E]rror messages";
          };
          "<leader>q" = {
            action = "setloclist";
            desc = "Open diagnostic [Q]uickfix list";
          };
        };
        lspBuf = {
          "<leader>rn" = {
            action = "rename";
            desc = "LSP: [R]e[n]ame";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "LSP: [C]ode [A]ction";
          };
          "gD" = {
            action = "declaration";
            desc = "LSP: [G]oto [D]efinition";
          };
        };
        extra = [
          {
            mode = "n";
            key = "gd";
            action.__raw = "require('telescope.builtin').lsp_definitions";
            options = {
              desc = "LSP: [G]oto [D]efinition";
            };
          }
          {
            mode = "n";
            key = "gr";
            action.__raw = "require('telescope.builtin').lsp_references";
            options = {
              desc = "LSP: [G]oto [R]eferences";
            };
          }
          {
            mode = "n";
            key = "gI";
            action.__raw = "require('telescope.builtin').lsp_implementations";
            options = {
              desc = "LSP: [G]oto [I]mplementation";
            };
          }
          {
            mode = "n";
            key = "<leader>D";
            action.__raw = "require('telescope.builtin').lsp_type_definitions";
            options = {
              desc = "LSP: Type [D]efinition";
            };
          }
          {
            mode = "n";
            key = "<leader>ds";
            action.__raw = "require('telescope.builtin').lsp_document_symbols";
            options = {
              desc = "LSP: [D]ocument [S]ymbols";
            };
          }
          {
            mode = "n";
            key = "<leader>ws";
            action.__raw = "require('telescope.builtin').lsp_dynamic_workspace_symbols";
            options = {
              desc = "LSP: [W]orkspace [S]ymbols";
            };
          }
        ];
      };

      preConfig = builtins.readFile ./preAttach.lua;
      onAttach = builtins.readFile ./onAttach.lua;
    };
  };
}
