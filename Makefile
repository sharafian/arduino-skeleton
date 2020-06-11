.DEFAULT_GOAL := install
BUILD := arduino-cli compile \
	-o ./dist/main.out \
	--fqbn arduino:avr:uno \
	--libraries src

export ARDUINO_SKETCHBOOK_DIR=.

install:
	arduino-cli core install arduino:avr
	# install libs here

clean:
	rm -rf dist libraries

build:
	mkdir -p ./dist/
	$(BUILD) src/main.ino

upload:
ifndef DEV
	$(error DEV is undefined)
endif
	$(BUILD) -uvp $(DEV) src/main.ino
