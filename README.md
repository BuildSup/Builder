# BuildOS Docker Image

Welcome to BuildOS! This Docker image provides a comprehensive environment for building and developing Android Open Source Project with all the necessary tools pre-installed. Maintained by [@Farley_Mi](https://t.me/@Farley_Mi).

## Docker Hub Repository

[BuildOS on Docker Hub](https://hub.docker.com/repository/docker/buildsupport/buildos/general)

## Included Tools

- nano
- bc
- bison
- ca-certificates
- curl
- flex
- gcc
- git
- libc6-dev
- libssl-dev
- openssl
- python-is-python3
- ssh
- wget
- zip
- zstd
- sudo
- make
- clang
- gcc-arm-linux-gnueabi
- software-properties-common
- build-essential
- libarchive-tools
- gcc-aarch64-linux-gnu
- libffi-dev
- libncurses5-dev
- zlib1g
- zlib1g-dev
- libreadline-dev
- libbz2-dev
- libsqlite3-dev
- pigz
- python2
- python3
- cpio
- lld
- zsh (with Oh My Zsh and gnzh theme)

## Custom Features

- Oh My Zsh with the `gnzh` theme for an enhanced terminal experience.
- Custom welcome message upon login.

## Installation and Usage

Follow these steps to install and run the BuildOS Docker image.

### Prerequisites

- Ensure Docker is installed on your system. You can download and install Docker from [here](https://docs.docker.com/get-docker/).

### Step 1: Pull the Docker Image

To get the latest version of the BuildOS Docker image, use the following command:

```bash
docker pull buildsupport/buildos:latest
```

### Step 2: Run the Docker Container

Once the image is pulled, you can start a new container using:

```bash
docker run -it buildsupport/buildos:latest
```

This command will start the container and provide you with an interactive Zsh shell with all the tools and configurations.

### Step 3: Using the Container

Upon starting the container, you will be greeted with a welcome message and a Zsh shell configured with the `gnzh` theme. You can now use all the installed tools for your development and build tasks.

## Customizing the Container

If you want to modify or extend the Docker image, you can clone this repository, make changes to the Dockerfile, and build your own image.

### Building Your Own Image

1. Clone the repository:

    ```bash
    git clone https://github.com/BuildSup/Builder.git
    cd Builder
    ```

2. Build the Docker image:

    ```bash
    docker build -t buildsupport/buildos:latest .
    ```

3. Push your custom image to Docker Hub (optional):

    ```bash
    docker push buildsupport/buildos:latest
    ```

## Contributing

Feel free to contribute to this project by opening issues and submitting pull requests. For any questions or support, you can contact the maintainer on Telegram: [@Farley_Mi](https://t.me/@Farley_Mi).
