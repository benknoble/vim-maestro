# Starting vim

- `vim <file>...`

# Movement (Normal mode)

- `<Esc>`
- `h`
- `j`
- `k`
- `l`
- `gg`
- `G` and `{line number}G`

# Quitting

- `:q!`
- `:wq`

# Editing

## Deletion

- `x`
- `dw`
- `d$`
- `dd`

## Insertion (Insert Mode)

- `i` and `I`
- `a` and `A`
- `r` and `R`
- `o` and `O`
- `c` and `C`

## Operators and Motions

- `d` is an *operator*
- `w`, `e`, `$`, `0` are *motions*
- motions and operators take *counts*
   - e.g., `2w` or `2dw` or `d2w`
- `%`

## Undo & Redo

- `u`
- `U`
- `<C-r>`

## Copy & Paste (Yank & Put)

- some operators grab text into registers
- `p`
- `y`

## Substitution

- `:{range}s/{old}/{new}/{flags}`
- `g` and `c` flags

## Ranges

- `:{line number},{line number}`
- `:%`
- `:'<,'>`

## External Commands

- `:!{ext command}`

## Reading & Writing Files to & from Disk

- `:w {file name}`
- `:r {file name}`
- `:r !{ext command}`
- `:w !{ext command}`

## Visual Mode

- `v`

# Interface

## Location & File

- `<C-g>`
- `'ruler'` option (default: off)

## Search

- `/`
- `?`
- `n` and `N`
- `'wrapscan'` option (default: on)
- `'ignorecase'` option (default: off)
- `'incsearch'` option (default: off)
- `'hlsearch'` option (default: off)

## Jumping

- `<C-o>` (out)
- `<C-i>` (in)

## Options

- `:set {option name}`
- `:set no{option name}`

## Help

- `:help`

## Windows

- `<C-w><C-w>`

## Completion

`:<Tab>`

## Vimrc

- `~/.vim/vimrc`
