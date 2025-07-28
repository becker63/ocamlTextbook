@build:
	dune build

@run: build
	dune exec ./bin/main.exe

@watch:
	dune build --watch
