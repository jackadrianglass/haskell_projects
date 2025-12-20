{ pkgs, lib, config, inputs, ... }:
{
  env.GREET = "AOC 2025";

  packages = [ pkgs.git ];

  languages.haskell.enable = true;
  languages.haskell.stack.enable = true;
}
