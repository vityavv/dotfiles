#!/usr/bin/env python3
# Change termite colorscheme
import configparser
termiteConfig = configparser.ConfigParser()
termiteConfig.read("/home/victor/.config/termite/config")
termiteConfig["colors"]["background"] = "#2e2e2d"
termiteConfig["colors"]["foreground"] = "#f2f2f2"
termiteConfig["colors"]["cursor"] = "#25c3dc"
termiteConfig["colors"]["color0"] = "#2c2c2c"
termiteConfig["colors"]["color1"] = "#c62828"
termiteConfig["colors"]["color2"] = "#558b2e"
termiteConfig["colors"]["color3"] = "#f9a825"
termiteConfig["colors"]["color4"] = "#1565c1"
termiteConfig["colors"]["color5"] = "#6a1e9a"
termiteConfig["colors"]["color6"] = "#00838f"
termiteConfig["colors"]["color7"] = "#ffffff"
termiteConfig["colors"]["color8"] = "#969694"
termiteConfig["colors"]["color9"] = "#f15250"
termiteConfig["colors"]["color10"] = "#86bd47"
termiteConfig["colors"]["color11"] = "#f8e63a"
termiteConfig["colors"]["color12"] = "#77b2f6"
termiteConfig["colors"]["color13"] = "#b963c8"
termiteConfig["colors"]["color14"] = "#25c3dc"
termiteConfig["colors"]["color15"] = "#ffffff"
with open("/home/victor/.config/termite/config", "w") as configfile:
	termiteConfig.write(configfile)
