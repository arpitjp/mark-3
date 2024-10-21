enable-git-hooks:
	git config --local include.path ../.gitconfig
	chmod ug+x .githooks/*

# make run
# make run file=docs/examples/hello
run:
	go run src/main.go $(file)

test:
	go test ./...

# make push m="commit message"
push:
	git add .
	git commit -m "$(m)"
	git push origin