{ ... }:
{
  programs.plasma = {
    enable = true;
    workspace.colorScheme = "BreezeDark";
    configFile."kdeglobals"."General"."BrowserApplication".value = "zen-beta.desktop";
    session.sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";

    configFile = {
      baloofilerc.General.dbVersion = 2;
      dolphinrc.General.ViewPropsTimestamp = "2026,10,3,21,43,46.701";
      dolphinrc."KFileDialog Settings"."Places Icons Auto-resize" = false;
      dolphinrc."KFileDialog Settings"."Places Icons Static Size" = 22;
      kactivitymanagerdrc.activities."0fc0d082-ade4-4af7-90f2-0f6377807717" = "Default";
      kcminputrc."Libinput/1133/16505/Logitech G Pro ".PointerAccelerationProfile = 1;
      kcminputrc.Mouse.cursorSize = 32;
      kcminputrc.Mouse.cursorTheme = "Kitty";
      kded5rc.Module-device_automounter.autoload = false;
      kdeglobals.General.XftAntialias = true;
      kdeglobals.General.XftHintStyle = "hintslight";
      kdeglobals.General.XftSubPixel = "none";
      kdeglobals.General.font = "DejaVu Sans,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0";
      kdeglobals.General.menuFont = "DejaVu Sans,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0";
      kdeglobals.General.smallestReadableFont = "DejaVu Sans,8,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0";
      kdeglobals.General.toolBarFont = "DejaVu Sans,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0";
      kdeglobals.Icons.Theme = "Papirus-Dark";
      kdeglobals.KDE.contrast = 4;
      kdeglobals.KDE.frameContrast = 0.2;
      kdeglobals."KFileDialog Settings"."Allow Expansion" = false;
      kdeglobals."KFileDialog Settings"."Automatically select filename extension" = true;
      kdeglobals."KFileDialog Settings"."Breadcrumb Navigation" = true;
      kdeglobals."KFileDialog Settings"."Decoration position" = 2;
      kdeglobals."KFileDialog Settings"."Show Full Path" = false;
      kdeglobals."KFileDialog Settings"."Show Inline Previews" = true;
      kdeglobals."KFileDialog Settings"."Show Preview" = false;
      kdeglobals."KFileDialog Settings"."Show Speedbar" = true;
      kdeglobals."KFileDialog Settings"."Show hidden files" = false;
      kdeglobals."KFileDialog Settings"."Sort by" = "Name";
      kdeglobals."KFileDialog Settings"."Sort directories first" = true;
      kdeglobals."KFileDialog Settings"."Sort hidden files last" = false;
      kdeglobals."KFileDialog Settings"."Sort reversed" = false;
      kdeglobals."KFileDialog Settings"."Speedbar Width" = 140;
      kdeglobals."KFileDialog Settings"."View Style" = "DetailTree";
      kdeglobals.WM.activeBackground = "20,26,33,216";
      kdeglobals.WM.activeBlend = "20,26,33";
      kdeglobals.WM.activeFont = "DejaVu Sans,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0";
      kdeglobals.WM.activeForeground = "211,218,227";
      kdeglobals.WM.inactiveBackground = "47,52,63";
      kdeglobals.WM.inactiveBlend = "47,52,63";
      kdeglobals.WM.inactiveForeground = "102,106,115,216";
      kscreenlockerrc.Greeter.WallpaperPlugin = "org.kde.potd";
      kscreenlockerrc."Greeter/Wallpaper/org.kde.potd/General".Provider = "bing";
      kuriikwsfilterrc.General.EnableWebShortcuts = true;
      kuriikwsfilterrc.General.KeywordDelimiter = ":";
      kuriikwsfilterrc.General.PreferredWebShortcuts = "";
      kuriikwsfilterrc.General.UsePreferredWebShortcutsOnly = false;
      kwinrc.Desktops.Id_1 = "5dbca0e6-8fd2-4eae-88de-b05e86cae3c0";
      kwinrc.Desktops.Number = 1;
      kwinrc.Desktops.Rows = 1;
      kwinrc."Tiling/5dbca0e6-8fd2-4eae-88de-b05e86cae3c0/5ae9852c-7efd-4fe8-9938-ab0a1b9af77c".padding = 4;
      kwinrc."Tiling/5dbca0e6-8fd2-4eae-88de-b05e86cae3c0/5ae9852c-7efd-4fe8-9938-ab0a1b9af77c".tiles = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      kwinrc.Xwayland.Scale = 1.75;
      plasma-localerc.Formats.LANG = "en_US.UTF-8";
      plasmarc.Theme.name = "Dream-Color-Plasma";
    };
  };
}