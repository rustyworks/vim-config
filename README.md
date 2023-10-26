## Install

1. `git clone https://github.com/rustyworks/vim-config.git`
2. `cd vim-config`
3. `./link.sh` for neovim user or `./link_vim_only.sh` for vim user

## Reinstall plugin

1. `:BundleClean` (if you have previously used this Neo Vim config)
2. `:BundleInstall` (This will clone and install all of the plugins from github.)

## Customizing

## Key mappings (remember case matters!)

* `<leader>w` - toggle line wrapping
* `<leader><spacebar>` - clear search highlighting

## CtrlP

Provides convenient ways to quickly reach the
buffer/file/command/bookmark/tag you want. CtrlP searches with the
fuzzy/partial pattern to which it converted an entered pattern.

* `<leader>t` - fuzzy find files
* `<leader>b` - fuzzy find open buffers
* `<leader>T` - use fuzzy finder to navigate via tags instead of built-in tag navigation
* `<C-j>` - open selected item in window in horizontal split
* `<C-k>` - open selected item in vertical split

## UndoTree

Awesome visual representation of `vim` undo tree.

**Customizations**

* `<leader>h` - Toggle gundo

## T-Comment

TComment works like a toggle, i.e., it will comment out text that
contains uncommented lines, and it will remove comment markup for
already commented text (i.e. text that contains no uncommented lines).

If the file-type is properly defined, TComment will figure out which
comment string to use. Otherwise you use |TCommentDefineType()| to
override the default choice.

TComment can properly handle an embedded syntax, e.g., ruby/python/perl
regions in vim scripts, HTML or JavaScript in php code etc.

* `gc{motion}` - Toggle comments (for small comments within one line the &filetype_inline style will be used, if defined)
* `gcc`        - Toggle comment for the current line
* `gC{motion}` - Comment region
* `gCc`        - Comment the current line


## Fugitive

I'm not going to lie to you; fugitive.vim may very well be the best
Git wrapper of all time.  Check out these features:

View any blob, tree, commit, or tag in the repository with `:Gedit` (and
`:Gsplit`, `:Gvsplit`, `:Gtabedit`, ...).  Edit a file in the index and
write to it to stage the changes.  Use `:Gdiff` to bring up the staged
version of the file side by side with the working tree version and use
Vim's diff handling capabilities to stage a subset of the file's
changes.

Bring up the output of `git status` with `:Gstatus`.  Press `-` to
`add`/`reset` a file's changes, or `p` to `add`/`reset` `--patch` that
mofo.  And guess what `:Gcommit` does!

`:Gblame` brings up an interactive vertical split with `git blame`
output.  Press enter on a line to reblame the file as it stood in that
commit, or `o` to open that commit in a split.  When you're done, use
`:Gedit` in the historic buffer to go back to the work tree version.

`:Gmove` does a `git mv` on a file and simultaneously renames the
buffer.  `:Gremove` does a `git rm` on a file and simultaneously deletes
the buffer.

Use `:Ggrep` to search the work tree (or any arbitrary commit) with
`git grep`, skipping over that which is not tracked in the repository.
`:Glog` loads all previous revisions of a file into the quickfix list so
you can iterate over them and watch the file evolve!

`:Gread` is a variant of `git checkout -- filename` that operates on the
buffer rather than the filename.  This means you can use `u` to undo it
and you never get any warnings about the file changing outside Vim.
`:Gwrite` writes to both the work tree and index versions of a file,
making it like `git add` when called from a work tree file and like
`git checkout` when called from the index or a blob in history.

Use `:Gbrowse` to open the current file on GitHub, with optional line
range (try it in visual mode!).  If your current repository isn't on
GitHub, `git instaweb` will be spun up instead.

Add `%{fugitive#statusline()}` to `'statusline'` to get an indicator
with the current branch in (surprise!) your statusline.

Oh, and of course there's `:Git` for running any arbitrary command.

## SuperTab

In insert mode, start typing something and hit `<TAB>` to tab-complete
based on the current context.
