# hello-idris

```bash
## cabal(Ubuntu)
### install: sudo apt install cabal-install libffi-dev
### uninstall: sudo apt remove cabal-install libffi-dev
export CABAL_BIN_DIR="$HOME/.cabal/bin"
[ -e $CABAL_BIN_DIR ] && PATH+=":$CABAL_BIN_DIR"
## idris
### install: cabal update; cabal install -f FFI idris
```
