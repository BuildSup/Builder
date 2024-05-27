# Use the official Ubuntu 20.04 base image
FROM ubuntu:20.04

# Set the maintainer label with a Telegram link
LABEL maintainer="https://t.me/@Farley_Mi"

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y \
        nano \
        bc \
        bison \
        ca-certificates \
        curl \
        flex \
        gcc \
        git \
        libc6-dev \
        libssl-dev \
        openssl \
        python-is-python3 \
        ssh \
        wget \
        zip \
        zstd \
        sudo \
        make \
        clang \
        gcc-arm-linux-gnueabi \
        software-properties-common \
        build-essential \
        libarchive-tools \
        gcc-aarch64-linux-gnu \
        libffi-dev \
        libncurses5-dev \
        zlib1g \
        zlib1g-dev \
        libreadline-dev \
        libbz2-dev \
        libsqlite3-dev \
        pigz \
        python2 \
        python3 \
        cpio \
        lld \
        zsh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /root

# Clone the proton-clang repository
RUN git clone https://gitlab.com/LeCmnGend/proton-clang -b clang-15 --depth=1 /root/BuildTools/clang-proton

# Copy the local BuildTools directory to the /root/BuildTools directory in the container
COPY BuildTools /root/BuildTools

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && \
    # Set the default shell to zsh
    chsh -s $(which zsh) && \
    # Change theme to "gnzh"
    sed -i 's/ZSH_THEME=".*"/ZSH_THEME="gnzh"/' ~/.zshrc

# Add custom credits to the .zshrc file
RUN echo 'clear' >> ~/.zshrc && \
    echo 'echo "Welcome to BuildOS"' >> ~/.zshrc && \
    echo 'echo "Make Your build easier!!"' >> ~/.zshrc && \
    echo 'echo "______________________________________"' >> ~/.zshrc && \
    echo 'echo "Maintained by: https://t.me/@Farley_Mi"' >> ~/.zshrc && \
    echo 'echo "You can PM me if you need more tools!!"' >> ~/.zshrc && \
    echo 'echo "______________________________________"' >> ~/.zshrc

# Default command to run
CMD ["zsh"]
