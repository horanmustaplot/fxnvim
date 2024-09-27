;; Disable mini.indentscope in some file types.
(vim.api.nvim_create_autocmd :FileType
                             {:callback (fn [] (set vim.b.miniindentscope_disable true))
                             :pattern ["dashboard" ;; NOTE: List files you wanna disable mini indentscope here.
                                       "lazy"
                                       "mason"]})	

;; Fix the problem of: lsp-lines virtual text doubling in lazy.nvim 
(vim.api.nvim_create_autocmd :WinEnter
                             {:callback (fn [] (local floating
                                                 (not= (. (vim.api.nvim_win_get_config 0) :relative) ""))
                                              (vim.diagnostic.config {:virtual_lines (not floating)
                                                                      :virtual_text floating}))})	

;; Insert a list of unicode icons
(set-forcibly! insert_unicode_chars
               (fn []
                 (let [start-code 57344
                       end-code 63744]
                   (for [i start-code end-code]
                     (local hex (string.format "%04x" i))
                     (local char (vim.fn.nr2char i))
                     (local line (.. char " 0x" hex "  \n"))
                     (vim.api.nvim_put [line] :l true true)))))	

; Disable folding in some buffers ex: neotree
(vim.api.nvim_create_autocmd :FileType
                             {:callback (fn []
                                          ((. (require :ufo) :detach))
                                          (set vim.opt_local.foldenable false)
                                          (set vim.opt_local.foldcolumn :0))
                              :pattern [:nvcheatsheet :neo-tree :aerial]})
