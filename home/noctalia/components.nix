{ ... }:

{
programs.noctalia-shell = {
  settings = {
    settingsVersion = 37;
    appLauncher = {
      autoPasteClipboard = false;
      customLaunchPrefix = "";
      customLaunchPrefixEnabled = false;
      enableClipPreview = true;
      enableClipboardHistory = true;
      iconMode = "tabler";
      ignoreMouseInput = false;
      pinnedExecs = [];
      position = "center";
      screenshotAnnotationTool = "";
      showCategories = true;
      showIconBackground = true;
      sortByMostUsed = true;
      terminalCommand = "kitty -e";
      useApp2Unit = false;
      viewMode = "list";
    };
    controlCenter = {
      cards = [
        {
          enabled = true;
          id = "profile-card";
        }
        {
          enabled = true;
          id = "shortcuts-card";
        }
        {
          enabled = true;
          id = "audio-card";
        }
        {
          enabled = true;
          id = "brightness-card";
        }
        {
          enabled = false;
          id = "weather-card";
        }
        {
          enabled = true;
          id = "media-sysmon-card";
        }
      ];
      diskPath = "/";
      position = "close_to_bar_button";
      shortcuts = {
        left = [
          {
            id = "Network";
          }
          {
            id = "Bluetooth";
          }
          {
            id = "ScreenRecorder";
          }
        ];
        right = [
          {
            id = "PowerProfile";
          }
          {
            id = "KeepAwake";
          }
          {
            id = "WallpaperSelector";
          }
        ];
      };
    };

    desktopWidgets = {
      enabled = false;
      gridSnap = false;
      monitorWidgets = [
        {
          name = "eDP-1";
          widgets = [];
        }
      ];
    };
  };
};
}
