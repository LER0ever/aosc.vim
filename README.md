# aosc.vim
An unofficial vim plugin for AOSC development and packaging.

## Features
- Different highlight group for Autobuild properties and switches
- Package Version validity check
- Package Name, Dep validity check
- Code Snippets for creating a new package
- Leader-based keymap to directly build/update the current package

## Usage
Make sure vim-plug and UltiSnips are properly installed.  
Add `Plug 'LER0ever/aosc.vim'` to your vimrc.  

- Smart Template
    - Use `ver` to trigger snippets for ACBS Spec
    - Use `pkg` to trigger snippets for Autobuild defines
    - Use `pat` to trigger snippets for Autobuild patches
- Keymap
    - `<Leader>dd` to build the current package
    - `<Leader>du` to automatically bump the minor version and rebuild (used for small updates)

## ScreenShot
![aosc.vim](http://i.imgur.com/9XT6vF2.png)

## License
Apache License, Version 2.0
