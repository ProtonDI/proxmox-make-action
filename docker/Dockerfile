FROM debian

# Install build dependencies
RUN dpkg --add-architecture arm64 && \
    dpkg --add-architecture riscv64 && \
    apt-get update && \
    apt-get install --no-install-recommends -y \
        apt-transport-https ca-certificates wget \
        apt-utils git rsync fakeroot sudo \
        build-essential crossbuild-essential-arm64 gcc-riscv64-linux-gnu g++-riscv64-linux-gnu && \
    echo "deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription-repo.list && \
    echo "deb http://download.proxmox.com/debian/devel bullseye main" > /etc/apt/sources.list.d/pve-devel-repo.list && \
    wget http://download.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg && \
    adduser --gecos runner --disabled-password runner && \
    echo "runner ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    rm -rf /var/lib/apt/lists/*
