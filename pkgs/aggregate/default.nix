{ stdenv, fetchurl  }:
stdenv.mkDerivation rec { 
  pname = "aggregate";
  version = "1.6";

  src = fetchurl {
    url = "ftp://ftp.isc.org/isc/aggregate/aggregate-1.6.tar.gz";
    sha256 = "sha256-FmUDAFzYcixzDlMMyQZS3foZiiViSRTGXf/D64e6VII=";
  };
  preInstall = ''
    mkdir -p $out/bin $out/man/man1
  '';
}


