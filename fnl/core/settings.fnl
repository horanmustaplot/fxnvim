(import-macros {: set! : set+} :hibiscus.vim)

;; Set spelling settings
(set! spell true)
(set! spelllang [:en_us])	

;; Define a list of fonts
(local fonts ["0xProto Nerd Font:h9.5"
              "Liga SFMono Nerd Font:h9.5"
              "Terminess Nerd Font:h9.5"
              "JetBrainsMono Nerd Font:h9"
              "FiraCode Nerd Font:h9"])

;; Set the guifont option to the second font in the list
(set! guifont (. fonts 5))

;; Enable true color support
(set! termguicolors)

;; Disable wrapping
(set! wrap false)

;; Show cursorline
(set! cursorline true)

;; Indentation
(set! expandtab)
(set! smartindent)
(set! shiftwidth 2)
(set! tabstop 2)

;; Line numbers
(set! number)
(set! relativenumber)
(set! numberwidth 3)
(set! numberwidth 3)

;; Disable swap file
(set! swapfile false)	

;; List characters
(set! list)
(set! listchars { :tab      "│ "
                  :extends  "»"
                  :nbsp     "␣"
                  :precedes "«"
                  :trail    "·"})

(set! fillchars { :diff      "╱"
                  :eob       " "
                  :fold      " "
                  :foldclose ""
                  :foldopen  ""
                  :foldsep   " "
                  :horiz     "-"
                  :msgsep    "─"
                  :vert      "│"})

;; Enable concealment
(set! conceallevel  2)
(set! concealcursor "")

;; For ufo nvim
(set! foldcolumn              :1)
(set! foldlevel               99)
(set! foldlevelstart          99)
(set! foldenable              true)
(set  vim.opt_local.foldlevel 99)

;; Insert-mode completion
;; (set+ :shortmess :c)

;; Use system register as default register
(vim.opt.clipboard:append :unnamedplus)

;; 
(set vim.g.mapleader " ")
(set vim.g.maplocalleader ".")	

;; Set diagnostic digns
(local signs {:Error " " :Hint " " :Info " " :Warn " "}) ;;  
(each [type icon (pairs signs)] (local hl (.. :DiagnosticSign type))
  (vim.fn.sign_define hl {:numhl hl :text icon :texthl hl}))


(vim.cmd "colorscheme oxocarbon")

;; gives a global statusline instead of one for every split, and there is always a separator between splits
(set! laststatus 3)

(set! scrolloff 10)

(set! guicursor "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor")

