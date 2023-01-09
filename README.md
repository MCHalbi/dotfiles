# .config
## NVim
### Directory structure
```
.
├── after/
├── colors/
├── ftdetect/
├── init/
│   ├── plugins.vim  --- List of installded plugins (using vim-plug)
│   ├── ...
│   └── plugins/  --- Contains files with configurations or keybindings for plugins
│       └── ...
└── init.vim ---
```

### Keybindings
| Keybinding | Command | Effect | Plugin |
| --- | --- | --- | --- |
| `<C-p>` | `:Files` | Lists all files in the fuzzy finder | fzf.vim |
| `<leader><C-p>` | `:GFiles` | List all git-versioned files in the fuzzy finder | fzf.vim |
| `<C-m>` | `<Plug>MarkdownPreview` |  | markdown-preview |
| `<leader><C-m>` | `<Plug>MarkdownPreviewStop` | | markdown-preview |
## Yadm
# .scripts 
