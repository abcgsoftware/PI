Bash
#!/bin/bash

# Modify this path if needed
CONFIG_FILE=~/.config/wayfire.ini

# Define the content to be added
CONTENT="[autostart]
chromium = chromium-browser https://abcmobilityholdingssfdc.azurewebsites.net/Account/Login --noerrdialogs --disable-infobars --no-first-run --ozone-platform=wayland --enable-features=OverlayScrollbar --start-maximized
dpms = false"

# Check if file exists
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Error: Config file $CONFIG_FILE not found!"
  exit 1
fi

# Append content to the file
echo "$CONTENT" >> "$CONFIG_FILE"

# Make the script executable (run this command only once)
# chmod +x deploy_wayfire_config.sh

# Restart Wayfire
pkill wayfire && wayfire

echo "Wayfire configuration updated and restarted!"
