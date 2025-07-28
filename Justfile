@build:
	dune build

@run: build
	dune exec ./bin/main.exe

@watch:
	dune build --watch

git-commit MESSAGE:
    git add .
    git commit -m "{{MESSAGE}}"
    git push
