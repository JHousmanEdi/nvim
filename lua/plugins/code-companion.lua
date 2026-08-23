return {
  "olimorris/codecompanion.nvim",
  enabled = false,
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      ensure_installed = { "lua", "markdown", "markdown_inline", "yaml", "diff" },
    },
    { "nvim-lua/plenary.nvim" },
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup({})
      end,
    },
  },
  opts = {
    adapters = {
      acp = {
        show_model_choices = true,
        show_defaults = true,
        claude_code = function()
          return require("codecompanion.adapters").extend("claude_code", {
            env = {
              ANTHROPIC_API_KEY = "cmd:op read 'op://Personal/Anthropic/Saved on console.anthropic.com/code-companion apikey'",
            },
          })
        end,
      },

      http = {
        opts = {
          show_model_choices = true,
          show_defaults = false,
        },
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "cmd:op read 'op://Personal/Anthropic/Saved on console.anthropic.com/code-companion apikey'",
            },
          })
        end,
      },
    },
    strategies = {
      chat = {
        adapter = "anthropic",
      },
      inline = {
        adapter = "anthropic",
      },
      cmd = {
        adapter = "anthropic",
      },
    },
    display = {
      chat = {
        -- show_settings = true,
      },
    },
    -- memory = {
    --   default = {
    --     description = "My default group",
    --     files = {
    --       "~/.config/agents/AGENTS.md",
    --     },
    --   },
    --   agents_with_skills = {
    --     description = "Default group but with added tech in tech directory to mimic Claude skills",
    --     parser = "claude",
    --     files = {
    --       "~/.config/agents/CLAUDE_monorepo.md",
    --     },
    --   },
    --   opts = {
    --     chat = {
    --       default_memory = "default",
    --     },
    --   },
    -- },
    opts = {
      log_level = "DEBUG",
    },
    prompt_library = {
      ["Idea Honing"] = {
        strategy = "chat",
        description = "Helps me come up with ideas to implement in full",
        opts = {
          index = 10, -- Optional: controls position in menu
          is_default = false,
          is_slash_cmd = false,
          short_name = "custom", -- Optional: shorter name for commands
        },

        prompts = {
          {
            role = "system",
            content = "You are an expert at prompt engineering and getting the most out of your AI assistant tools, you have experience with the modern python stack including dependency management like UV, Ruff, etc... You also have a strong background in Kubernetes and know how to work through problems step by step in those spaces",
          },

          {
            role = "user",
            content = "Ask me one question at a time so we can develop a few things. One, a general context file (ala Claude.MD, Agents.MD, copilot-instructions etc...) and generating a step-by-step for this idea. Each question should build on my previous answers and our end goal is to have a detailed specification I can hand off to a developer. Let's do this iteratively and dig into every relevant detail. Remember only one question at a time.",
          },
        },
      },
    },
  },
  keys = {
    { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
    -- Toggle a chat buffer open or close
    { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "AI Toggle [C]hat" },
    -- Opens the Chat Buffer
    { "<leader>an", "<cmd>CodeCompanionChat<cr>", mode = { "n", "v" }, desc = "AI [N]ew Chat" },
    -- Opens the action palette
    { "<leader>aa", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "AI [A]ction" },
    -- Adds Visual Selection to Chats
    { "ga", "<cmd>CodeCompanionChat Add<CR>", mode = { "v" }, desc = "AI [A]dd to Chat" },

    -- prompts
    { "<leader>ae", "<cmd>CodeCompanion /explain<cr>", mode = { "v" }, desc = "AI [E]xplain" },
  },
}
