{ ... }:

{

programs.noctalia-shell = {
  settings = {
    settingsVersion = 37;

    sessionMenu = {
    countdownDuration = 5000;
    enableCountdown = true;
    largeButtonsLayout = "grid";
    largeButtonsStyle = false;
    position = "center";
    powerOptions = [
      {
        action = "shutdown";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "reboot";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "suspend";s
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "hibernate";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "logout";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
      {
        action = "lock";
        command = "";
        countdownEnabled = true;
        enabled = true;
      }
    ];
    showHeader = true;
    showNumberLabels = true;
  };

  systemMonitor = {
    cpuCriticalThreshold = 90;
    cpuPollingInterval = 3000;
    cpuWarningThreshold = 80;
    criticalColor = "";
    diskCriticalThreshold = 90;
    diskPollingInterval = 3000;
    diskWarningThreshold = 80;
    enableDgpuMonitoring = false;
    externalMonitor = "resources || missioncenter || jdsystemmonitor || corestats || system-monitoring-center || gnome-system-monitor || plasma-systemmonitor || mate-system-monitor || ukui-system-monitor || deepin-system-monitor || pantheon-system-monitor";
    gpuCriticalThreshold = 90;
    gpuPollingInterval = 3000;
    gpuWarningThreshold = 80;
    loadAvgPollingInterval = 3000;
    memCriticalThreshold = 90;
    memPollingInterval = 3000;
    memWarningThreshold = 80;
    networkPollingInterval = 3000;
    tempCriticalThreshold = 90;
    tempPollingInterval = 3000;
    tempWarningThreshold = 80;
    useCustomColors = false;
    warningColor = "";
  };
};
};
}
