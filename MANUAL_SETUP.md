# Manual Setup

Similar to Jeff Geerling's [`mac-dev-playbook/full-mac-setup.md`](https://github.com/geerlingguy/mac-dev-playbook/blob/master/full-mac-setup.md) guide, there is sadly no way to automate everything in life.

With that, this guide covers all steps from start to finish on everything I need to do to set up a new macOS device. Both automated & manual steps are included.

## 🔒 Password Manager

Open [1Password](https://1password.com/) & sign in to your account.

## 🔑 GitHub SSH Key & Commit Signing

The playbook generates an `ed25519` SSH key at `~/.ssh/id_ed25519` and writes `~/.ssh/allowed_signers` (used by git to verify your own signatures locally). To finish, register the **public** key with GitHub:

```sh
# Authentication — required, since the gitconfig rewrites github.com HTTPS to SSH
gh ssh-key add ~/.ssh/id_ed25519.pub --type authentication --title "$(scutil --get ComputerName)"

# Signing — gives commits the green "Verified" badge
gh ssh-key add ~/.ssh/id_ed25519.pub --type signing --title "$(scutil --get ComputerName) signing"
```

If `gh` isn't authenticated yet, add the key manually at <https://github.com/settings/ssh/new>, once as an _Authentication Key_ and once as a _Signing Key_ (same key, two entries).

## 🌍 Browser

- **Log in to your Arc account**: Open Arc & it should prompt you to sign in to your account.
- **Configure settings**:
  - **Sync sidebar**: Enable the `Sync Sidebar` option.
  - **Warn before quit**: Enable the `Warn before quit` option.
  - **Search engine**: Change the default search engine to `DuckDuckGo`.
  - **App icon**: Change the icon to `Candy Arc`.
- **Sign in to everything**: Go through all "common" websites and sign in to all accounts needed.

## 🚀 Rocket (emojis)

- **Start at Login**: Enable the config option to start Rocket at login.
- **Add disabled app**: Add [Raycast](https://www.raycast.com/) to the list of disabled apps.
- **Add disabled websites**: Add `app.slack.com` to the list of disabled websites.

## ⌨️ Klack

- **Start at Login**: Enable the config option to start Klack at login.
- **Change switches**: Change the switches to `Cream`.

## 🔥 Hot

- **Start at Login**: Enable the config option to start Hot at login.

## 🎼 Spotify

Open [Spotify](https://www.spotify.com/) & sign in to your account.

## 💬 Discord

Open [Discord](https://discord.com/) & sign in to your account.

## 🐳 Orbstack

Open [Orbstack](https://orbstack.com/) & sign in to your account.

## 👨‍💻 Visual Studio Code

- **Log in to your account**: Open [Visual Studio Code](https://code.visualstudio.com/) & sign in to your account.
- **Enable settings sync**: Enable the `Settings Sync` feature.

## 🥷 VPN

Open [Wireguard](https://www.wireguard.com/) & import any existing VPN tunnels.

## 🧮 Menu bar

Re-order the menu bar items to match the following order from right-to-left:

- Date / Time
- Control Centre
- Spotlight Search
- WiFi
- Battery
- Rocket
- Cleanshot
- 1Password
- Klack
- OrbStack
- Hot
