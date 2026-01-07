# 🔧 Config

This repository contains all of the configuration files & scripts I use to tset up a brand new macOS device.

The core of this project uses [Ansible](https://www.ansible.com/) to manage the configuration of my macOS devices via a single playbook & some community made tools to streamlin the process.

## 🧰 What I use

- [Arc](https://arc.net/) is my preferred browser
- [Raycast](https://www.raycast.com/) is better than Spotlight
- [Ghostty](https://ghostty.org/) as my terminal of choice
- zsh + [oh-my-zsh](https://ohmyz.sh/) as my shell (+plugins)
- [OpenCode](https://opencode.ai/) & [Claude Code](https://claude.com/product/claude-code) for AI tooling
- [`fnm`](https://github.com/Schniz/fnm) for managing Node.js versions
- [Yaak](https://yaak.app/) makes API requests
- [OrbStack](https://orbstack.dev/) runs my local containers

## 🦄 Get Started

Before you can get started using this project, you will need to do a few things:

<details>

<summary>Install XCode Command Line Tools</summary>

A requirement for any macOS device used for development is to have the XCode Command Line Tools installed. You can install them by running the following command:

```zsh
xcode-select --install
```

</details>

---

<details>

<summary>Install Ansible</summary>

This project uses [Ansible](https://www.ansible.com/) to manage the configuration of my macOS devices. The initial setup requires Ansible to be installed via pip. Once the first run of the playbook is complete & Homebrew is installed you can uninstall the pip version of Ansible.

Add Python 3 to your `$PATH` environment variable by running the following command:

```zsh
export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"
```

Upgrade pip3 to the latest version by running the following command:

```zsh
sudo pip3 install --upgrade pip
```

Then finally install Ansible by running the following command:

```zsh
pip3 install ansible
```

</details>

---

<details>

<summary>Clone the repository</summary>

Once the above tools are installed, you can clone this repository by running the following command:

```zsh
git clone https://github.com/nurodev/config.git ~/config
```

macOS ships with `git` pre-installed, so you should be able to run the above command without any issues.
Otherwise you can download the repository as a `.zip` file from the GitHub website.

</details>

---

<details>

<summary>Install Ansible Collections</summary>

There is a few Ansible community made tools & collections, namely `community.general`, that this project relies on to get up and running. As such we need to install them locally. This can be done by running the `install` task using `make`:

```zsh
cd ~/config && make install
```

</details>

---

<details>

<summary>Run the playbook</summary>

With everything needed installed, you can now run the playbook to actually configure your macOS device. You can do this by running the following command:

```zsh
cd ~/config && make
```

After a several minutes you should have a fully configured setup.

> [!NOTE]  
> If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Homebrew issue. Run `brew doctor` to see if this is

</details>

---

<details>

<summary>Manual steps</summary>

Sadly not absolutely everything can be done with an Ansible playbook, so there are a few manual steps that need to be done once the playbook has finished running. For this I have created a dedicated [MANUAL_SETUP.md](./MANUAL_SETUP.md) file.

</details>

### 🐧 Linux Support

I have not yet tried this setup on any Linux environment but if I did I am sure there would be several issues.

That being said, at a later date I will begin work on a new `linux` branch of this repository that is designed to specifically for configuring any Linux distro of my choosing with a similar setup.

### ❤️ Credits

Massive shoutout to [Jeff Geerling (@geerlingguy)](https://github.com/geerlingguy). His own repository to set up a new macOS device for development, [`mac-dev-playbook`](https://github.com/geerlingguy/mac-dev-playbook), was a massive help & source of great information on how to set up my own project with a similar structure but to meet my own requirements
