{ ... }:

{

programs.noctalia-shell = {
  settings = {
    settingsVersion = 37;
templates = {
  alacritty = false;
  cava = false;
  code = false;
  discord = true;
  emacs = false;
  enableUserTemplates = true;
  foot = false;
  fuzzel = false;
  ghostty = false;
  gtk = true;
  helix = false;
  hyprland = false;
  kcolorscheme = true;
  kitty = true;
  mango = false;
  niri = true;
  pywalfox = false;
  qt = true;
  spicetify = false;
  telegram = false;
  vicinae = false;
  walker = false;
  wezterm = false;
  yazi = false;
  zed = true;
  zenBrowser = true;
};

wallpaper = {
  directory = "/home/zoro/Pictures/Wallpapers";
  enableMultiMonitorDirectories = false;
  enabled = true;
  fillColor = "#000000";
  fillMode = "crop";
  hideWallpaperFilenames = false;
  monitorDirectories = [];
  overviewEnabled = true;
  panelPosition = "bottom_center";
  randomEnabled = false;
  randomIntervalSec = 300;
  recursiveSearch = false;
  setWallpaperOnAllMonitors = true;
  solidColor = "#1a1a2e";
  transitionDuration = 1200;
  transitionEdgeSmoothness = 0.1;
  transitionType = "disc";
  useSolidColor = false;
  useWallhaven = false;
  wallhavenApiKey = "";
  wallhavenCategories = "111";
  wallhavenOrder = "desc";
  wallhavenPurity = "100";
  wallhavenQuery = "";
  wallhavenRatios = "";
  wallhavenResolutionHeight = "";
  wallhavenResolutionMode = "atleast";
  wallhavenResolutionWidth = "";
  wallhavenSorting = "relevance";
  wallpaperChangeMode = "random";
};

colorSchemes = {
  darkMode = true;
  manualSunrise = "06:30";
  manualSunset = "18:30";
  matugenSchemeType = "scheme-tonal-spot";
  predefinedScheme = "Noctalia (default)";
  schedulingMode = "off";
  useWallpaperColors = true;
};
};
};
}
