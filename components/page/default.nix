{ component, contracts, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ generic_text js_create ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "08alc1kw9xa6x2bp5nq31dsb70fd98s2cqfn8x8ajhk62p6dzmb7";
}