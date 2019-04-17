This package recipe is a custom librealsense2 build without logging.

The package builds outside conda environment, because the conda compiler and environment is missing "<linux/usb/video.h>" it prevents librealsense to build.
So we aim to provide a means to distribute the package, but to build and use it you need to make sure that some system packages are installed.

build requirements:

```
sudo apt-get install libusb-1.0.0-dev cmake pkg-config
```

runtime requirements

```
apt-get install libudev1:amd64 libusb-1.0-0:amd64 libstdc++6:amd64 libc6:amd64 libgcc1:amd64
```
