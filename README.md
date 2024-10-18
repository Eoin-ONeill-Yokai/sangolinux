# Sango Linux (Name Pending) &nbsp; [![build-ublue](https://github.com/Eoin-ONeill-Yokai/sangolinux/actions/workflows/build.yml/badge.svg)](https://github.com/Eoin-ONeill-Yokai/sangolinux/actions/workflows/build.yml)


> [!WARNING]  
> All images are as-is and under heavy development and should only be considered for personal use. Unless you know me really well, I would advise not just using this blindly unless using a VM. 😄

Linux images based on the [Blue Build](https://blue-build.org/) project. Uses [UBlue Main](https://universal-blue.org/) as a base image but will come with presets that I think are sensible for various desktop environments.

- `harlock:latest` is a simple tiling desktop environment using Hyprland. Depending on how things change in the future, this might migrate to Sway w/ animation plugins. It should also come with `flavours` base16 theming options and configurations.
- `sango:latest` uses a Budgie desktop environment that's similar to "classic" windows paradigms. Mostly using this for my personal development goals as I would like to contribute more design ideas to this project in the future.
- `maetel:latest` uses a Gnome 3 desktop environment that's similar to MacOS. This one should be *really* simple gnome environment with some extra utilities.

### Design Goals
- Utility scripts and services that help keep clean user folders or other file naming goals.
- Presets that *I* think make sense for each desktop environment.
- A test bed for developing and working on multiple desktop environments. 

## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/eoin-oneill-yokai/sango:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/eoin-oneill-yokai/sango:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/Eoin-ONeill-Yokai/sangolinux
```
