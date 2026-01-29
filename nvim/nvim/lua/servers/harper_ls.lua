vim.lsp.config('harper_ls', {
    -- This ensures it only activates for Markdown
    filetypes = { "markdown" }, 
    
    settings = {
        ["harper-ls"] = {
            linters = {
                SpellCheck = true,
                SpelledNumbers = false,
                AnA = true,
                SentenceCapitalization = true,
                UnclosedQuotes = true,
                RepeatedWords = true,
                LongSentences = true,
            },
            -- If you want to ignore specific words (like technical jargon)
            userDictPath = vim.fn.stdpath("config") .. "/spell/en.utf-8.add",
        },
    },
})
