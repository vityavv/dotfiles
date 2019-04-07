#!/usr/bin/env python3
# Change termite colorscheme
import configparser
termiteConfig = configparser.ConfigParser()
termiteConfig.read("/home/victor/.config/termite/config")
termiteConfig["colors"]["foreground"] = "#3c3c3b"
termiteConfig["colors"]["background"] = "#eeeeee"
termiteConfig["colors"]["cursor"] = "#25c3dc"
termiteConfig["colors"]["color0"] = "#f8f8f8"
termiteConfig["colors"]["color1"] = "#d7005f"
termiteConfig["colors"]["color2"] = "#718c00"
termiteConfig["colors"]["color3"] = "#ff8f01"
termiteConfig["colors"]["color4"] = "#005f87"
termiteConfig["colors"]["color5"] = "#6a1e9a"
termiteConfig["colors"]["color6"] = "#3e999f"
termiteConfig["colors"]["color7"] = "#2c2c2c"
termiteConfig["colors"]["color8"] = "#2c2c2c"
termiteConfig["colors"]["color9"] = "#ef5251"
termiteConfig["colors"]["color10"] = "#90c94d"
termiteConfig["colors"]["color11"] = "#ffa000"
termiteConfig["colors"]["color12"] = "#4271ae"
termiteConfig["colors"]["color13"] = "#c774c1"
termiteConfig["colors"]["color14"] = "#3e999f"
termiteConfig["colors"]["color15"] = "#f5f5f5"
with open("/home/victor/.config/termite/config", "w") as configfile:
    termiteConfig.write(configfile)
