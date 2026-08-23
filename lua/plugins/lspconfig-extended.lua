return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- The ai.sidekick (NES) extra registers the copilot LSP, which runs the
      -- Mason copilot-language-server and crashes on startup ("Client copilot
      -- quit with exit code 1") because we don't use Copilot. Disable it.
      copilot = { enabled = false },
      yamlls = {
        settings = {
          yaml = {
            schemas = {
              ["https://github-pages.cloud.capitalone.com/cyber-sre-automation/BogieValidator/schema/bogiefile.json"] = {
                "*.bogie",
                "Bogiefile",
              },

              ["https://gitversion.net/schemas/5.12/GitVersion.configuration.json"] = {
                "GitVersion.yml",
                "GitVersion.yaml",
                ".gitversion.yml",
                ".gitversion.yaml",
              },

              ["https://github-pages.cloud.capitalone.com/cyber-sre-automation/BogieValidator/schema/gearsfile.json"] = "Gearsfile",
            },
          },
        },
      },
      -- helm_ls = {
      --   settings = {
      --     helm - s,
      --   },
      -- },
    },
  },
}
-- return {
--   "neovim/nvim-lspconfig",
--   opts = {
--     -- make sure mason installs the server
--     servers = {
--       yamlls = {
--         -- Have to add this for yamlls to understand that we support line folding
--         capabilities = {
--           textDocument = {
--             foldingRange = {
--               dynamicRegistration = false,
--               lineFoldingOnly = true,
--             },
--           },
--         },
--         -- lazy-load schemastore when needed
--         on_new_config = function(new_config)
--           new_config.settings.yaml.schemas =
--             vim.tbl_deep_extend("force", new_config.settings.yaml.schemas or {}, require("schemastore").yaml.schemas())
--         end,
--         settings = {
--           redhat = { telemetry = { enabled = false } },
--           yaml = {
--             keyOrdering = false,
--             format = {
--               enable = true,
--             },
--             validate = true,
--             schemas = {
--               ["https://github-pages.cloud.capitalone.com/cyber-sre-automation/BogieValidator/schema/bogiefile.json"] = "Bogiefile",
--               ["https://github-pages.cloud.capitalone.com/cyber-sre-automation/BogieValidator/schema/gearsfile.json"] = "Gearsfile",
--             },
--             schemaStore = {
--               -- Must disable built-in schemaStore support to use
--               -- schemas from SchemaStore.nvim plugin
--               enable = false,
--               -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
--               url = "",
--             },
--           },
--         },
--       },
--     },
--   },
-- }
