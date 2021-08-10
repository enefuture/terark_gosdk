all: update-server

update-server:
	CGO_LDFLAGS="./lib lterarkdb -lbz2 -ljemalloc -llz4 -lsnappy -lz -lzstd -pthread -lgomp -lrt -ldl -laio" go build -o bin/terark-example main.go

clean:
	@rm -f bin/terark-example

.PHONY: terark-example clean
