{ cabal
, attempt
, aws
, cereal
, conduit
, conduitExtra
, cryptohash
, dataDefault
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
, optparseApplicative
, resourcet
, retry
, shakespeare
, stm
, tar
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
    cereal
    conduit
    conduitExtra
    cryptohash
    dataDefault
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
    optparseApplicative
    resourcet
    retry
    shakespeare
    stm
    tar
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
