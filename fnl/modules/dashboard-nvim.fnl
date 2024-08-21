;; https://github.com/nvimdev/dashboard-nvim

(local dashboard (require :dashboard))

(local headers {"hello_world" ["                                                                                             "
                               "░░   ░░ ░░░░░░░ ░░      ░░       ░░░░░░      ░░     ░░  ░░░░░░  ░░░░░░  ░░      ░░░░░░  ░░ ░░"
                               "▒▒   ▒▒ ▒▒      ▒▒      ▒▒      ▒▒    ▒▒     ▒▒     ▒▒ ▒▒    ▒▒ ▒▒   ▒▒ ▒▒      ▒▒   ▒▒ ▒▒ ▒▒"
                               "▒▒▒▒▒▒▒ ▒▒▒▒▒   ▒▒      ▒▒      ▒▒    ▒▒     ▒▒  ▒  ▒▒ ▒▒    ▒▒ ▒▒▒▒▒▒  ▒▒      ▒▒   ▒▒ ▒▒ ▒▒"
                               "▓▓   ▓▓ ▓▓      ▓▓      ▓▓      ▓▓    ▓▓     ▓▓ ▓▓▓ ▓▓ ▓▓    ▓▓ ▓▓   ▓▓ ▓▓      ▓▓   ▓▓      "
                               "██   ██ ███████ ███████ ███████  ██████       ███ ███   ██████  ██   ██ ███████ ██████  ██ ██"
                               "                                                                                             "]

                "fxnvim"      ["                                                                                                 "
                               "                                                                                               "
                               "       ██████████████████████████     ████████████████      ██                     "
                               "      ██████████████  ███████████     ███████████  █████                             "
                               "      █████          ████████      █████████    ████████  ███   ███████    "
                               "     ████████████      ███████       █████████        ████████ █████ ██████████████  "
                               "    ████████████       ██████       █████████          ███████ █████ █████ ████ █████  "
                               "  ██████             ███████    ███████████           ██████ █████ █████ ████ █████ "
                               " ██████              ██  ██████  ██████  ███             ████ █████ █████ ████ ██████"
                               " ██████             █   ██████ ██████   ██              ██ █████████████████"
                               " ██████            ██   ████████████   ██              ██ █████████████████"
                               "                                                                                                "]})



(dashboard.setup {:config {:center [{:action "lua require(\"persistence\").load({ last = true })"
                                     :desc "Resume"
                                     :icon "󰦛  " ; 
                                     :key :s}

                                    {:action :ene
                                     :desc "New File"
                                     :icon "  " ;   
                                     :key :n}

                                    {:action "Telescope oldfiles"
                                     :desc "Agenda"
                                     :icon "󰕪  " ; 
                                     :key :a}

                                    {:action :Oil
                                     :desc "Oil"
                                     :icon "󰏇  " ; 
                                     :key :o
                                     :key_hl :type}

                                    {:action "Telescope project"
                                     :desc "Projects"
                                     :icon "  " ;   
                                     :key :p
                                     :key_hl :type}

                                    {:action "Telescope marks"
                                     :desc "Bookmarks"
                                     :icon "󰸕  " ; 
                                     :key :b}

                                    {:action "cd ~/.config/nvim | Telescope find_files"
                                     :desc :Configurations
                                     :icon "  " ; 
                                     :key :c
                                     :key_hl :type}

                                    {:action (fn [] (os.execute "xdg-open https://github.com/horanmustaplot/fxnvim"))
                                     :desc "Go to the github repository"
                                     :icon "  " ;    
                                     :key :g
                                     :key_hl :type}

                                    {:action :qa
                                     :desc :Quit
                                     :icon "  " ;;   
                                     :key :q}]

                           :footer (fn []
                                     (local stats ((. (require :lazy) :stats)))
                                     (local ms (/ (math.floor (+ (* stats.startuptime
                                                                    100)
                                                                 0.5))
                                                  100))

                                     [
                                      (.. " " stats.loaded "/" stats.count) ;   
                                      (.. "󱦟 " ms :ms) ; 
                                      ; (.. " " (. (require :lazy.status) :has_updates))
                                     ])

                           :header headers.fxnvim}
                           :theme :doom})

