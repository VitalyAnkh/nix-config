{ pkgs, ... }:

let
  oc = "${pkgs.openconnect}/bin/openconnect";
  hip = "${pkgs.openconnect}/libexec/openconnect/hipreport.sh";
in
pkgs.writeShellScriptBin "gpvpn" ''
  sudo ${oc} --protocol=gp vpn.savagebeast.com -u gvolpe --csd-wrapper ${hip}
''
