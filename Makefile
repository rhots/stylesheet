GITSHA := $(shell git rev-parse --short HEAD 2>/dev/null)
COMMITSUMMARY := $(shell git log --format=%s -n 1 HEAD 2>/dev/null)
COMMITMSG := $(shell git log --format=%b -n 1 HEAD 2>/dev/null)

all: build

build:
	sass --style compressed --sourcemap=none main.scss main.css

clean:
	rm main.css

lint:
	sass-lint --verbose --no-exit --ignore 'naut_base.scss' '**/*.scss'

nocompress:
	sass --sourcemap=none main.scss main.css

revision:
	@echo "$(GITSHA) - $(COMMITSUMMARY) - $(COMMITMSG)"

watch:
	sass --style compressed --sourcemap=none --watch main.scss:main.css

.PHONY: all build clean lint nocompress revision watch
