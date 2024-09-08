(local builtin (require :statuscol.builtin))	

((. (require :statuscol) :setup) {:relculright true
                                 :segments [{:click "v:lua.ScFa"
                                                    :text [(fn []
                                                             (let [foldlevel (vim.fn.foldlevel vim.v.lnum)
                                                                             foldlevel-before (vim.fn.foldlevel (or (and (>= (- vim.v.lnum 1) 1)
                                                                                                                         (- vim.v.lnum 1))
                                                                                                                    1))
                                                                             foldlevel-after (vim.fn.foldlevel (or (and (<= (+ vim.v.lnum 1)
                                                                                                                            (vim.fn.line "$"))
                                                                                                                        (+ vim.v.lnum 1))
                                                                                                                   (vim.fn.line "$")))
                                                                             foldclosed (vim.fn.foldclosed vim.v.lnum)]
                                                               (when (= foldlevel 0) (lua "return \" \""))
                                                               (when (and (not= foldclosed (- 1)) (= foldclosed vim.v.lnum))
                                                                 (lua "return \"\"")) ; ▶ 
                                                               (when (> foldlevel foldlevel-before) (lua "return \"\""));   󰅀
                                                               (when (> foldlevel foldlevel-after) (lua "return \"╰\""))
                                                               "│"))	]
                                                    :maxwidth 1
                                                    :colwidth 1
                                                    } ; │╎
                                                    {:click "v:lua.ScSa"
                                                    :sign {:auto true
                                                    :maxwidth 1
                                                    :namespace [:diagnostic/signs]}}
                                                    {:click "v:lua.ScLa"
                                                    :text [builtin.lnumfunc]
                                                    :colwidth 2
                                                    :maxwidth 3}
                                                    {:click "v:lua.ScSa"
                                                    :sign {:auto true
                                                    :maxwidth 1
                                                    :name [".*"]
                                                    :wrap true}}
                                                    {:sign {:auto true
                                                    :namespace [:gitsigns]}}
                                                    ]})	

