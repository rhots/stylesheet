all: build

build:
	sass --style compressed --sourcemap=none main.scss main.css

clean:
	rm main.css

watch:
	sass --style compressed --sourcemap=none --watch main.scss:main.css

.PHONY: all build clean watch
