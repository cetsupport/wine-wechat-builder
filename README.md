# Wine-WeChat-Builder

Welcome to the Wine-WeChat-Builder Docker repository! This project provides a robust Docker configuration designed to compile Wine in WoW64 mode, specifically optimized to support running WeChat on Wine.

## Environment and Versions
This Dockerfile is based on Ubuntu 24.04 and includes Wine 9.7, the latest version available at the time of writing this document.

## Pre-requisites
Before running the Docker build, ensure you have prepared the following directories in your environment:
- `wine-src`: This directory should contain the cloned Wine source code. Make sure to check out the specific Git branch or tag that you wish to build.
- `wine32-build`: A directory where the 32-bit Wine build artifacts will be stored.
- `wine64-build`: A directory for storing the 64-bit Wine build artifacts.

## Building the Image
To build the Docker image, navigate to the directory containing the Dockerfile and run:
```bash
docker build -t wine-wechat-builder .
```

## Running the Container
To run the container and start using Wine with WeChat, execute:
```bash
docker run -it wine-wechat-builder
```
This setup ensures that you have a clean, isolated environment for running WeChat under Wine, leveraging the latest improvements and optimizations available in Wine 9.7.

Feel free to contribute or fork this repository to adapt the Docker environment to your needs!
