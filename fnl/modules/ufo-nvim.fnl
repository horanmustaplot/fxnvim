(local capabilities (vim.lsp.protocol.make_client_capabilities))
(set capabilities.textDocument.foldingRange
     {:dynamicRegistration false :lineFoldingOnly true})
(local language-servers ((. (. (require :lspconfig) :util) :available_servers)))
(each [_ ls (ipairs language-servers)]
  ((. (. (require :lspconfig) ls) :setup) {: capabilities}))
((. (require :ufo) :setup))	
