{ ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      shell = "fish";
    };

    shellIntegration = {
      enableFishIntegration = true;
    };


    font = {
      name = "JetBrainsMono Nerd Font Mono,FiraCode Nerd Font";
      size = 13.0;
    };

    settings = {
      enable_audio_bell = false;
      cursor_shape = "block";
      cursor_blink_interval = 0;
      scrollback_lines = 10000;
      window_padding_width = "0 5 5 5";
      window_margin_width = 5;
      single_window_margin_width = -1;
      tab_bar_style = "powerline";
      tab_bar_align = "left";
      active_tab_font_style = "bold";
      inactive_tab_font_style = "normal";
      background_opacity = "0.95";
    };
    keybindings = {
      "ctrl+shift+t" = "new_tab";
      "ctrl+shift+enter" = "new_window";
      "ctrl+shift+right" = "next_tab";
      "ctrl+shift+left" = "previous_tab";
      "ctrl+shift+w" = "close_window";
      "ctrl+shift+q" = "close_tab";
      "ctrl+shift+equal" = "change_font_size all +2.0";
      "ctrl+shift+minus" = "change_font_size all -2.0";
      "ctrl+shift+0" = "change_font_size all 0";
    };

    # Theme file
    extraConfig = ''
      include themes/noctalia.conf
    '';
  };
}
