# Me new dotfiles

These are my dotfiles for the following programs:
- alacritty
- bash
- git
- htop
- hypr
- npm
- rofi
- systemd (user unit for my ssh agent)
- vim
- waybar

Setting up the dotfiles themselves is easy enough:

```bash
stow . # Does everything
```

Installing these things is outside of this project's goals, as well as removing any existing configuration in case it is there.

## Note:

To make the programs properly use XDG Base Directory specification some tinkering had to be made.

Since I also wanted to remove `.bashrc` from the `$HOME` I put this code at the end of `/etc/bash.bashrc`:

```bash
# /etc/bash.bashrc
...
# I know I know... but with this even '.bashrc' does not need to be in the $HOME dir anymore
if [[ -f "$XDG_CONFIG_HOME/bash/profile" ]]; then
  . "$XDG_CONFIG_HOME/bash/profile"
fi
# Tecnically should be in /etc/profile? Of course, but meh...
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_RUNTIME_DIR="already properly set from what I recall"
```

Supposedly `bash` should now look for its files on `$XDG_<something>` too, but no matter where I put the files nor how I named them they simply were not sourced. So this is a kind of workaround until I get that done right.

I'm still not sure if this will work (nor how to make it work if it doesn't) on NixOS. Started using that thing literally yesterday.

Update: for now just using the `/etc/bashrc.local` file works fine.
