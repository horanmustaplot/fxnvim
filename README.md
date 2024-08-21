# fxnvim

**Description**: A neovim configurations written in fennel aims to be as good as possible.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [keybindings](#keybindings)
- [FAQ](#faq)

## requirements

- There are some internal plugins requirements, check them if you want everything to work perfectly! I'll add them here later on.

### Installation

1. With ssh.
```bash
git clone --depth 1 git@github.com:horanmustaplot/fxnvim.git ~/.config/nvim 
```

1. With https.
```bash
git clone --depth 1 https://github.com/horanmustaplot/fxnvim.git ~/.config/nvim 
```

#### keybindings

## File and Directory Management
| Mode   | Keybinding             | Action                              |
|--------|------------------------|-------------------------------------|
| Normal | `-`                    | Open parent directory (Oil)         |

## Splits and Window Management
| Mode   | Keybinding             | Action                               |
|--------|------------------------|--------------------------------------|
| Normal | `<Leader>w`            | Save file                            |
| Normal | `<LocalLeader>s`       | Open horizontal split                |
| Normal | `<LocalLeader>w`       | Open vertical split                  |
| Normal | `Ctrl + Shift + H`     | Move current split to the left       |
| Normal | `Ctrl + Shift + J`     | Move current split down              |
| Normal | `Ctrl + Shift + K`     | Move current split up                |
| Normal | `Ctrl + Shift + L`     | Move current split to the right      |
| Normal | `Ctrl + K`             | Move to the split above              |
| Normal | `Ctrl + J`             | Move to the split below              |
| Normal | `Ctrl + H`             | Move to the split on the left        |
| Normal | `Ctrl + L`             | Move to the split on the right       |
| Normal | `Alt + D`              | Increase window height               |
| Normal | `Alt + F`              | Decrease window height               |
| Normal | `Alt + S`              | Increase window width                |
| Normal | `Alt + G`              | Decrease window width                |
| Normal | `<Leader>h`            | Open new horizontal split            |
| Normal | `<Leader>v`            | Open new vertical split              |

## Scrolling
| Mode   | Keybinding             | Action                              |
|--------|------------------------|-------------------------------------|
| Normal | `Ctrl + U`             | Scroll up and center                |
| Normal | `Ctrl + D`             | Scroll down and center              |

## Navigation and Search
| Mode   | Keybinding             | Action                              |
|--------|------------------------|-------------------------------------|
| Normal | `s`                    | Jump to a word with Hop             |
| Normal | `<Leader>b`            | Telescope buffers                   |
| Normal | `<Leader>lb`           | Telescope recall theme=ivy          |
| Normal | `<Leader>tb`           | RecallToggle (Telescope buffers)    |
| Normal | `<Leader>mx`           | MaximizerToggle! (Telescope buffers)|

## LSP and Code Actions
| Mode   | Keybinding             | Action                              |
|--------|------------------------|-------------------------------------|
| Normal | `<Leader>l`            | Toggle lsp_lines                    |
| Normal | `Ctrl + Enter`         | ToggleTerm direction=float          |

## Insert Mode Enhancements
| Mode   | Keybinding             | Action                              |
|--------|------------------------|-------------------------------------|
| Insert | `jj`                   | Exit insert mode with jj            |

## Text Editing
| Mode   | Keybinding             | Action                              |
|--------|------------------------|-------------------------------------|
| Visual | `p`                    | Paste without losing text           |

##### faq

1. Why did you choose Fennel over Lua? 
- I have fun configuring with fennel more than lua.

2. Can I customize this configuration?
- I guess :)!

