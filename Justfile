@build:
	dune build

@update-dune:
	sh -c "find bin -maxdepth 1 -type f -name '*.ml' | while read f; do basename \"\$f\" .ml; done | awk 'BEGIN { print \"(executables\n (names\" } { print \"  \" \$0 } END { print \"))\" }' > bin/dune"

@run file: update-dune build
	dune exec ./bin/$(basename $(basename {{file}} .ml)).exe


git-commit MESSAGE:
    git add .
    git commit -m "{{MESSAGE}}"
    git push
