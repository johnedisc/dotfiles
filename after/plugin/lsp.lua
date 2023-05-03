
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

---- (Optional) Configure lua language server for neovim
--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
--
--lsp.configure('omnisharp', {
--  on_attach = function(client, bufnr)
--    print('hello omni')
--    client.server_capabilities.semanticTokensProvider = {
--      full = vim.empty_dict(),
--      legend = {
--        tokenModifiers = { "static_symbol" },
--        tokenTypes = {
--          "comment",
--          "excluded_code",
--          "identifier",
--          "keyword",
--          "keyword_control",
--          "number",
--          "operator",
--          "operator_overloaded",
--          "preprocessor_keyword",
--          "string",
--          "whitespace",
--          "text",
--          "static_symbol",
--          "preprocessor_text",
--          "punctuation",
--          "string_verbatim",
--          "string_escape_character",
--          "class_name",
--          "delegate_name",
--          "enum_name",
--          "interface_name",
--          "module_name",
--          "struct_name",
--          "type_parameter_name",
--          "field_name",
--          "enum_member_name",
--          "constant_name",
--          "local_name",
--          "parameter_name",
--          "method_name",
--          "extension_method_name",
--          "property_name",
--          "event_name",
--          "namespace_name",
--          "label_name",
--          "xml_doc_comment_attribute_name",
--          "xml_doc_comment_attribute_quotes",
--          "xml_doc_comment_attribute_value",
--          "xml_doc_comment_cdata_section",
--          "xml_doc_comment_comment",
--          "xml_doc_comment_delimiter",
--          "xml_doc_comment_entity_reference",
--          "xml_doc_comment_name",
--          "xml_doc_comment_processing_instruction",
--          "xml_doc_comment_text",
--          "xml_literal_attribute_name",
--          "xml_literal_attribute_quotes",
--          "xml_literal_attribute_value",
--          "xml_literal_cdata_section",
--          "xml_literal_comment",
--          "xml_literal_delimiter",
--          "xml_literal_embedded_expression",
--          "xml_literal_entity_reference",
--          "xml_literal_name",
--          "xml_literal_processing_instruction",
--          "xml_literal_text",
--          "regex_comment",
--          "regex_character_class",
--          "regex_anchor",
--          "regex_quantifier",
--          "regex_grouping",
--          "regex_alternation",
--          "regex_text",
--          "regex_self_escaped_character",
--          "regex_other_escape",
--        },
--      },
--      range = true,
--    }
--  end,
--  settings = {
--    completions = {
--      completeFunctionCalls = true
--    }
--  }
--})


lsp.setup()


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

local luasnip = require("luasnip")

-- html snippets in javascript and javascriptreact
luasnip.snippets = {
  html = {},
}
luasnip.filetype_extend("javascript", {"html"})
luasnip.filetype_extend("javascriptreact", {"html"})
luasnip.filetype_extend("typescriptreact", {"html"})

-- load snippets
--require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_vscode').lazy_load({ paths = { "~/.config/nvim/snippets" } })

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
