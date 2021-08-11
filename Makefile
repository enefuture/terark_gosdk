all: update-server

export LD_LIBRARY_PATH="/data/homework/weilai/terark_gosdk/lib"

update-server:
	CGO_LDFLAGS="-Wl,-Bstatic lterarkdb -lbz2 -ljemalloc -llz4 -lsnappy -lz -lzstd" go build -o bin/terark-example main.go

clean:
	@rm -f bin/terark-example

.PHONY: terark-example clean
