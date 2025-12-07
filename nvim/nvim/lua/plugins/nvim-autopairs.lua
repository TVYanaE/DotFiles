return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function ()
        local npairs = require("nvim-autopairs")
        local Rule = require("nvim-autopairs.rule")
        local cond = require('nvim-autopairs.conds')

        npairs.setup({})

        -- Remove rule for autopairing ' in all files
        npairs.remove_rule("'")

        -- Return fule for autupairing ' in all files except Rust files
        npairs.add_rule(
            Rule("'","'")
            :with_pair(cond.not_filetypes({"rust"}))
            :with_pair(cond.not_after_regex("."))
        )

        -- Add Rule for autopairing <> in all files except html file
        npairs.add_rule(
            Rule("<", ">")
            :with_pair(cond.not_filetypes({"html"}))
            :with_pair(cond.not_after_regex("."))
        )
    end
}
