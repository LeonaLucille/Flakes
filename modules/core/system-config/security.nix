{
  pkgs,
  lib,
  ...
}:
{

  services = {
    pcscd.enable = true;
    udev.packages = [ pkgs.yubikey-personalization ];
  };
 
  security.pam = {
    u2f = {
      enable = true;
      control = "sufficient";
      settings = {
      
        cue = true;
        cue_prompt = "Please touch the YubiKey";
        origin = "pam://yubi";
        authfile = pkgs.writeText "u2f-mappings" (
          lib.concatStrings [
          ":ltechel::lKYlb+CCPdTlbFaQefB0UGzuXzQI11wQUawDXTlFWwKUOoQ1zUHsIN5CWpvYHb5/51N4X5LaKRBoCKs8HeUCmw==,4XKNpJ0I/bGgfDIf6JPthNMg7NR937yZaJbpNitTGTNbmR/dTi1qh6UW1IZ/jtKTW4sU6JRVuO/gcdkKxdzlOA==,es256,+presence"
        ]
        );
      };
    };

    services = {
      login.u2fAuth = true;
      sudo.u2fAuth = true;
    };
  };
}
