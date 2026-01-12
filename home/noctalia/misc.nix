{ ... }:

{
  programs.noctalia-shell = {
    settings = {
      settingsVersion = 37;

      hooks = {
        darkModeChange = "";
        enabled = true;
        performanceModeDisabled = "";
        performanceModeEnabled = "";
        screenLock = "";
        screenUnlock = "";
        wallpaperChange = "";
      };

      nightLight = {
        autoSchedule = true;
        dayTemp = "6500";
        enabled = false;
        forced = false;
        manualSunrise = "06:30";
        manualSunset = "18:30";
        nightTemp = "4000";
      };

      osd = {
        autoHideMs = 2000;
        backgroundOpacity = 1;
        enabled = true;
        enabledTypes = [0 1 2 4];
        location = "top_right";
        monitors = [];
        overlayLayer = true;
      };
    };
  };
}
