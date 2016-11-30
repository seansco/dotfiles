dotfiles
========

|  File                   | Symlink                          |
|-------------------------|----------------------------------|
| `ack/ackrc`             | `~/.ackrc`                       |
| `awesome`               | `~/.config/awesome`              |
| `bash/bash_aliases`     | `~/.bash_aliases`                |
| `bash/dircolors`        | `~/.dircolors`                   |
| `clinc/clincrc`         | `~/.clincrc`                     |
| `git/gitconfig`         | `~/.gitconfig`                   |
| `gtk/gtk-3.0`           | `~/.config/gtk-3.0`              |
| `gtk/gtkrc-2.0`         | `~/.gtkrc-2.0`                   |
| `nvidia/blacklist.conf` | `/etc/modprobe.d/blacklist.conf` <sup>1</sup> |
| `synapse`               | `~/.config/synapse`              |
| `vim/init.vim`          | `~/.config/nvim/init.vim`        |
| `xdg/user-dirs.dirs`    | `~/.config/user-dirs.dirs`       |

<sup>1</sup> It seems as though this file needs to be copied rather than
symlinked. `update-initramfs -u` does not seem to detect it when symlinked.
