FROM haskell:9.8.2

ENV PATH="${PATH}:/root/.ghcup/bin:/root/.cabal/bin:/root/.ghc/bin" \
    BOOTSTRAP_HASKELL_NONINTERACTIVE=1

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh \
    && ghcup install ghc 9.8.2 \
    && ghcup install hls 2.9.0.1

RUN cabal update \
    && cabal install hlint
