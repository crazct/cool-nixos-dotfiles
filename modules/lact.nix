{ ... }:
{
  services.lact = {
    enable = true;
    settings = {
      version = 7;
      daemon = {
        log_level = "info";
        admin_group = "wheel";
      };
      apply_settings_timer = 5;
      gpus = {
        "10DE:2206-1462:3892-0000:01:00.0" = {
          power_mizer_mode = "PreferMaximumPerformance";
          min_core_clock = 210;
          max_core_clock = 1903;
          gpu_clock_offsets."0" = 141;
          mem_clock_offsets."0" = 1086;
        };
      };
    };
  };
}