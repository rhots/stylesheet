all: build

build:
	sass --style compressed --sourcemap=none main.scss main.css

clean:
	rm main.css

lint:
	sass-lint --verbose --no-exit --ignore 'naut_base.scss' '**/*.scss'

nocompress:
	sass --sourcemap=none main.scss main.css

watch:
	sass --style compressed --sourcemap=none --watch main.scss:main.css

.PHONY: all build clean lint nocompress watch
