with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "impurePythonEnv";
  buildInputs = [
    #myCustomPython.interpreter
    git
    python36Full
    python36Packages.virtualenv
    python36Packages.pip
    libxml2
    libxslt
    libffi
    openssl
    libzip
    zlib
    bashInteractive
    bashCompletion
    stdenv
  ];
  src = null;
  shellHook = ''
    unset http_proxy
    unset TMUX
    export GIT_SSL_CAINFO=/etc/ssl/certs/ca-bundle.crt
    unset SOURCE_DATE_EPOCH
    virtualenv --python=`which python` --clear venv
    source venv/bin/activate
    pip install -r requirements.txt -r requirements-dev.txt
    PYDEV_PKGS="pylint ipython bpython watchdog ropevim tmuxp rope"
    echo $PYDEV_PKGS | sed s/' '/'\n'/g | xargs -i pip install {}
    tmuxp load tmuxp.yaml
  '';
}

