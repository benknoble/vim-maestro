# DRY : Don't Repeat Yourself

## Forgotten Semicolons

> samples/semicolons.js

- `$a;` fixes one line
   - How can we repeat that on the next line?
   - What did we have to repeat?
   - Can we avoid that repetition?

### Buy One Get One Free

- `c$`, `C`
- `s`, `cl`
- `^C,` `S`
- `^i,` `I`
- `$a,` `A`
- `A<CR>`, `o`
- `ko,` `O`

These all switch to insert mode, too !

## Whitespace-punctuation=Hard+to+read

> samples/string-concatenation.java

- Let's think about it first...
- We want to replace each `+` with ` + `
   1. First, we have to get there
   2. Second, we have to do the change, and keep it repeatable

### More semicolons

- `f`, `;`

## More Repeatable Actions

- `.`, `u`
- `ftFT`, `;`, `,`
- `/?`, `n`, `N`
- `:s`, `&`, `u`

# The Formula

- move, repeat
- navigation and search commands setup the 'move'
- all of our editing operators, text objects, and insertion commands setup the
  'repeat'
