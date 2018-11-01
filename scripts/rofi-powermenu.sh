
#!/bin/bash

poweroff_command="systemctl poweroff"
reboot_command="systemctl reboot"
logout_command="i3-msg exit"
hibernate_command="systemctl hibernate"
suspend_command="systemctl suspend"

rofi_command="rofi -width 15 -lines 3"

# Since I don't ever suspend or hibernate my laptop
options=$'poweroff\nreboot\nlogout' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"