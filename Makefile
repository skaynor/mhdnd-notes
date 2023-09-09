.PHONY: all test build publish

all: build publish

test:
	mkdocs serve

build:
	mkdocs build
