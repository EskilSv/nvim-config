return {
  provider = "openrouter",
  providers = {
    openrouter = {
      __inherited_from = 'openai',
      endpoint = "https://openrouter.ai/api/v1",
      api_key_name = 'OPENROUTER_API_KEY',
      model = 'anthropic/claude-sonnet-4',
      max_tokens = 65536,
     --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
    },
    -- openrouter = {
    --   __inherited_from = 'openai',
    --   endpoint = "https://openrouter.ai/api/v1",
    --   api_key_name = 'OPENROUTER_API_KEY',
    --   model = 'google/gemini-2.5-flash-preview-05-20'
    --  --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
    -- }
  },
}
