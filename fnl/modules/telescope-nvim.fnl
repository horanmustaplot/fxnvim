;; https://github.com/nvim-telescope/telescope.nvim

(local telescope (require :telescope))

(telescope.setup {:defaults {:prompt_prefix "   " ;; 
                                   :selection_caret "  "
                                   :sorting_strategy :ascending
                                   :layout_strategy  :horizontal
                                   :layout_config {:height 0.8
                                                   :width 0.8
                                                   :preview_width 0.5
                                                   :prompt_position :top}}

                                                   :pickers {:colorscheme {:enable_preview :true}}}) ;; Enale colorscheme preview

;; Load extensions
; (telescope.load_extension :bookmarks)
; (telescope.load_extension :projects)

