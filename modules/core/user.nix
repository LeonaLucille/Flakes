{
  pkgs,
  inputs,
  username,
  host,
  profile,
  ...
}: let
  inherit (import ../../machines/${host}/variables.nix) browser editor terminal timezone locale consoleKeymap;
in {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  users.users.${username} = {
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
    isNormalUser = true;

    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
      "kvm"
      "libvirtd"
    ];
  };

  home-manager = {
    useGlobalPkgs = false;
    useUserPackages = true;
    backupFileExtension = "bak";
    extraSpecialArgs = {inherit inputs username host profile;};
    users.${username} = {
      imports = [../programs];

      home.homeDirectory = "/home/${username}";
      home.stateVersion = "23.11";
      home.sessionVariables = {
      };
    };
  };

  boot = {
    tmp.cleanOnBoot = true;
    kernelPackages = pkgs.linuxPackages_zen;

    supportedFilesystems = ["ntfs"];
    loader = {
      efi.canTouchEfiVariables = true;
      efi.efiSysMountPoint = "/boot";
      timeout = null;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
    };
  };

  time.timeZone = timezone;
  i18n.defaultLocale = locale;
  i18n.extraLocaleSettings = {
    LANG = "en_US.UTF-8";
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  console.keyMap = consoleKeymap;
  networking = {
    hostName = host;
    networkmanager.enable = true;
  };
  system.stateVersion = "23.11"; # Did you read the comment?
}
