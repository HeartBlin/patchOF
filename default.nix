{ python3Packages, cpio }:

python3Packages.buildPythonApplication {
  pname = "patchOF";
  version = "0.1.0";
  src = ./.;

  propagatedBuildInputs = with python3Packages; [
    pycdlib
    cpio
  ];

  pyproject = true;
  build-system = [ python3Packages.setuptools ];
  doCheck = false;

  meta = {
    description = "A patching utiliy for GLIMs NixOS configuration for my two ISOs";
    platforms = [ "x86_64-linux" "aarch64-linux" ];
  };
}
