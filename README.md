# Config

This repository contains all of the configuration files & scripts I use to set up a brand new [Omarchy](https://omarchy.org) device.

The core of this project uses [Ansible](https://www.ansible.com/) to manage the configuration of my Omarchy system via a single playbook & some community made tools to streamline the process.

## What I use

- [Ghostty](https://ghostty.org/) as my terminal of choice
- zsh + [oh-my-zsh](https://ohmyz.sh/) as my shell (+plugins)
- [OpenCode](https://opencode.ai/) & [Claude Code](https://claude.com/product/claude-code) for AI tooling
- [`fnm`](https://github.com/Schniz/fnm) for managing Node.js versions
- [Visual Studio Code](https://code.visualstudio.com/) as my editor
- [1Password](https://1password.com/) for password management

## Get Started

Before you can get started using this project, you will need to do a few things:

<details>

<summary>Install Omarchy</summary>

This playbook is designed to supplement an existing [Omarchy](https://omarchy.org) installation. Follow the [Omarchy manual](https://learn.omacom.io/2/the-omarchy-manual) to install Omarchy first.

</details>

---

<details>

<summary>Install Ansible</summary>

This project uses [Ansible](https://www.ansible.com/) to manage the configuration. Install it via pacman:

```zsh
sudo pacman -S ansible
```

</details>

---

<details>

<summary>Clone the repository</summary>

Once the above tools are installed, you can clone this repository by running the following command:

```zsh
git clone https://github.com/nurodev/config.git ~/config
```

</details>

---

<details>

<summary>Install Ansible Collections</summary>

There are a few Ansible community made tools & collections that this project relies on. Install them by running the `install` task using `make`:

```zsh
cd ~/config && make install
```

</details>

---

<details>

<summary>Run the playbook</summary>

With everything needed installed, you can now run the playbook to configure your Omarchy system:

```zsh
cd ~/config && make
```

After several minutes you should have a fully configured setup.

</details>

---

<details>

<summary>Manual steps</summary>

Sadly not absolutely everything can be done with an Ansible playbook, so there are a few manual steps that need to be done once the playbook has finished running. For this I have created a dedicated [MANUAL_SETUP.md](./MANUAL_SETUP.md) file.

</details>

## Credits

Massive shoutout to [Jeff Geerling (@geerlingguy)](https://github.com/geerlingguy). His own repository to set up a new macOS device for development, [`mac-dev-playbook`](https://github.com/geerlingguy/mac-dev-playbook), was a massive help & source of great information on how to set up my own project with a similar structure but to meet my own requirements.
