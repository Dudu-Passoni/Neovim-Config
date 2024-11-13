# Neovim-Config
Configuration with plugins to make neovim better than every modern text editor available.

## Environment
![Setup](https://go-skill-icons.vercel.app/api/icons?i=linux,arch,kitty,neovim,lua,telescope)

##
# Vim Cheat Sheet
https://github.com/rtorr/vim-cheat-sheet

## Movement

### Cursor movement

```h``` - move cursor left\
```j``` - move cursor down\
```k``` - move cursor up\
```l``` - move cursor right

```$``` - jump to the end of the line \
```0``` - jump to the start of the line

```gg``` - go to the first line of the document\
```G``` - go to the last line of the document\
```5gg or 5G``` - go to line 5

```w``` - jump forwards to the start of a word \
```e``` - jump forwards to the end of a word \
```b``` - jump backwards to the start of a word\
```ge``` - jump backwards to the end of a word

```zz``` - center cursor on screen\
```zt``` - position cursor on top of the screen\
```zb``` - position cursor on bottom of the screen 

```fx``` - jump to next occurrence of character x\
```tx``` - jump to before next occurrence of character x\
```Fx``` - jump to the previous occurrence of character x\
```Tx``` - jump to after previous occurrence of character x 

```}``` - jump to next paragraph (or function/block, when editing code)\
```{``` - jump to previous paragraph (or function/block, when editing code) 

### Screen movement

```H``` - move to top of screen\
```M``` - move to middle of screen\
```L``` - move to bottom of screen

```Ctrl + e``` - move screen down one line (without moving cursor)\
```Ctrl + y``` - move screen up one line (without moving cursor)

```Ctrl + b``` - move screen up one page (cursor to last line)\
```Ctrl + f``` - move screen down one page (cursor to first line)

```Ctrl + d``` - move cursor and screen down 1/2 page\
```Ctrl + u``` - move cursor and screen up 1/2 page 

## Insert Mode

```i``` - insert before the cursor\
```I``` - insert at the beginning of the line

```a``` - insert (append) after the cursor\
```A``` - insert (append) at the end of the line

```o``` - append (open) a new line below the current line\
```O``` - append (open) a new line above the current line

```ea``` - insert (append) at the end of the word 

```Esc``` - Exit insert mode

## Editing

```r``` - replace a single character.\
```R``` - replace more than one character, until ESC is pressed. 

```gu``` - change to lowercase up to motion\
```gU``` - change to uppercase up to motion
```g~``` - switch case up to motion

```s``` - delete character and substitute text (same as cl)\
```S``` - delete line and substitute text (same as cc)

```u``` - undo\
```U``` - restore (undo) last changed line

```Ctrl + r``` - redo

## Marking text (visual mode)

```v``` - start visual mode, mark lines, then do a command (like y-yank)\
```V``` - start linewise visual mode \
```Ctrl + v``` - start visual block mode 

```aw``` - mark a word\
```ab``` - mark a block with ()\
```aB``` - mark a block with {}\
```at``` - mark a block with <> tags 

```ib``` - mark inner block with ()\
```iB``` - mark inner block with {}\
```it``` - mark inner block with <> tags 

```o``` - move to other end of marked area\
```O``` - move to other corner of block 

### Visual commands

```>``` - shift text right   \
```<``` - shift text left

```y``` - yank (copy) marked text

```d``` - delete marked text

```~``` - switch case

```u``` - change marked text to lowercase\
```U``` - change marked text to uppercase

## Cut and paste

```yy``` - yank (copy) a line\
```2yy``` - yank (copy) 2 lines \
```yw``` - yank (copy) the characters of the word from the cursor position to the start of the next word \
```y$ or Y``` - yank (copy) to end of line 

```p``` - put (paste) the clipboard after cursor\
```P``` - put (paste) before cursor\
```gp``` - put (paste) the clipboard after cursor and leave cursor after the new text\
```gP``` - put (paste) before cursor and leave cursor after the new text 

```dd``` - delete (cut) a line\
```2dd``` - delete (cut) 2 lines \
```:3,5d``` - delete lines starting from 3 to 5 

```:g/{pattern}/d``` - delete all lines containing pattern\
```:g!/{pattern}/d``` - delete all lines not containing pattern 

```x``` - delete (cut) character 

## Indent text

```>>``` - indent (move right) line one shiftwidth\
```<<``` - de-indent (move left) line one shiftwidth

```3==``` - re-indent 3 lines 

## Exiting

```:w``` - write (save) the file, but don't exit\ 
```:q``` - quit (fails if there are unsaved changes) \
```:wq or :x or ZZ``` - write (save) and quit 

## Search and replace

```/pattern``` - search for pattern\
```?pattern``` - search backward for pattern 

```n``` - repeat search in same direction\
```N``` - repeat search in opposite direction 

```:noh``` - remove highlighting of search matches 

```:%s/old/new/g``` - replace all old with new throughout file 

## Tabs

```:tabnew or :tabnew {page.words.file}``` - open a file in a new tab \
```Ctrl + wT``` - move the current split window into its own tab

```gt or :tabn[ext]``` - move to the next tab\
```gT or :tabp[revious]``` - move to the previous tab\
```#gt``` - move to tab number # 

```:tabm[ove] #``` - move current tab to the #th position (indexed from 0)\
```:tabc[lose]``` - close the current tab and all its windows\
```:tabo[nly]``` - close all tabs except for the current one\
```:tabdo command``` - run the command on all tabs (e.g. :tabdo q - closes all opened tabs) 

## Working with multiple files

### Buffers

```:e[dit]``` file - edit a file in a new buffer\
```:bn[ext]``` - go to the next buffer\
```:bp[revious]```- go to the previous buffer\
```:bd[elete]``` - delete a buffer (close a file)\
```:b[uffer]#``` - go to a buffer by index #\
```:b[uffer] file``` - go to a buffer by file\
```:ls or :buffers``` - list all open buffers\
```:sp[lit] file``` - open a file in a new buffer and split window\
```:vs[plit] file``` - open a file in a new buffer and vertically split window\
```:vert[ical] ba[ll]``` - edit all buffers as vertical windows\
```:tab ba[ll]``` - edit all buffers as tabs 

### Windows

```Ctrl + ws``` - split window\
```Ctrl + wv``` - split window vertically\
```Ctrl + ww``` - switch windows\
```Ctrl + wq``` - quit a window\
```Ctrl + wx``` - exchange current window with next one\
```Ctrl + w=``` - make all windows equal height & width\
```Ctrl + wh``` - move cursor to the left window (vertical split)\
```Ctrl + wl``` - move cursor to the right window (vertical split)\
```Ctrl + wj``` - move cursor to the window below (horizontal split)\
```Ctrl + wk``` - move cursor to the window above (horizontal split)\
```Ctrl + wH``` - make current window full height at far left (leftmost vertical window)\
```Ctrl + wL``` - make current window full height at far right (rightmost vertical window)\
```Ctrl + wJ``` - make current window full width at the very bottom (bottommost horizontal window)\
```Ctrl + wK``` - make current window full width at the very top (topmost horizontal window) 

## Macros

```qa``` - record macro a\
```q``` - stop recording macro\
```@a``` - run macro a\
```@@``` - rerun last run macro

## Marks

```:marks``` - list of marks\
```ma``` - set current position for mark A 

``` `" ``` - go to the position when last editing this file\
``` `. ``` - go to the position of the last change in this file\
``` `` ``` - go to the position before the last jump 
