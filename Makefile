tmp/bosun:
	./build/download-latest-release

install:
	install -m 755 ./tmp/bosun $(DESTDIR)/usr/bin/

generate-changelog:
	./build/generate-changelog

update: generate-changelog

clean:
	rm -rf ./tmp/*
