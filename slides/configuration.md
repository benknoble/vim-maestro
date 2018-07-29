# Basics & Configuration

What does every (code) editor need?

> samples/hello.c

## Some answers

- Syntax highlighting
- Line numbers
- Indent settings

> `~/.vim/vimrc`

### Syntax highlighting (and pretty colors)

> ~/.vim/vimrc
> samples/hello.c

- A note about background...
- `syntax on`

### Repetition & Line numbers

> samples/repeat.txt

- `number` vs. `relativenumber`
   - Why would we want `relativenumber` ?
   - `d3j`
- `ruler`

### Indent

> samples/indent-me.c

- `>` and `<`
- `=`

- Tabs vs. spaces
- `expandtab`
- `tabstop` vs. `softtabstop` vs. `shiftwidth` vs. `shiftround`
- `autoindent`
- `list` and `listchars`

## But wait, there's more !

### File-types

Let's take a look at tabs versus spaces again, shall we?

> samples/hello.c
> samples/hello.py

- `filetype plugin indent on`
- `:retab`

### Brackets

> samples/unbalanced.py

- `showmatch`

> samples/hello.c

- text objects

### Searching

> samples/needle.txt

- `incsearch`
- `hlsearch`
- `ignorecase`
   - `smartcase`

### Navigation

- Status bars?
   - `laststatus`
- Vim commands
   - `showcmd`
