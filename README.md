# My personal configuration for nvim with lua and packer


Lua is a multiproposite language, used in this case as a configuration language for neovim. Packer is a package manager for neovim, it is written in lua and it is very fast. This configuration is based on the configuration of [ThePrimeagen]. I've been considering using lazy nvim instead of packer but I'm not sure yet, and since I'm still learning lua I'm going to stick with packer for now.

## Installation

Go to init.lua and run the command `:so` `:PackerInstall` and then `:PackerCompile` to install the plugins. Then ':PackerSync' to sync the plugins.

## For Java

You may need to replace the workspace path for your own in the ftplugin/java.lua file.


That's it, enjoy!
