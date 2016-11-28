all: build

build:
	sass --style compressed main.scss main.css

clean:
	rm main.css

.PHONY: all build clean
