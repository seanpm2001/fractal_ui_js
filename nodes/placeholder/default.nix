{ subgraph, nodes, edges }:

subgraph {
  src = ./.;
  flowscript = with nodes; with edges; ''
   input => input div(${ui_js_nodes.tag}) output => output
   places => places orderer(${ui_js_nodes.visible}) output -> input div()
   '';
}