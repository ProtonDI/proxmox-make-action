FROM debian

# Install build dependencies
RUN dpkg --add-architecture arm64 && \
    dpkg --add-architecture riscv64 && \
    apt-get update && \
    apt-get install --no-install-recommends -y \
        apt-utils git debhelper lintian rsync \
        build-essential crossbuild-essential-arm64 gcc-riscv64-linux-gnu g++-riscv64-linux-gnu
