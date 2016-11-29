{ component, contracts, components, crates, pkgs }:

component {
  src = ./.;
  contracts = with contracts; [ js_create generic_text fbp_action ];
  crates = with crates; [];
  osdeps = with pkgs; [];
  depsSha256 = "18z7jbh2hn3pjmgnxw21sa3yj12h23khksw1xilhpaxam3xn779s";
  configurePhase = with components; ''
      substituteInPlace src/lib.rs --replace "ui_js_flex" "${flex}"
  '';
}