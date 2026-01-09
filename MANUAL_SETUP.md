# Manual Setup

Similar to Jeff Geerling's [`mac-dev-playbook/full-mac-setup.md`](https://github.com/geerlingguy/mac-dev-playbook/blob/master/full-mac-setup.md) guide, there is sadly no way to automate everything in life.

With that, this guide covers all steps from start to finish on everything I need to do to set up a new Omarchy device. Both automated & manual steps are included.

## Password Manager

Open [1Password](https://1password.com/) & sign in to your account.

## Spotify

Open [Spotify](https://www.spotify.com/) & sign in to your account.

## Discord

Open [Discord](https://discord.com/) & sign in to your account.

## Visual Studio Code

- **Log in to your account**: Open [Visual Studio Code](https://code.visualstudio.com/) & sign in to your account.
- **Enable settings sync**: Enable the `Settings Sync` feature.

## Docker

Enable and start the Docker service:

```zsh
sudo systemctl enable docker
sudo systemctl start docker
```

Add your user to the docker group (to run docker without sudo):

```zsh
sudo usermod -aG docker $USER
```

Log out and back in for the group change to take effect.
