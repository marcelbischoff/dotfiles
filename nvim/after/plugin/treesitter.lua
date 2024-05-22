require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn", -- set to `false` to disable one of the mappings
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    indent = {
        enable = false
    },
    refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = false },

        smart_rename = {
            enable = true,
            keymaps = {
                -- mapping to rename reference under cursor
                smart_rename = "grr",
            },
        }
      },
      navigation = {
          enable = false,
          keymaps = {
              goto_definition = "gnd", -- mapping to go to definition of symbol under cursor
              list_definitions = "gnD", -- mapping to list all definitions in current file
          },
      }
  }

