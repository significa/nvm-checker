# nvm-checker

=============

**nvm version checker for [Zsh](https://www.zsh.org/).**

_This projects aims at providing users a visual aid to notice that their node version is not equal to the one required on the .nvmrc file_

=============

## Install

### Using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

1.  Clone this repository in oh-my-zsh's plugins directory:

        git clone git@github.com:significa/nvm-checker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/nvm-checker

2.  Activate the plugin in `~/.zshrc`:

        plugins=( [plugins...] nvm-checker)

3.  Source `~/.zshrc` to take changes into account:

        source ~/.zshrc
