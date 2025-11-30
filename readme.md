a dotfiles repo, configured with chezmoi and written by me

manages configuration for my core tools across a handful of machines (MacOS and Linux)
- terminal emulators: terminal, ghostty, and ??? (default gnome terminal)
- editor: zed
- shells: zsh, bash, fish, nu
- terminal prompt: starship

secrets and semi-secrets (like host names and email addresses) are, ideally, usually, managed with 1password, init prompts, and env magic.

also, and ultimately _before_ handling configuration files, this repo installs packages I use for my work as a mixed-methods researcher, hobbyist computer user, and renegade technologist.

chezmoi stuff lives in `/dots`, leaving the repo root clean for a future `install.sh` script, `/scripts` directory, and whatever other stupid ideas I might have.

the ultimate purpose of this project is to provide a starting point of consistancy across an eclectic set of digital workspaces. what that looks like is highly opinionated, illegibly esoteric, and potentially deranged. you almost certainly do not want to use these dotfiles for yourself. they are, however, useful for my work. others might find them interesting.

## the full[^ish] setup process

[^ish]: lol as if I'll have full documentation on the first go

### pre-chezmoi setup
install homebrew[^linuxbrew] and, if linux, configure the default package manager toolchain

[^linuxbrew]: On MacOS Homebrew is the only game in town. On Linux I tend to prefer the default package manager. I'm mostly on Ubuntu so this is usually apt. However, there are places where brew is a slightly better option, even on Linux, for example: lazydocker and chezmoi.

Then install core packages needed to continue: usually chezmoi and 1password

### chezmoi

on mac: 
brew install chezmoi

on linux
`sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/bin/`

on init this chezmoi collects a handful of variables that shape how the config is organized:
- name
- whether this is a work machine or a personal machine
- email address for github, which is pulled from 1password
- operating system and distro (bundled into a single variable [as suggested in the docs](https://www.chezmoi.io/user-guide/machines/linux/))

for now configs are relatively similar across work and personal use, but who knows.

### set up all the configs
- zsh, bash, and nu (my shells)
- starship (my prompt)
- zed, (my editor)
- aliases I like
- other bullshit

# packages
@todo: make this true (this repo will not at present install any packages)

the packages: 

###### curl
gotta check that curl is available and sometimes it won't be

###### mise
installed on personal and work machines

installed by
macos: brew
debian-like: apt (after [adding repo](https://docs.astral.sh/uv/getting-started/installation/))

###### uv
@todo incorporate instructions from the [docs](https://docs.astral.sh/uv/getting-started/installation/)

###### zed
installed by
- macos: brew (`brew install --cask zed`)
- linux: curl'd installer  (`curl -f https://zed.dev/install.sh | sh`)

###### 1password
installed by: 
- macos: brew (include 1password-cli)
- linux-debian: apt (after [adding repo](https://support.1password.com/install-linux/#debian-or-ubuntu))
