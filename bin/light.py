#!/usr/bin/env python3
# Change termite colorscheme
import configparser
termiteConfig = configparser.ConfigParser()
termiteConfig.read("/home/victor/.config/termite/config")
termiteConfig["colors"]["background"] = "#fbf1c7"
termiteConfig["colors"]["foreground"] = "#3c3836"
termiteConfig["colors"]["foreground_bold"] = "#3c3836"
termiteConfig["colors"]["color0"] = "#fbf1c7"
termiteConfig["colors"]["color8"] = "#928374"
termiteConfig["colors"]["color1"] = "#cc241d"
termiteConfig["colors"]["color9"] = "#9d0006"
termiteConfig["colors"]["color2"] = "#98971a"
termiteConfig["colors"]["color10"] = "#79740e"
termiteConfig["colors"]["color3"] = "#d79921"
termiteConfig["colors"]["color11"] = "#b57614"
termiteConfig["colors"]["color4"] = "#458588"
termiteConfig["colors"]["color12"] = "#076678"
termiteConfig["colors"]["color5"] = "#b16286"
termiteConfig["colors"]["color13"] = "#8f3f71"
termiteConfig["colors"]["color6"] = "#689d6a"
termiteConfig["colors"]["color14"] = "#427b58"
termiteConfig["colors"]["color7"] = "#7c6f64"
termiteConfig["colors"]["color15"] = "#3c3836"
with open("/home/victor/.config/termite/config", "w") as configfile:
	termiteConfig.write(configfile)
# Change sublime theme
import json
sublimeConfig = json.load(open("/home/victor/.config/sublime-text-3/Packages/User/Preferences.sublime-settings"))
sublimeConfig["color_scheme"] = "Packages/gruvbox/gruvbox (Light) (Medium).tmTheme"
sublimeConfig["theme"] = "gruvbox (Light) (Medium).sublime-theme"
json.dump(sublimeConfig, open("/home/victor/.config/sublime-text-3/Packages/User/Preferences.sublime-settings", "w"))

