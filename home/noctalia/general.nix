{ ... }:

{
  programs.noctalia-shell = {
    settings = {
      settingsVersion = 37;

      general = {
        allowPanelsOnScreenWithoutBar = true;
        animationDisabled = false;
        animationSpeed = 1.2;
        avatarImage = "/home/zoro/Pictures/.face.png";
        boxRadiusRatio = 1;
        compactLockScreen = false;
        dimmerOpacity = 0.2;
        enableShadows = true;
        forceBlackScreenCorners = false;
        iRadiusRatio = 1;
        language = "";
        lockOnSuspend = true;
        radiusRatio = 1;
        scaleRatio = 1;
        screenRadiusRatio = 1;
        shadowDirection = "bottom";
        shadowOffsetX = 0;
        shadowOffsetY = 3;
        showChangelogOnStartup = true;
        showHibernateOnLockScreen = false;
        showScreenCorners = false;
        showSessionButtonsOnLockScreen = true;
      };

      notifications = {
        backgroundOpacity = 1;
        criticalUrgencyDuration = 15;
        enableKeyboardLayoutToast = true;
        enabled = true;
        location = "top_right";
        lowUrgencyDuration = 5;
        monitors = [];
        normalUrgencyDuration = 8;
        overlayLayer = true;
        respectExpireTimeout = true;
        saveToHistory = {
          critical = true;
          low = true;
          normal = true;
        };
        sounds = {
          criticalSoundFile = "";
          enabled = false;
          excludedApps = "discord,firefox,chrome,chromium,edge";
          lowSoundFile = "";
          normalSoundFile = "";
          separateSounds = false;
          volume = 0.5;
        };
      };

      screenRecorder = {
        audioCodec = "opus";
        audioSource = "default_output";
        colorRange = "limited";
        copyToClipboard = false;
        directory = "/home/zoro/Videos";
        frameRate = 60;
        quality = "very_high";
        showCursor = true;
        videoCodec = "h264";
        videoSource = "portal";
      };

      ui = {
        bluetoothDetailsViewMode = "grid";
        bluetoothHideUnnamedDevices = false;
        boxBorderEnabled = false;
        fontDefault = "Inter Nerd Font Display SemiBold";
        fontDefaultScale = 0.95;
        fontFixed = "Fira Code";
        fontFixedScale = 0.95;
        networkPanelView = "wifi";
        panelBackgroundOpacity = 0.9;
        panelsAttachedToBar = true;
        settingsPanelMode = "attached";
        tooltipsEnabled = false;
        wifiDetailsViewMode = "grid";
      };
    };
  };
}
