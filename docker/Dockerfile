FROM debian:bullseye

RUN dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get full-upgrade -y && \
    apt-get install --no-install-recommends -y \
        apt-transport-https ca-certificates wget \
        apt-utils git rsync fakeroot sudo \
        devscripts lintian \
        build-essential crossbuild-essential-arm64 && \
    echo "deb [signed-by=/usr/share/keyrings/proxmox-release-bullseye.gpg] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription-repo.list && \
    echo "deb [signed-by=/usr/share/keyrings/proxmox-release-bullseye.gpg] http://download.proxmox.com/debian/devel bullseye main" > /etc/apt/sources.list.d/pve-devel-repo.list && \
    wget http://download.proxmox.com/debian/proxmox-release-bullseye.gpg -O /usr/share/keyrings/proxmox-release-bullseye.gpg && \
    adduser --gecos runner --disabled-password runner && \
    echo "runner ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    rm -rf /var/lib/apt/lists/*
