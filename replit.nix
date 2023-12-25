{ pkgs }: {
    deps = [
      pkgs.glibcLocales
      pkgs.glibc
      pkgs.cowsay
    ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.glibcLocales
    ];
  };
}