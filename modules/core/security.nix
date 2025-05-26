{
  pkgs,
  lib,
  ...
}: {
  security.pam = {
    u2f = {
      enable = true;
      control = "sufficient";
      settings = {
        authfile = pkgs.writeText "u2f-mappings" (lib.concatStrings [
          ":ltechel:fH57dgvo3upV7X0ImdNx0UB0KCUsKn3Z0um+RUd3COQzDKc+nFXR7xyTYoZb1rJz2T35NoHIVfAAZAz7QGl8rg==,kg3bxK+Lu0iCy067wXRQyApG3SlGvsjiCfAxwg8FNX0Ki6cYxeOW0w+vp05e2SpIaGn1UXQuHEv6JZiTE5DUyA==,es256,+presence"
        ]);
      };
    };
  };

  services.pcscd.enable = true;
}
