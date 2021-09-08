#!/bin/sh
set -x

/lib/systemd/systemd-udevd --daemon &> /dev/null
udevadm trigger &> /dev/null

startx /usr/bin/chromium --kiosk --no-sandbox --start-maximized --no-first-run --disable --disable-translate --disable-infobars --disable-suggestions-service --disable-save-password-bubble --incognito "$@" -- -nocursor -s 0 -dpms
