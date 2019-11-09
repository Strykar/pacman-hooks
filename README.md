# Pacman hooks
Some Arch Linux Pacman hooks I made

**Arch-Audit** - A post transaction hook that looks up installed packages to the Arch CVE via [arch-audit](https://www.archlinux.org/packages/community/x86_64/arch-audit/).

**Check-Broken-Packages** - This checks for packages with broken (non satisfied) dynamic library dependencies. This can happen if you have installled package A from the AUR, which depends on B from the official repositories, and B gets updated, but the packager of A does not bump its pkgrel. In most case you simply need to rebuild A. (Based off https://github.com/desbma/pacman-hooks)

**Orphans** - A post-transaction hook that searches for orphaned packages.

## Other hooks
1. [Pug](https://github.com/Ventto/pug) - An ALPM-hook to automatically save installed Pacman & AUR package lists into Gist files.

2. [Pacman-ps](https://gitlab.com/samcv/ps-lsof) - A tool for being able to get a list of the packages and files which own them that have been deleted or replaced after package upgrades and integrates with Pacman.

3. [Pacman-cleanup](https://aur.archlinux.org/packages/pacman-cleanup-hook/) - A hook to prune the pacman cache, keeps only the latest cache and the currently installed package.

4. [Informant](https://github.com/bradford-smith94/informant) - An Arch Linux News reader designed to also be used as a pacman hook. It works well with [tmux-xpanes](https://github.com/greymd/tmux-xpanes) to manage multiple Arch machine updates.

4. [Overdue](https://github.com/tylerjl/overdue/) - A pacman post-transaction hook that looks for running daemons that reference deleted shared library file handles and notifies you about them.

5. A [bash script](https://gist.github.com/mtekman/9769fa3eb28dd0dbdd1e8ce802157e95) by [@mtekman](https://gist.github.com/mtekman) to determine the least used packages installed on your Arch system.
