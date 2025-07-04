# Cheatsheet
Cheatsheet of (mainly) custom setting by the dotfiles.

## Neovim
Leader is `<space>`

normal mode
```
<space>e  # vim.diagnostic.open_float
[d  # vim.diagnostic.goto_prev
]d  # vim.diagnostic.goto_next
<space>q  # vim.diagnostic.setloclist

gD  # vim.lsp.buf.declaration
gd  # vim.lsp.buf.definition
K  # vim.lsp.buf.hover
gi  # vim.lsp.buf.implementation
<space>D  # vim.lsp.buf.type_definition
<space>rn  # vim.lsp.buf.rename
<space>ca  # vim.lsp.buf.code_action
gr  # vim.lsp.buf.references, opts)
<space>f  # function() vim.lsp.buf.format { async = true } end

<leader>ff  # builtin.find_files
<leader>fg  # builtin.live_grep (need ripgrep package)
<leader>fb  # builtin.buffers
<leader>fh  # builtin.help_tags

<leader>e  # NvimTreeToggle
```

autocompletion
```
<C-b>  # cmp.mapping.scroll_docs(-4)
<C-f>  # cmp.mapping.scroll_docs(4)
<C-Space>  # cmp.mapping.complete()
<C-e>  # cmp.mapping.abort()
<CR>  # cmp.mapping.confirm({ select = true })
```

folding
```
zf{motion} or {Visual}zf  # create a fold
zo  # open one fold under the cursor
zO  # open all fold recursively:
```

buffer
```
:e  # open file
:bd  # close buffer
:ls  # list buffer
:b {buffer number}  # switch buffer
```

buffline
```
<leader>bn  # bufferline.cycle_next
<leader>bp  # bufferline.cycle_prev
<leader>bc  # bufferline.pick
<leader>bd  # bufferline.pick_close
<leader>sd  # bufferline.sort_by_directory
```

diffview
```
<leader>gd  # diffview.Open
<leader>gc  # diffview.Close
<leader>gh  # diffview.current_file_history
```

window
prefix is `<C-w>`
```
s  # split window horizontally
v  # split window vertically
c  # close window
h  # move pane to left
j  # move pane to dowm
k  # move pane to up
l  # move pane to right
```

## tmux
prefix is `<C-q>` 
```
?  # list key bind
s  # show sessions
d  # detach from the session
$  # rename session

x  # delete pane

|  # split pane horizontally
-  # split pane vertically
h  # move pane to left
j  # move pane to dowm
k  # move pane to up
l  # move pane to right
H  # resize pane to left (keep prefix for 500ms)
J  # resize pane to dowm (keep prefix for 500ms)
K  # resize pane to up (keep prefix for 500ms)
L  # resize pane to right (keep prefix for 500ms)
```

## R
```
<leader>rf # start R session
<leader>rq # quit R session
<C-CR> # send line and go to next line
:RMapsDesc # displays the list of key bindings followed by short descriptions.
:RConfigShow # displays the list of configuration options and their current values.
```
