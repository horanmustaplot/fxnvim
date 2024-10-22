;; LINK: https://github.com/williamboman/mason-lspconfig.nvim

(local mason (require :mason))
(local mason-lspconfig (require :mason-lspconfig))
(local lspconfig (require :lspconfig))


(. mason :setup)
((. mason-lspconfig :setup) {:ensure_installed [ :lua_ls
                                                 :html
                                                 :cssls
                                                 :fennel_language_server
                                                 :nil_ls
                                                 :clangd
                                                 :marksman
                                                 :gopls
                                                 :pyright
                                                 :rust_analyzer
                                                 :bashls
                                                 :cmake
                                                 :vale_ls]})	

(local handlers
       {1 (fn [server-name]
            ((. (. (require :lspconfig) server-name) :setup) {}))
        :lua_ls (fn []
                  (local lspconfig (require :lspconfig))
                  (lspconfig.lua_ls.setup {:settings {:Lua {:diagnostics {:globals [:vim]}}}}))})	

((. (require :mason-lspconfig) :setup_handlers) handlers)

; Removing seeing the vim error
((. (require :lspconfig) :fennel_language_server :setup) {:settings {:fennel {:diagnostics {:globals [:vim]}}}})	

