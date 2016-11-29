all: build

build:
	sass --style compressed --sourcemap=none main.scss main.css

clean:
	rm main.css

.PHONY: all build clean
