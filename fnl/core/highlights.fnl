;; dashboard
(vim.api.nvim_set_hl 0 :DashboardHeader {:bg "#282828" :fg "#D4BE98"})	
(vim.api.nvim_set_hl 0 :DashboardFooter {:bg "#282828" :fg "#C99B53"})	
(vim.api.nvim_set_hl 0 :DashboardIcon   {:bg "#282828" :fg "#C99B53"})	

;; noice
(vim.api.nvim_set_hl 0 :NoiceCmdlinePopupBorder {:bg :NONE :fg "#D4BE98"})
(vim.api.nvim_set_hl 0 :DiagnosticSignInfo      {:bg :NONE :fg "#D4BE98"})

;; multicursors
(vim.api.nvim_set_hl 0 :MultiCursor     {:bg :NONE :fg "#9E9378"})
(vim.api.nvim_set_hl 0 :MultiCursorMain {:bg :NONE :fg "#9E9378"})

;; Lsp-lines
(vim.api.nvim_set_hl 0 :DiagnosticVirtualTextError {:bg :NONE :fg "#EA6962"})
(vim.api.nvim_set_hl 0 :DiagnosticVirtualTextWarn  {:bg :NONE :fg "#D8A657"})
(vim.api.nvim_set_hl 0 :DiagnosticVirtualTextInfo  {:bg :NONE :fg "#78A59B"})
(vim.api.nvim_set_hl 0 :DiagnosticVirtualTextHint  {:bg :NONE :fg "#A2AE61"})

;; Bookmarks
(vim.api.nvim_set_hl 0 "@comment.note" {:bg :NONE :bold false :fg "#A89984" :italic false})	

;; Change the float background color
(vim.api.nvim_set_hl 0 "FloatBorder" {:bg :NONE :bold false :fg "#A89984" :bg "#282828"})	
