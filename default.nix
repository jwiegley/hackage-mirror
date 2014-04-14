{ cabal
, attempt
, aws
, bytestring ? null
, cereal
, conduit
, conduitExtra
, cryptohash
, dataDefault
, directory ? null
, failure
, fastLogger
, filepath
, httpConduit
, lens
, liftedAsync
, liftedBase
, mmorph
, monadControl
, monadLogger
, old-locale ? null
, optparseApplicative
, resourcet
, retry ? null
, shakespeareText
, stm
, tar
, templateHaskell ? null
, temporary
, text
, thyme
, transformers
, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "simple-mirror";
  version = "1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    attempt
    aws
    bytestring
    cereal
    conduit
    conduitExtra
    cryptohash
    dataDefault
    directory
    failure
    fastLogger
    filepath
    httpConduit
    lens
    liftedAsync
    liftedBase
    mmorph
    monadControl
    monadLogger
    old-locale
    optparseApplicative
    resourcet
    retry
    shakespeareText
    stm
    tar
    templateHaskell
    temporary
    text
    thyme
    transformers
    unorderedContainers
  ];
  meta = {
    homepage = "https://newartisans.com";
    description = "Mirror Hackage simply and efficiently";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
