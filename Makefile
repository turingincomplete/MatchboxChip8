# Makefile for Matchbox CHIP-8
GH_REF = turingincomplete/MatchboxChip8

all: build

build: clean
	@echo "Building Matchbox..."; cp -r demo dist; webpack

clean:
	@echo "Cleaning build files..."; rm -rf ./dist

check: test

test:
	@npm test

lint:
	@jshint ./src/*

deploy: build
	@GH_REF=$(GH_REF) ./deploy.sh
