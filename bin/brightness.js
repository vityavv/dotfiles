#!/usr/bin/env node

const fs = require("fs");
const maxBrightness = 851;

fs.readFile("/sys/class/backlight/intel_backlight/brightness", (err, data) => {
	if (err) throw err;
	let newValue = String(Number(data) + Number(process.argv[2]));
	if (newValue > maxBrightness || newValue <= 0) return;
	fs.writeFile("/sys/class/backlight/intel_backlight/brightness", newValue, err => {
		if (err) throw err;
	})
})