{
  lib,
  stdenvNoCC,
  fetchzip,
}:

stdenvNoCC.mkDerivation {
  pname = "Kollektif";
  version = "1";

  src = fetchzip {
    url = "https://unblast.com/wp-content/uploads/2023/06/kollektif.zip";
    stripRoot = false;
    hash = "sha256-ZKRAxQVV67W2dGDXAoeQZfOAiNFYpr7wqg8gjB0oFZw=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    mv *.ttf $out/share/fonts/truetype

    runHook postInstall
  '';

  meta = {
    description = "Kollektif Sans";
    longDescription = ''
      Kollektif is a free geometric sans serif typeface with four styles and weights. The author Dogu Kaya designed this font as an alternative to the styles that were dominant in the 21-century usually characterized by less contract.
    '';
    homepage = "https://unblast.com/kollektif-sans-typeface/";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.all;
    maintainers = [ ];
  };
}
