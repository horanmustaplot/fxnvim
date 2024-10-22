;; LINK: https://github.com/OXY2DEV/markview.nvim

(local markview (require :markview))

(markview.setup {:callbacks {:on_enable (fn [_ win]
                                          (tset (. vim.wo win)
                                                :conceallevel 2)
                                          (tset (. vim.wo win)
                                                :concealcursor
                                                :c))}
                :hybrid_modes [:n :i]
                :modes [:n :no :c :i]})	

