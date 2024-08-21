;; https://github.com/nvim-treesitter/nvim-treesitter

;; (local treesitter (require :nvim-treesitter.configs))

(local configs (require :nvim-treesitter.configs))

(tset ((. (require :nvim-treesitter.parsers) :get_parser_configs)) :plantuml
      {:filetype :plantuml
       :install_info {:branch :master
                      :files [:src/parser.c]
                      :url "/home/x_user/dotfiles/tree_sitter_plantuml"}})

(configs.setup { :ensure_installed [ :query ;; Required by InspectTree.
                                     ;; noice.
                                     :vim 
                                     :regex
                                     ;; For highlighting stuff in noice.
                                     :bash
                                     :markdown
                                     :markdown_inline
                                     ;; Markview - https://github.com/OXY2DEV/markview.nvim#-requirements 
                                     :html
                                     ;; Can be deleted.
                                     :scheme
                                     :json
                                     :jsonc
                                     :csv
                                     :c
                                     :cpp
                                     :doxygen
                                     :lua
                                     :fennel
                                     :python
                                     :vimdoc
                                     :plantuml]
               :highlight {:enable true}
               :indent {:enable true}
               :sync_install false
               :auto_install true
               })

