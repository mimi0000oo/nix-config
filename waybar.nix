{config, pkgs, ...}:

{

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top"; # Waybar at top layer
        position = "top"; # Waybar position (top|bottom|left|right)
        height = 45; # Waybar height (to be removed for auto height)
        # "width": 2560; # Waybar width
        spacing = 0; # Gaps between modules (0px) Adjusted in the css
        margin-top = 0;
      #     //"margin-bottom":-10,
        margin-left = 10;
        margin-right = 10;
      #     // Choose the order of the modules
        modules-left = [
      #         "custom/launcher",
          "hyprland/workspaces"
      #         // "cpu",
      #         // "memory",
      #         // "temperature",
      #         // "disk",
      #         "custom/updates"
        ];
        modules-center = [
          "custom/music"
        ];
        modules-right = [
              "network"
              "pulseaudio"
              "backlight"
              "battery"
      #         "custom/notifications",
              # "tray",
              "clock"
      #         // "custom/weather",
      #         // "custom/cycle_wall",
      #         // "custom/clipboard",
      #         "custom/power"
      #         // "custom/custom"
        ];
      #     "custom/launcher": {
      #         "format": "{}",
      #         "tooltip": true,
      #         "exec": "echo '{\"text\":\"💧\",\"tooltip\":\"Drun | Run\"}'",
      #         "return-type": "json",
      #         "on-click": "pkill tofi || gamemoderun tofi-drun -c ~/.config/tofi/tofi.launcher.conf",
      #         "on-click-right": "pkill tofi || gamemoderun tofi-run -c ~/.config/tofi/tofi.launcher.conf",
      #         // "on-click": "pkill wofi || wofi --show drun -n",
      #         // "on-click-right": "pkill wofi || wofi --show run -n",
      #     },
      #     "wlr/workspaces": {
      #         // "format": "{icon} {name}",
      #         "format": "",
      #         "format-icons": {
      #             "active": "",
      #             "default": ""
      #         },
      #         "on-scroll-up": "hyprctl dispatch workspace e-1",
      #         "on-scroll-down": "hyprctl dispatch workspace e+1",
      #         "on-click": "activate"
      #     },
      #     "cpu": {
      #         "format": " {usage}%",
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "memory": {
      #         "format": " {}%",
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "temperature": {
      #         // "thermal-zone": 2,
      #         // "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
      #         "critical-threshold": 40,
      #         "format-critical": "{icon} {temperatureC}°C",
      #         "format": "{icon} {temperatureC}°C",
      #         "format-icons": [
      #             "",
      #             "",
      #             ""
      #         ],
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "disk": {
      #         "format": " {percentage_used}% ({free})",
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "custom/updates": {
      #         "format": "{}",
      #         "exec": "~/.scripts/updates",
      #         "on-click": "~/.scripts/updates update",
      #         "interval": 600,
      #         "tooltip": true,
      #         // "tooltip-format": "{}",
      #         // "exec-tooltip": "~/.scripts/updates tooltip"
      #     },
      #     "custom/music": {
      #         "format": "{icon}{}",
      #         "format-icons": {
      #             // "Playing": " ", // Uncomment if not using the dynamic script
      #             "Paused": " ",
      #             "Stopped": "&#x202d;ﭥ " // This stop symbol is RTL. So &#x202d; is left-to-right override.
      #         },
      #         "escape": true,
      #         "tooltip": true,
      #         "exec": "~/.scripts/caway -b 10 -e",
      #         "return-type": "json",
      #         "on-click": "playerctl play-pause",
      #         "on-scroll-up": "playerctl previous",
      #         "on-scroll-down": "playerctl next",
      #         "on-click-right": "g4music",
      #         "max-length": 35
      #     },
      #     "hyprland/window": {
      #         "format": "{}",
      #         "separate-outputs": true,
      #         "max-length": 35
      #     },
      #     "network": {
      #         // "interface": "wlp2*", // (Optional) To force the use of this interface
      #         "format": "↕{bandwidthTotalBytes}",
      #         "format-disconnected": "{icon} No Internet",
      #         "format-linked": " {ifname} (No IP)",
      #         "format-alt": "↕{bandwidthUpBytes} | ↕{bandwidthDownBytes}",
      #         "tooltip-format": "{ifname}: {ipaddr}/{cidr}  {gwaddr}",
      #         "tooltip-format-wifi": "{icon} {essid} ({signalStrength}%)",
      #         "tooltip-format-ethernet": "{icon} {ipaddr}/{cidr}",
      #         "tooltip-format-disconnected": "{icon} Disconnected",
      #         "on-click-right": "nm-connection-editor",
      #         "format-icons": {
      #             "ethernet": "",
      #             "disconnected": "⚠",
      #             "wifi": [
      #                 "睊",
      #                 "直"
      #             ]
      #         },
      #         "interval": 2
      #     },
      #     "pulseaudio": {
      #         // "scroll-step": 1, // %, can be a float
      #         "format": "{icon} {volume}%", // {format_source}
      #         "format-bluetooth": "{icon} {volume}%", // {format_source}
      #         "format-bluetooth-muted": "", // {format_source}
      #         "format-muted": "", // {format_source}
      #         "format-source": "{volume}% ",
      #         "format-source-muted": "",
      #         "format-icons": {
      #             "headphone": "",
      #             "headset": "",
      #             "phone": "",
      #             "portable": "",
      #             "car": " ",
      #             "default": [
      #                 "",
      #                 "",
      #                 ""
      #             ]
      #         },
      #         "on-click": "pavucontrol"
      #     },
      #     "backlight": {
      #         // "device": "acpi_video1",
      #         "format": "{icon} {percent}%",
      #         "format-icons": [
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             ""
      #         ],
      #         "on-scroll-up": "light -A 1",
      #         "on-scroll-down": "light -U 1",
      #         "interval": 2
      #     },
      #     "battery": {
      #         "states": {
      #             "good": 100,
      #             "warning": 30,
      #             "critical": 10
      #         },
      #         "format": "{icon} {capacity}%",
      #         "format-charging": " {capacity}%",
      #         "format-plugged": " {capacity}%",
      #         "format-alt": "{icon} {time}",
      #         // "format-good": "", // An empty format will hide the module
      #         "format-full": " {capacity}%",
      #         "format-icons": [
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             ""
      #         ],
      #         "interval": 2
      #     },
      #     "custom/notifications": {
      #         "tooltip": false,
      #         "format": "{icon}",
      #         "format-icons": {
      #             "notification": "<span foreground='red'><sup></sup></span>",
      #             "none": "",
      #             "dnd-notification": "<span foreground='red'><sup></sup></span>",
      #             "dnd-none": ""
      #         },
      #         "return-type": "json",
      #         "exec-if": "which swaync-client",
      #         "exec": "swaync-client -swb",
      #         "on-click": "swaync-client -t -sw",
      #         "on-click-right": "swaync-client -d -sw",
      #         "escape": true
      #     },
      #     "tray": {
      #         "icon-size": 15,
      #         "spacing": 15
      #     },
      #     "clock": {
      #         "timezone": "Asia/Calcutta",
      #         "format": " {:%d <small>%a</small> %H:%M}",
      #         //"format": " {:%a %b %d %Y | %H:%M}",
      #         "format-alt": " {:%A %B %d %Y (%V) | %r}",
      #         "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
      #         "calendar-weeks-pos": "right",
      #         "today-format": "<span color='#f38ba8'><b><u>{}</u></b></span>",
      #         "format-calendar": "<span color='#f2cdcd'><b>{}</b></span>",
      #         "format-calendar-weeks": "<span color='#94e2d5'><b>W{:%U}</b></span>",
      #         "format-calendar-weekdays": "<span color='#f9e2af'><b>{}</b></span>",
      #         "interval": 60
      #     },
      #     "idle_inhibitor": {
      #         "format": "{icon}",
      #         "format-icons": {
      #             "activated": "",
      #             "deactivated": ""
      #         }
      #     },
      #     "custom/weather": {
      #         "tooltip": true,
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand weather",
      #         "return-type": "json"
      #     },
      #     "custom/ss": {
      #         "format": "{}",
      #         "exec": "~/./scripts/tools/expand ss-icon",
      #         "return-type": "json",
      #         "on-click": "~/.scripts/screenshot_full"
      #     },
      #     "custom/cycle_wall": {
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand wall",
      #         "return-type": "json",
      #         // "interval": 1,
      #         "on-click": "~/.scripts/tools/expand cycle",
      #         "on-click-right": "~/.scripts/tools/expand cycler"
      #     },
      #     "custom/clipboard": {
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand clipboard",
      #         "return-type": "json",
      #         // Window position is managed in Hyperland config's windowrulev2
      #         "on-click": "pkill tofi || cliphist list | gamemoderun tofi -c ~/.config/tofi/tofi.clip.conf | cliphist decode | wl-copy",
      #         "on-click-middle": "rm -f ~/.cache/cliphist/db",
      #         "on-click-right": "pkill tofi || cliphist list | gamemoderun tofi -c ~/.config/tofi/tofi.clip.conf | cliphist delete",
      #         // Here "-l top_right -x -15 -y 10" doesn't matter as '-n' mode is used
      #         // "on-click": "pkill wofi || cliphist list | wofi --dmenu -p clippick -l top_right -x -15 -y 10 -n | cliphist decode | wl-copy",
      #         // "on-click-middle": "rm -f ~/.cache/cliphist/db",
      #         // "on-click-right": "pkill wofi || cliphist list | wofi --dmenu -p clippick -l top_right -x -15 -y 10 -n | cliphist delete",
      #         "escape": true
      #     },
      #     "custo        "layer": "top", // Waybar at top layer
      #     "position": "top", // Waybar position (top|bottom|left|right)
      #     //"gtk-layer-shell": "false",
      #     "height": 45, // Waybar height (to be removed for auto height)
      #     // "width": 2560, // Waybar width
      #     "spacing": 0, // Gaps between modules (0px) Adjusted in the css
      #     "margin-top": 0,
      #     //"margin-bottom":-10,
      #     "margin-left": 10,
      #     "margin-right": 10,
      #     // Choose the order of the modules
      #     "modules-left": [
      #         "custom/launcher",
      #         "wlr/workspaces",
      #         // "cpu",
      #         // "memory",
      #         // "temperature",
      #         // "disk",
      #         "custom/updates"
      #     ],
      #     "modules-center": [
      #         "custom/music"
      #     ],
      #     "modules-right": [
      #         "network",
      #         "pulseaudio",
      #         "backlight",
      #         "battery",
      #         "custom/notifications",
      #         "tray",
      #         "clock",
      #         // "custom/weather",
      #         // "custom/cycle_wall",
      #         // "custom/clipboard",
      #         "custom/power"
      #         // "custom/custom"
      #     ],
      #     "custom/launcher": {
      #         "format": "{}",
      #         "tooltip": true,
      #         "exec": "echo '{\"text\":\"💧\",\"tooltip\":\"Drun | Run\"}'",
      #         "return-type": "json",
      #         "on-click": "pkill tofi || gamemoderun tofi-drun -c ~/.config/tofi/tofi.launcher.conf",
      #         "on-click-right": "pkill tofi || gamemoderun tofi-run -c ~/.config/tofi/tofi.launcher.conf",
      #         // "on-click": "pkill wofi || wofi --show drun -n",
      #         // "on-click-right": "pkill wofi || wofi --show run -n",
      #     },
      #     "wlr/workspaces": {
      #         // "format": "{icon} {name}",
      #         "format": "",
      #         "format-icons": {
      #             "active": "",
      #             "default": ""
      #         },
      #         "on-scroll-up": "hyprctl dispatch workspace e-1",
      #         "on-scroll-down": "hyprctl dispatch workspace e+1",
      #         "on-click": "activate"
      #     },
      #     "cpu": {
      #         "format": " {usage}%",
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "memory": {
      #         "format": " {}%",
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "temperature": {
      #         // "thermal-zone": 2,
      #         // "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
      #         "critical-threshold": 40,
      #         "format-critical": "{icon} {temperatureC}°C",
      #         "format": "{icon} {temperatureC}°C",
      #         "format-icons": [
      #             "",
      #             "",
      #             ""
      #         ],
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "disk": {
      #         "format": " {percentage_used}% ({free})",
      #         "tooltip": true,
      #         "on-click": "kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'",
      #         "interval": 2
      #     },
      #     "custom/updates": {
      #         "format": "{}",
      #         "exec": "~/.scripts/updates",
      #         "on-click": "~/.scripts/updates update",
      #         "interval": 600,
      #         "tooltip": true,
      #         // "tooltip-format": "{}",
      #         // "exec-tooltip": "~/.scripts/updates tooltip"
      #     },
      #     "custom/music": {
      #         "format": "{icon}{}",
      #         "format-icons": {
      #             // "Playing": " ", // Uncomment if not using the dynamic script
      #             "Paused": " ",
      #             "Stopped": "&#x202d;ﭥ " // This stop symbol is RTL. So &#x202d; is left-to-right override.
      #         },
      #         "escape": true,
      #         "tooltip": true,
      #         "exec": "~/.scripts/caway -b 10 -e",
      #         "return-type": "json",
      #         "on-click": "playerctl play-pause",
      #         "on-scroll-up": "playerctl previous",
      #         "on-scroll-down": "playerctl next",
      #         "on-click-right": "g4music",
      #         "max-length": 35
      #     },
      #     "hyprland/window": {
      #         "format": "{}",
      #         "separate-outputs": true,
      #         "max-length": 35
      #     },
      #     "network": {
      #         // "interface": "wlp2*", // (Optional) To force the use of this interface
      #         "format": "↕{bandwidthTotalBytes}",
      #         "format-disconnected": "{icon} No Internet",
      #         "format-linked": " {ifname} (No IP)",
      #         "format-alt": "↕{bandwidthUpBytes} | ↕{bandwidthDownBytes}",
      #         "tooltip-format": "{ifname}: {ipaddr}/{cidr}  {gwaddr}",
      #         "tooltip-format-wifi": "{icon} {essid} ({signalStrength}%)",
      #         "tooltip-format-ethernet": "{icon} {ipaddr}/{cidr}",
      #         "tooltip-format-disconnected": "{icon} Disconnected",
      #         "on-click-right": "nm-connection-editor",
      #         "format-icons": {
      #             "ethernet": "",
      #             "disconnected": "⚠",
      #             "wifi": [
      #                 "睊",
      #                 "直"
      #             ]
      #         },
      #         "interval": 2
      #     },
      #     "pulseaudio": {
      #         // "scroll-step": 1, // %, can be a float
      #         "format": "{icon} {volume}%", // {format_source}
      #         "format-bluetooth": "{icon} {volume}%", // {format_source}
      #         "format-bluetooth-muted": "", // {format_source}
      #         "format-muted": "", // {format_source}
      #         "format-source": "{volume}% ",
      #         "format-source-muted": "",
      #         "format-icons": {
      #             "headphone": "",
      #             "headset": "",
      #             "phone": "",
      #             "portable": "",
      #             "car": " ",
      #             "default": [
      #                 "",
      #                 "",
      #                 ""
      #             ]
      #         },
      #         "on-click": "pavucontrol"
      #     },
      #     "backlight": {
      #         // "device": "acpi_video1",
      #         "format": "{icon} {percent}%",
      #         "format-icons": [
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             ""
      #         ],
      #         "on-scroll-up": "light -A 1",
      #         "on-scroll-down": "light -U 1",
      #         "interval": 2
      #     },
      #     "battery": {
      #         "states": {
      #             "good": 100,
      #             "warning": 30,
      #             "critical": 10
      #         },
      #         "format": "{icon} {capacity}%",
      #         "format-charging": " {capacity}%",
      #         "format-plugged": " {capacity}%",
      #         "format-alt": "{icon} {time}",
      #         // "format-good": "", // An empty format will hide the module
      #         "format-full": " {capacity}%",
      #         "format-icons": [
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             "",
      #             ""
      #         ],
      #         "interval": 2
      #     },
      #     "custom/notifications": {
      #         "tooltip": false,
      #         "format": "{icon}",
      #         "format-icons": {
      #             "notification": "<span foreground='red'><sup></sup></span>",
      #             "none": "",
      #             "dnd-notification": "<span foreground='red'><sup></sup></span>",
      #             "dnd-none": ""
      #         },
      #         "return-type": "json",
      #         "exec-if": "which swaync-client",
      #         "exec": "swaync-client -swb",
      #         "on-click": "swaync-client -t -sw",
      #         "on-click-right": "swaync-client -d -sw",
      #         "escape": true
      #     },
      #     "tray": {
      #         "icon-size": 15,
      #         "spacing": 15
      #     },
      #     "clock": {
      #         "timezone": "Asia/Calcutta",
      #         "format": " {:%d <small>%a</small> %H:%M}",
      #         //"format": " {:%a %b %d %Y | %H:%M}",
      #         "format-alt": " {:%A %B %d %Y (%V) | %r}",
      #         "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
      #         "calendar-weeks-pos": "right",
      #         "today-format": "<span color='#f38ba8'><b><u>{}</u></b></span>",
      #         "format-calendar": "<span color='#f2cdcd'><b>{}</b></span>",
      #         "format-calendar-weeks": "<span color='#94e2d5'><b>W{:%U}</b></span>",
      #         "format-calendar-weekdays": "<span color='#f9e2af'><b>{}</b></span>",
      #         "interval": 60
      #     },
      #     "idle_inhibitor": {
      #         "format": "{icon}",
      #         "format-icons": {
      #             "activated": "",
      #             "deactivated": ""
      #         }
      #     },
      #     "custom/weather": {
      #         "tooltip": true,
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand weather",
      #         "return-type": "json"
      #     },
      #     "custom/ss": {
      #         "format": "{}",
      #         "exec": "~/./scripts/tools/expand ss-icon",
      #         "return-type": "json",
      #         "on-click": "~/.scripts/screenshot_full"
      #     },
      #     "custom/cycle_wall": {
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand wall",
      #         "return-type": "json",
      #         // "interval": 1,
      #         "on-click": "~/.scripts/tools/expand cycle",
      #         "on-click-right": "~/.scripts/tools/expand cycler"
      #     },
      #     "custom/clipboard": {
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand clipboard",
      #         "return-type": "json",
      #         // Window position is managed in Hyperland config's windowrulev2
      #         "on-click": "pkill tofi || cliphist list | gamemoderun tofi -c ~/.config/tofi/tofi.clip.conf | cliphist decode | wl-copy",
      #         "on-click-middle": "rm -f ~/.cache/cliphist/db",
      #         "on-click-right": "pkill tofi || cliphist list | gamemoderun tofi -c ~/.config/tofi/tofi.clip.conf | cliphist delete",
      #         // Here "-l top_right -x -15 -y 10" doesn't matter as '-n' mode is used
      #         // "on-click": "pkill wofi || cliphist list | wofi --dmenu -p clippick -l top_right -x -15 -y 10 -n | cliphist decode | wl-copy",
      #         // "on-click-middle": "rm -f ~/.cache/cliphist/db",
      #         // "on-click-right": "pkill wofi || cliphist list | wofi --dmenu -p clippick -l top_right -x -15 -y 10 -n | cliphist delete",
      #         "escape": true
      #     },
      #     "custom/power": {
      #         "format": "{}",
      #         // "exec": "~/.scripts/tools/expand power",
      #         "exec": "echo '{\"text\":\"⏻\",\"tooltip\":\"Power\"}'",
      #         "return-type": "json",
      #         "on-click": "~/.config/wlogout/launch.sh"
      #     },
      #     "custom/custom": {
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand arrow-icon",
      #         "on-click": "~/.scripts/tools/expand_toolbar",
      #         "return-type": "json"
      #     }
      # } "exec": "~/.scripts/tools/expand power",
      #         "exec": "echo '{\"text\":\"⏻\",\"tooltip\":\"Power\"}'",
      #         "return-type": "json",
      #         "on-click": "~/.config/wlogout/launch.sh"
      #     },
      #     "custom/custom": {
      #         "format": "{}",
      #         "exec": "~/.scripts/tools/expand arrow-icon",
      #         "on-click": "~/.scripts/tools/expand_toolbar",
      #         "return-type": "json"
      #     }

      };

      style = ''
        * {
          border: none;
          border-radius: 0;
          font-family: Source Code Pro;
        }
        window#waybar {
          background: #16191C;
          color: #AAB2BF;
        }
        #workspaces button {
          padding: 0 5px;
        }
      '';

    };

  };

}