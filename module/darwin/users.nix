{
  users.users.constantinbegu = {
    name = "constantinbegu";
    home = "/Users/constantinbegu";
  };
  nix.settings.trusted-users = [
    "root"
    "constantinbegu"
  ];
}
