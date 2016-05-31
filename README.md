# My Emacs configuration

My personal emacs configuration (avoiding melpa/elpa packages).

- Several interesting issues:

	- automatic installation of required packages.

	- Vim mode by default.

	- Several themes: monokai and spolsky are my favourites.

	- Simpler: No Splash image, no ask for everything, close file open with emacsclient
    automatically.

	- Using the PDF-Tools instead of Docview, it is a lot better.

	- Spaceline: copied from spacemacs (included visualisation of battery).
	
	- Google Maps.
	
	- Specific plugins for python: detection in real time, tests, search documentation, .... 
	
	- avy package (to move more quickly into the text).
	
	- calfw calendar, with my calendar information.
	
	- Configurated capture with todo and review options.
	
	- Configurated org-caldav to interaction with google calendar, it syncronize with my trabajo (work)
	  calendar (it can but personalised).
	  
	
## Templates for org-mode ##

To create a file .bea or .tpl init the files for org-export with all the default options.

- Format .bea: Customised template for the beamer slides used in my teaching courses. 

- Format .tpl: Customised template for documentation, with margin using fancyheaders. 

All these templates are in ~/.emacs.d/orgtemplates.

## Several custom hotkeys ##

- **F2** Org-capture.
- **F3** Next window.
- **F4** Go to list of buffer.
- **F6** Select region.
- **F7** Compile org-mode to beamer.
- **F8** Apply flyspell with dictionary.
- **F9** Compile org-mode to latex.
- **M-f8** Go to next wrong word detected by flyspell.
- **F10** Go to current org-clock active task.
- **F11** fullscreen.
- **F12** compile. 
- **C-x u** see the undos.
- **C-:** to go a specific char.
- **C-;** to go a specific pair of chairs.
