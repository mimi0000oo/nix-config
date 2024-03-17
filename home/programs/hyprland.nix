{ config, pkgs, ... }:

{
  
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {

        input = {
            kb_layout = "us";
            kb_variant = "";
            kb_model = "";
            kb_options = "";
            kb_rules = "";

            follow_mouse = 1;

            touchpad = {
                natural_scroll = false;
            };

            numlock_by_default = true;

            sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
        };

        general = {
            # See https://wiki.hyprland.org/Configuring/Variables/ for more

            gaps_in = 5;
            gaps_out = 20;
            border_size = 2;
            "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
            "col.inactive_border" = "rgba(595959aa)";

            layout = "dwindle";

            # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
            allow_tearing = false;
        };

        decoration = {
            # See https://wiki.hyprland.org/Configuring/Variables/ for more
            rounding = 10;

            blur = {
                enabled = true;
                size = 3;
                passes = 1;

                vibrancy = 0.1696;
            };

            drop_shadow = true;
            shadow_range = 4;
            shadow_render_power = 3;
            "col.shadow" = "rgba(1a1a1aee)";
        };

        animations = {
            enabled = true;

            # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
            bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

            animation = [
                "windows, 1, 7, myBezier"
                "windowsOut, 1, 7, default, popin 80%"
                "border, 1, 10, default"
                "borderangle, 1, 8, default"
                "fade, 1, 7, default"
                "workspaces, 1, 6, default"
            ];
        };


        dwindle = {
            # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
            pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
            preserve_split = true; # you probably want this
        };

        master = {
            # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
            new_is_master = true;
        };

        gestures = {
            # See https://wiki.hyprland.org/Configuring/Variables/ for more
            workspace_swipe = true;
        };

        misc = {
            # See https://wiki.hyprland.org/Configuring/Variables/ for more
            force_default_wallpaper = 0; # Set to 0 or 1 to disable the anime mascot wallpapers
        };

        # Example per-device config
        # See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
        "device:epic-mouse-v1" = {
            sensitivity = -0.5;
        };

        # Example windowrule v1
        # windowrule = float, ^(kitty)$
        # Example windowrule v2
        # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
        # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
        windowrulev2 = [
            "nomaximizerequest, class:.*" # You'll probably like this.

            # KDE xwaylandvideobridge
            "opacity 0.0 override 0.0 override,class:^(xwaylandvideobridge)$"
            "noanim,class:^(xwaylandvideobridge)$"
            "noinitialfocus,class:^(xwaylandvideobridge)$"
            "maxsize 1 1,class:^(xwaylandvideobridge)$"
            "noblur,class:^(xwaylandvideobridge)$"
        ];


        # Monitor configuration
        monitor = [
            # monitor=,preferred,auto,auto
            "eDP-1, 1920x1080@60, 1600x0, 1"
            "DP-5, 1600x900@60, 0x0, 1"
            "DP-6, 1600x900@60, 0x0, 1"
        ];

        # Source files for extended configuration
        source = [
            # nwg-display
            "~/.config/hypr/monitors.conf"
        ];

        # Some env vars.
        env = [
            "GDK_BACKEND,wayland,x11"
            "QT_QPA_PLATFORM,\"wayland;xcb\""
            "XDG_CURRENT_DESKTOP,Hyprland"
            "XDG_SESSION_TYPE,wayland"
            "XDG_SESSION_DESKTOP,Hyprland"
            "QT_AUTO_SCREEN_SCALE_FACTOR,1"
            "QT_QPA_PLATFORM,wayland;xcb"
        ];

        # Execute your favorite apps at launch
        exec-once = [
            "waybar"
            "xwaylandvideobridge"
            "waypaper --restore --backend swww"
        ];

        # keybinds mappings
        "$terminal" = "kitty";
        "$fileManager" = "thunar";
        "$menu" = "wofi -IS drun";
        "$mainMod" = "SUPER";
        bind =
        [
            "$mainMod, Q, exec, $terminal"
            "$mainMod, C, killactive,"
            "$mainMod, M, exit,"
            "$mainMod, E, exec, $fileManager"
            "$mainMod, V, togglefloating,"
            "$mainMod, R, exec, $menu"
            "$mainMod, P, pseudo, # dwindle"
            "$mainMod, J, togglesplit, # dwindle"
            "$mainMod, F, fullscreen"
  
            # Move focus with mainMod + arrow keys
            "$mainMod, left, movefocus, l"
            "$mainMod, right, movefocus, r"
            "$mainMod, up, movefocus, u"
            "$mainMod, down, movefocus, d"
            # Example special workspace (scratchpad)
            "$mainMod, S, togglespecialworkspace, magic"
            "$mainMod SHIFT, S, movetoworkspace, special:magic"
  
            # Scroll through existing workspaces with mainMod + scroll
            "$mainMod, mouse_down, workspace, e+1"
            "$mainMod, mouse_up, workspace, e-1"
  

            #### CUSTOM

            # Wallpaper
            "$mainMod SHIFT, W, exec, waypaper --restore --random --backend swww"

            # Keybinds

            ", XF86AudioMedia, exec, playerctl play-pause"
            ", XF86AudioPlay, exec, playerctl play-pause"
            ", XF86AudioStop, exec, playerctl stop"
            ", XF86AudioPrev, exec, playerctl previous"
            ", XF86AudioNext, exec, playerctl next"
            ", XF86AudioMute, exec, pactl set-sink-mute @DEFAULT_SINK@ toggle"
            ", XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle"

            # Screenshot
      
            ", Print, exec, grim -g \"$(slurp)\" - | swappy -f -"

        ]
        ++ (
            # workspaces
            # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
            builtins.concatLists (builtins.genList (
                x: let
                ws = let
                    c = (x + 1) / 10;
                in
                    builtins.toString (x + 1 - (c * 10));
                in [
                "$mainMod, ${ws}, workspace, ${toString (x + 1)}"
                "$mainMod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
                ]
            )
            10)
        );

        binde = [
            ", XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +1%"
            ", XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -1%"
            ", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
            ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
        ];

        bindm = [
            # Move/resize windows with mainMod + LMB/RMB and dragging
            "$mainMod, mouse:272, movewindow"
            "$mainMod, mouse:273, resizewindow"
            "$mainMod, mouse:274,"
        ];

    };
  
  };

}