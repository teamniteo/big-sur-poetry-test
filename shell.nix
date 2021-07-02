let
  nixpkgs = builtins.fetchTarball {
    # https://status.nixos.org/ -> nixos-21.05 on 2021-06-16
    url = "https://github.com/nixos/nixpkgs/archive/1f91fd1040667e9265a760b0347f8bc416249da7.tar.gz";
  };
  pkgs = import nixpkgs {};
  poetry2nix = import (fetchTarball {
    # https://github.com/nix-community/poetry2nix/commits/master on 2021-07-02
    url = "https://github.com/nix-community/poetry2nix/archive/e40e8ed0e8c11e709e4c8c7c20174facd265a021.tar.gz";
  }) {
    pkgs = pkgs;
    poetry = pkgs.poetry;
  };

  poetryOverrides = self: super: {
  };

  commonPoetryArgs = {
    overrides = [
      poetry2nix.defaultPoetryOverrides
      poetryOverrides
    ];
  };

  env = poetry2nix.mkPoetryEnv ( commonPoetryArgs // {
    pyproject = ./pyproject.toml;
    poetrylock = ./poetry.lock;
  });
in

pkgs.mkShell {
  name = "dev-shell";
  buildInputs = [
    env
    pkgs.poetry
  ];

}
