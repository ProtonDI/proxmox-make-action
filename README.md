# proxmox-make-action

GitHub action for creating multi-arch Proxmox packages

## When building with Docker (default option)

`proxmox-make` will use a container named `proxmox-make-action`, and depending on your selected option, 2 images under `proxmox-make-action` repository. If you already have resources under those names, they will be overwritten/deleted.
