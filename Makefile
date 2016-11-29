all: build

build:
	sass --style compressed main.scss main.css

clean:
	rm main.css
	rm main.css.map

.PHONY: all build clean
