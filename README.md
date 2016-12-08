# Dotfiles

Collection of dotfiles for a standard bash shell environment.

Expected to be cloned with submodules like:

```shell
git clone --recursive git://github.com/bradegler/dotfiles
```

From there, create a link to this repo in your home directory.

```shell
repo=`pwd`
ln -s $repo ~/.dotfiles
```

After the link is in place, run the setup.sh script to create the appropriate links.
