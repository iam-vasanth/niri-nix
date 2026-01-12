{ ... }:

{
  programs.noctalia-shell = {
    settings = {
      settingsVersion = 37;

      audio = {
        cavaFrameRate = 30;
        externalMixer = "pwvucontrol || pavucontrol";
        mprisBlacklist = [];
        preferredPlayer = "";
        visualizerType = "mirrored";
        volumeOverdrive = true;
        volumeStep = 5;
      };

      brightness = {
        brightnessStep = 5;
        enableDdcSupport = false;
        enforceMinimum = true;
      };

      calendar = {
        cards = [
          {
            enabled = true;
            id = "calendar-header-card";
          }
          {
            enabled = true;
            id = "calendar-month-card";
          }
          {
            enabled = true;
            id = "timer-card";
          }
          {
            enabled = true;
            id = "weather-card";
          }
        ];
      };

      location = {
        analogClockInCalendar = false;
        firstDayOfWeek = -1;
        hideWeatherCityName = false;
        hideWeatherTimezone = false;
        name = "Bengaluru";
        showCalendarEvents = true;
        showCalendarWeather = true;
        showWeekNumberInCalendar = false;
        use12hourFormat = false;
        useFahrenheit = false;
        weatherEnabled = true;
        weatherShowEffects = true;
      };

      network = {
        bluetoothDetailsViewMode = "grid";
        bluetoothHideUnnamedDevices = false;
        bluetoothRssiPollIntervalMs = 10000;
        bluetoothRssiPollingEnabled = false;
        wifiDetailsViewMode = "grid";
        wifiEnabled = true;
      };
    };
  };
}
