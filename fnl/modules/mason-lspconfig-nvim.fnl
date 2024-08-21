;; LINK: https://github.com/williamboman/mason-lspconfig.nvim

(local mason (require :mason))
(local mason-lspconfig (require :mason-lspconfig))
(local lspconfig (require :lspconfig))

;; mason.nvim
; ((. mason :setup))

;; mason-lspconfig.nvim 
; ((. mason-lspconfig :setup))

;; Setup servers via lspconfig
; ((. (. lspconfig :lua_ls) :setup) {})
; ((. (. lspconfig :rust_analyzer) :setup) {})	

(. mason :setup)
((. mason-lspconfig :setup) {:ensure_installed [ :lua_ls
                                                 :rust_analyzer
                                                 :fennel_language_server
                                                 :pyright
                                                 :bashls
                                                 :cmake
                                                 :vale_ls]})	

;; ((. (. (require :lspconfig) :clangd) :setup) {})	

;;((. (require :mason-lspconfig) :setup_handlers) (fn [server-name]
;;                                                  ((. (. (require :lspconfig)
;;                                                         server-name)
;;                                                      :setup) {})))

(local handlers
       {1 (fn [server-name]
            ((. (. (require :lspconfig) server-name) :setup) {}))
        :lua_ls (fn []
                  (local lspconfig (require :lspconfig))
                  (lspconfig.lua_ls.setup {:settings {:Lua {:diagnostics {:globals [:vim]}}}}))})	

((. (require :mason-lspconfig) :setup_handlers) handlers)
