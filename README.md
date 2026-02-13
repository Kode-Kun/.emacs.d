# .emacs.d

My personal Emacs config.
The main config file is config.org, which gets its code blocks loaded into config.el on startup.

I also have my own tiny minor mode in kode-mode.el, which I simply use for overriding keybindings to ones that make more sense to me. There's probably a better way of doing this than creating an entire mode, but this is the first option I found that actually worked.

## Packages
The packages listed in config.org automatically get installed on the first startup. Thus, the first time you open Emacs with this config it can take a good 30 seconds or more to fully install everything. However, once that's done, you shouldn't ever have to worry about missing dependencies and the startup time will be much faster.