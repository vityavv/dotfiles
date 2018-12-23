#!/usr/bin/env python3
# Change termite colorscheme
import configparser
termiteConfig = configparser.ConfigParser()
termiteConfig.read("/home/victor/.config/termite/config")
termiteConfig["colors"]["background"] = "#282828"
termiteConfig["colors"]["foreground"] = "#ebdbb2"
termiteConfig["colors"]["foreground_bold"] = "#ebdbb2"
termiteConfig["colors"]["color0"] = "#282828"
termiteConfig["colors"]["color8"] = "#928374"
termiteConfig["colors"]["color1"] = "#cc241d"
termiteConfig["colors"]["color9"] = "#fb4934"
termiteConfig["colors"]["color2"] = "#98971a"
termiteConfig["colors"]["color10"] = "#b8bb26"
termiteConfig["colors"]["color3"] = "#d79921"
termiteConfig["colors"]["color11"] = "#fabd2f"
termiteConfig["colors"]["color4"] = "#458588"
termiteConfig["colors"]["color12"] = "#83a598"
termiteConfig["colors"]["color5"] = "#b16286"
termiteConfig["colors"]["color13"] = "#d3869b"
termiteConfig["colors"]["color6"] = "#689d6a"
termiteConfig["colors"]["color14"] = "#8ec07c"
termiteConfig["colors"]["color7"] = "#a89984"
termiteConfig["colors"]["color15"] = "#ebdbb2"
with open("/home/victor/.config/termite/config", "w") as configfile:
	termiteConfig.write(configfile)
#change sublime colorscheme
import json
sublimeConfig = json.load(open("/home/victor/.config/sublime-text-3/Packages/User/Preferences.sublime-settings"))
sublimeConfig["color_scheme"] = "Packages/gruvbox/gruvbox (Dark) (Medium).tmTheme"
sublimeConfig["theme"] = "gruvbox (Dark) (Medium).sublime-theme"
json.dump(sublimeConfig, open("/home/victor/.config/sublime-text-3/Packages/User/Preferences.sublime-settings", "w"))
