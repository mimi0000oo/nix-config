# {config, pkgs, ...}:

# {

#   programs.waybar = {
#     enable = true;
#     settings = {
#       mainBar = {
#         layer = "top";
#         #// "position": "bottom", // Waybar position (top|bottom|left|right)
#         height = 30; #// Waybar height (to be removed for auto height)
#         #// "width": 1280, // Waybar width
#         # "spacing": 4, // Gaps between modules (4px)
#         #// Choose the order of the modules
#         modules-left = [ "hyprland/workspaces" "hyprland/mode" "hyprland/scratchpad" "custom/media" ];
#         modules-center = ["hyprland/window"];
#         modules-right = ["mpd" "idle_inhibitor" "pulseaudio" "network" "cpu" "memory" "temperature" "backlight" "keyboard-state" "sway/language" "battery" "battery#bat2" "clock" "tray"];
#         #// Modules configuration
#         "hyprland/workspaces" = {
#           # disable-scroll = true;
#           all-outputs = true;
#           warp-on-scroll = false;
#           format = "{name}: {icon}";
#           format-icons = {
#             "1" = "";
#             "2" = "";
#             "3" = "";
#             "4" = "";
#             "5" = "";
#             "urgent" = "";
#             "focused" = "";
#             "default" = "";
#           };
#         };
#         # keyboard-state = {
#         #     numlock = true;
#         #     capslock = true;
#         #     format = "{name} {icon}";
#         #     format-icons = {
#         #         locked = "";
#         #         unlocked = "";
#         #     };
#         # };
#         # "sway/mode" = {
#         #     format = "<span style=\"italic\">{}</span>";
#         # };
#         # "sway/scratchpad" = {
#         #     format = "{icon} {count}";
#         #     show-empty = false;
#         #     format-icons = [ "" "" ];
#         #     tooltip = true;
#         #     tooltip-format = "{app}: {title}";
#         # };
#         # "mpd": {
#         #     "format": "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ⸨{songPosition}|{queueLength}⸩ {volume}% ",
#         #     "format-disconnected": "Disconnected ",
#         #     "format-stopped": "{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped ",
#         #     "unknown-tag": "N/A",
#         #     "interval": 2,
#         #     "consume-icons": {
#         #         "on": " "
#         #     },
#         #     "random-icons": {
#         #         "off": "<span color=\"#f53c3c\"></span> ",
#         #         "on": " "
#         #     },
#         #     "repeat-icons": {
#         #         "on": " "
#         #     },
#         #     "single-icons": {
#         #         "on": "1 "
#         #     },
#         #     "state-icons": {
#         #         "paused": "",
#         #         "playing": ""
#         #     },
#         #     "tooltip-format": "MPD (connected)",
#         #     "tooltip-format-disconnected": "MPD (disconnected)"
#         # },
#         # "idle_inhibitor": {
#         #     "format": "{icon}",
#         #     "format-icons": {
#         #         "activated": "",
#         #         "deactivated": ""
#         #     }
#         # },
#         # "tray": {
#         #     // "icon-size": 21,
#         #     "spacing": 10
#         # },
#         # "clock": {
#         #     // "timezone": "America/New_York",
#         #     "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
#         #     "format-alt": "{:%Y-%m-%d}"
#         # },
#         # "cpu": {
#         #     "format": "{usage}% ",
#         #     "tooltip": false
#         # },
#         # "memory": {
#         #     "format": "{}% "
#         # },
#         # "temperature": {
#         #     // "thermal-zone": 2,
#         #     // "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
#         #     "critical-threshold": 80,
#         #     // "format-critical": "{temperatureC}°C {icon}",
#         #     "format": "{temperatureC}°C {icon}",
#         #     "format-icons": ["", "", ""]
#         # },
#         # "backlight": {
#         #     // "device": "acpi_video1",
#         #     "format": "{percent}% {icon}",
#         #     "format-icons": ["", "", "", "", "", "", "", "", ""]
#         # },
#         # "battery": {
#         #     "states": {
#         #         // "good": 95,
#         #         "warning": 30,
#         #         "critical": 15
#         #     },
#         #     "format": "{capacity}% {icon}",
#         #     "format-charging": "{capacity}% ",
#         #     "format-plugged": "{capacity}% ",
#         #     "format-alt": "{time} {icon}",
#         #     // "format-good": "", // An empty format will hide the module
#         #     // "format-full": "",
#         #     "format-icons": ["", "", "", "", ""]
#         # },
#         # "battery#bat2": {
#         #     "bat": "BAT2"
#         # },
#         # "network": {
#         #     // "interface": "wlp2*", // (Optional) To force the use of this interface
#         #     "format-wifi": "{essid} ({signalStrength}%) ",
#         #     "format-ethernet": "{ipaddr}/{cidr} ",
#         #     "tooltip-format": "{ifname} via {gwaddr} ",
#         #     "format-linked": "{ifname} (No IP) ",
#         #     "format-disconnected": "Disconnected ⚠",
#         #     "format-alt": "{ifname}: {ipaddr}/{cidr}"
#         # },
#         # "pulseaudio": {
#         #     // "scroll-step": 1, // %, can be a float
#         #     "format": "{volume}% {icon} {format_source}",
#         #     "format-bluetooth": "{volume}% {icon} {format_source}",
#         #     "format-bluetooth-muted": " {icon} {format_source}",
#         #     "format-muted": " {format_source}",
#         #     "format-source": "{volume}% ",
#         #     "format-source-muted": "",
#         #     "format-icons": {
#         #         "headphone": "",
#         #         "hands-free": "",
#         #         "headset": "",
#         #         "phone": "",
#         #         "portable": "",
#         #         "car": "",
#         #         "default": ["", "", ""]
#         #     },
#         #     "on-click": "pavucontrol"
#         # },
#         # "custom/media": {
#         #     "format": "{icon} {}",
#         #     "return-type": "json",
#         #     "max-
#         # };"default": "🎜"
#         #     },
#         #     "escape": true,
#         #     "exec": "$HOME/.config/waybar/mediaplayer.py 2> /dev/null" // Script in resources folder
#         #     // "exec": "$HOME/.config/waybar/mediaplayer.py --player spotify 2> /dev/null" // Filter player based on name
#         # };
#     };

#   };

# }

{ 
    ... 
}:
{
    programs.waybar = {
        enable = true;
        settings.mainBar = {
            position= "top";
            layer= "top";
            height= 35;
            margin-top= 0;
            margin-bottom= 0;
            margin-left= 0;
            margin-right= 0;
            modules-left= [
                "custom/launcher" 
                "custom/playerctl#backward" 
                "custom/playerctl#play" 
                "custom/playerctl#foward" 
                "custom/playerlabel"
            ];
            modules-center= [
                "cava#left"
                "hyprland/workspaces"
                "cava#right"
            ];
            modules-right= [
                "tray" 
                "battery"
                "pulseaudio" 
                "network"
                "clock" 
            ];
            clock= {
                format = " {:%a, %d %b, %I:%M %p}";
                tooltip= "true";
                tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
                format-alt= " {:%d/%m}";
            };
            "wlr/workspaces"= {
                active-only= false;
                all-outputs= false;
                disable-scroll= false;
                on-scroll-up= "hyprctl dispatch workspace e-1";
                on-scroll-down= "hyprctl dispatch workspace e+1";
                format = "{name}";
                on-click= "activate";
                format-icons= {
                    urgent= "";
                    active= "";
                    default = "";
                    sort-by-number= true;
                };
            };
            "cava#left" = {
                framerate = 60;
                autosens = 1;
                bars = 18;
                lower_cutoff_freq = 50;
                higher_cutoff_freq = 10000;
                method = "pipewire";
                source = "auto";
                stereo = true;
                reverse = false;
                bar_delimiter = 0;
                monstercat = false;
                waves = false;
                input_delay = 2;
                format-icons = [ 
                  "<span foreground='#${custom.primary_accent}'>▁</span>" 
                  "<span foreground='#${custom.primary_accent}'>▂</span>" 
                  "<span foreground='#${custom.primary_accent}'>▃</span>" 
                  "<span foreground='#${custom.primary_accent}'>▄</span>" 
                  "<span foreground='#${custom.secondary_accent}'>▅</span>" 
                  "<span foreground='#${custom.secondary_accent}'>▆</span>" 
                  "<span foreground='#${custom.secondary_accent}'>▇</span>" 
                  "<span foreground='#${custom.secondary_accent}'>█</span>" 
                ];
            };
            "cava#right" = {
                framerate = 60;
                autosens = 1;
                bars = 18;
                lower_cutoff_freq = 50;
                higher_cutoff_freq = 10000;
                method = "pipewire";
                source = "auto";
                stereo = true;
                reverse = false;
                bar_delimiter = 0;
                monstercat = false;
                waves = false;
                input_delay = 2;
                format-icons = [ 
                  "<span foreground='#${custom.primary_accent}'>▁</span>" 
                  "<span foreground='#${custom.primary_accent}'>▂</span>" 
                  "<span foreground='#${custom.primary_accent}'>▃</span>" 
                  "<span foreground='#${custom.primary_accent}'>▄</span>" 
                  "<span foreground='#${custom.secondary_accent}'>▅</span>" 
                  "<span foreground='#${custom.secondary_accent}'>▆</span>" 
                  "<span foreground='#${custom.secondary_accent}'>▇</span>" 
                  "<span foreground='#${custom.secondary_accent}'>█</span>" 
                ];
            };
            "custom/playerctl#backward"= {
                format= "󰙣 "; 
                on-click= "playerctl previous";
                on-scroll-up = "playerctl volume .05+";
                on-scroll-down = "playerctl volume .05-";
            };
            "custom/playerctl#play"= {
                format= "{icon}";
                return-type= "json";
                exec= "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
                on-click= "playerctl play-pause";
                on-scroll-up = "playerctl volume .05+";
                on-scroll-down = "playerctl volume .05-";
                format-icons= {
                    Playing = "<span>󰏥 </span>";
                    Paused = "<span> </span>";
                    Stopped = "<span> </span>";
                };
            };
            "custom/playerctl#foward"= {
                format= "󰙡 ";
                on-click= "playerctl next";
                on-scroll-up = "playerctl volume .05+";
                on-scroll-down = "playerctl volume .05-";
            };
            "custom/playerlabel"= {
                format= "<span>󰎈 {} 󰎈</span>";
                return-type= "json";
                max-length= 40;
                exec = "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
                on-click= "";
            };
            battery= {
                states= {
                    good= 95;
                    warning= 30;
                    critical= 15;
                };
                format="{icon}  {capacity}%";
                format-charging= "  {capacity}%";
                format-plugged= " {capacity}% ";
                format-alt= "{icon} {time}";
                format-icons= ["" "" "" "" ""];
            };

            memory= {
                format= "󰍛 {}%";
                format-alt= "󰍛 {used}/{total} GiB";
                interval= 5;
            };
            cpu= {
                format= "󰻠 {usage}%";
                format-alt= "󰻠 {avg_frequency} GHz";
                interval= 5;
            };
            network = {
                format-wifi = "  {signalStrength}%";
                format-ethernet = "󰈀 100% ";
                tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
                format-linked = "{ifname} (No IP)";
                format-disconnected = "󰖪 0% ";
            };
            tray= {
                icon-size= 20;
                spacing= 8;
            };
            pulseaudio= {
                format= "{icon} {volume}%";
                format-muted= "󰝟";
                format-icons= {
                    default= ["󰕿" "󰖀" "󰕾"];
                };
                # on-scroll-up= "bash ~/.scripts/volume up";
                # on-scroll-down= "bash ~/.scripts/volume down";
                scroll-step= 5;
                on-click= "pavucontrol";
            };
            "custom/randwall"= {
                format= "󰏘";
                # on-click= "bash $HOME/.config/hypr/randwall.sh";
                # on-click-right= "bash $HOME/.config/hypr/wall.sh";
            };
            "custom/launcher"= {
                format= "";
                # on-click= "bash $HOME/.config/rofi/launcher.sh";
                # on-click-right= "bash $HOME/.config/rofi/run.sh"; 
                tooltip= "false";
            };
        };
        style = ''
            * {
                border: none;
                border-radius: 0px;
                font-family: ${custom.font};
                font-size: 14px;
                min-height: 0;
            }

            window#waybar {
                background: ${custom.palette.primary_background_rgba};
            }

            #cava.left, #cava.right {
                background: #${custom.palette.tertiary_background_hex};
                margin: 5px; 
                padding: 8px 16px;
                color: #${custom.primary_accent};
            }
            #cava.left {
                border-radius: 24px 10px 24px 10px;
            }
            #cava.right {
                border-radius: 10px 24px 10px 24px;
            }
            #workspaces {
                background: #${custom.palette.tertiary_background_hex};
                margin: 5px 5px;
                padding: 8px 5px;
                border-radius: 16px;
                color: #${custom.primary_accent}
            }
            #workspaces button {
                padding: 0px 5px;
                margin: 0px 3px;
                border-radius: 16px;
                color: transparent;
                background: ${custom.palette.primary_background_rgba};
                transition: all 0.3s ease-in-out;
            }

            #workspaces button.active {
                background-color: #${custom.secondary_accent};
                color: #${custom.background};
                border-radius: 16px;
                min-width: 50px;
                background-size: 400% 400%;
                transition: all 0.3s ease-in-out;
            }

            #workspaces button:hover {
                background-color: #${custom.tertiary_accent};
                color: #${custom.background};
                border-radius: 16px;
                min-width: 50px;
                background-size: 400% 400%;
            }

            #tray, #pulseaudio, #network, #battery,
            #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.foward{
                background: #${custom.palette.tertiary_background_hex};
                font-weight: bold;
                margin: 5px 0px;
            }
            #tray, #pulseaudio, #network, #battery{
                color: #${custom.tertiary_accent};
                border-radius: 10px 24px 10px 24px;
                padding: 0 20px;
                margin-left: 7px;
            }
            #clock {
                color: #${custom.tertiary_accent};
                background: #${custom.palette.tertiary_background_hex};
                border-radius: 0px 0px 0px 40px;
                padding: 10px 10px 15px 25px;
                margin-left: 7px;
                font-weight: bold;
                font-size: 16px;
            }
            #custom-launcher {
                color: #${custom.secondary_accent};
                background: #${custom.palette.tertiary_background_hex};
                border-radius: 0px 0px 40px 0px;
                margin: 0px;
                padding: 0px 35px 0px 15px;
                font-size: 28px;
            }

            #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.foward {
                background: #${custom.palette.tertiary_background_hex};
                font-size: 22px;
            }
            #custom-playerctl.backward:hover, #custom-playerctl.play:hover, #custom-playerctl.foward:hover{
                color: #${custom.tertiary_accent};
            }
            #custom-playerctl.backward {
                color: #${custom.primary_accent};
                border-radius: 24px 0px 0px 10px;
                padding-left: 16px;
                margin-left: 7px;
            }
            #custom-playerctl.play {
                color: #${custom.secondary_accent};
                padding: 0 5px;
            }
            #custom-playerctl.foward {
                color: #${custom.primary_accent};
                border-radius: 0px 10px 24px 0px;
                padding-right: 12px;
                margin-right: 7px
            }
            #custom-playerlabel {
                background: #${custom.palette.tertiary_background_hex};
                color: #${custom.tertiary_accent};
                padding: 0 20px;
                border-radius: 24px 10px 24px 10px;
                margin: 5px 0;
                font-weight: bold;
            }
            #window{
                background: #${custom.palette.tertiary_background_hex};
                padding-left: 15px;
                padding-right: 15px;
                border-radius: 16px;
                margin-top: 5px;
                margin-bottom: 5px;
                font-weight: normal;
                font-style: normal;
            }
        '';
    };
}