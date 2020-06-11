# Arduino Skeleton
> `arduino-cli` project with Makefile and local libraries

- [Install Dependencies](#install-dependencies)
- [Build Sketch](#build-sketch)
- [Upload Sketch](#upload-sketch)
- [Adding Code](#adding-code)

These files assume you're using an Arduino Uno but it can easily
be changed by editing the `arduino core install arduino:avr` line
in the `install:` target of the Makefile and updating the `--fqbn` in
other commands.

## Install Dependencies

[Ensure you have `arduino-cli`](https://arduino.github.io/arduino-cli/latest/installation/)

```
make
```

Libraries can be added in the Makefile, under the install step.
They will be installed locally under `./libraries`.
For example:

```Makefile
install:
	arduino-cli core install arduino:avr
	# install libs here
	arduino-cli lib install "Adafruit GFX Library"
	arduino-cli lib install "Adafruit RA8875"
	arduino-cli lib install "Adafruit BusIO"
```

## Build Sketch

```
make build
```

Build output is saved to `./dist`

## Upload Sketch

```
make DEV=/dev/tty.usbmodem14401  upload
```

Builds the project to `./dist` and uploads to arduino.

Upload requires that you specify the port which which your computer
is connected to your arduino.

## Adding Code

When you run `make build` or `make upload`, it compiles `src/main.ino`
along with other files in `./src`. The `utils.h` and `utils.ino` files
show an example of other user-defined functions.
