with (import <nixpkgs> {});
rec {
  jitsi-stream-ui = mkYarnPackage {
    name = "jitsi-stream-ui";
    src = fetchFromGitHub {
      owner = "oe1rfc";
      repo = "jitsi-stream-ui";
      rev = "d3a9898c7a0eea736613e9815dacd9fb835deae3";
      sha256 = "0zbps8chdg0pkml2yv8vhc5clkighjll779clnj8ws4icsjhlp00";
    };
    patches = [
      ./package.json.patch
    ];
    #packageJSON = "${src}/package.json";
    #yarnLock = "${src}/yarn.lock";
  };
}
