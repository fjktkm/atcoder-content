FROM haskell:latest

ENV PATH="${PATH}:/root/.ghcup/bin:/root/.cabal/bin:/root/.ghc/bin" \
    BOOTSTRAP_HASKELL_NONINTERACTIVE=1

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

RUN ghcup install ghc 9.8.2 && \
    ghcup install hls 2.7.0.0

RUN cabal update

RUN cabal install hlint
