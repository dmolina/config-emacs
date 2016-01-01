# My Emacs configuration

My personal emacs configuration (avoiding melpa/elpa packages).

- Several interesting issues:

	- Vim mode by default.

	- Several themes: monokai and spolsky are my favourites.

	- Simpler: No Splash image, no ask for everything, close file open with emacsclient
    automatically.

	- Using the PDF-Tools instead of Docview, it is a lot better.

## Templates for org-mode ##

To create a file .bea or .tpl init the files for org-export with all the default options.

- Format .bea: Customised template for the beamer slides used in my teaching courses. 

- Format .tpl: Customised template for documentation, with margin using fancyheaders. 

All these templates are in ~/.emacs.d/orgtemplates.

## Several custom hotkeys ##

- **f3** Next window.
- **f4** Go to list of buffer.
- **f8** Apply flyspell with dictionary.
- **M-f8** Go to next wrong word detected by flyspell.
- **f10** Go to current org-clock active task.
- **f11** fullscreen.
- **f12** compile. 

- Auctex and Ref:

