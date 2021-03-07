#!/bin/bash
cd $HOME

export_gpg_keys() {
    read -p "GPG export target (private_keys.db): " $GPG_OUT
    GPG_OUT=${GPG_OUT:-private_keys.db}
    gpg --armor --export-secret-keys > $GPG_OUT
}

cleanup() {
    rm -f $GPG_OUT
}

if [ $# -eq 0 ]; then
    OUT_NAME=$(echo 'Backup_'$(date +%Y-%m-%d)'.tar.gz')
    echo "No arguments provided, performing full backup to $OUT_NAME"

    export_gpg_keys
    tar -czf $(echo 'Backup_'$(date +%Y-%m-%d)'.tar.gz')  .emacs.d/init.el .gitconfig $GPG_OUT .ssh .zshrc Documents Desktop Downloads Pictures
elif [ $1 == "-h" ]; then
    echo "Usage: Backup utility"
    echo "$0 -hdf"
    echo ""
    echo "-h Show this menu"
    echo "-d Only backup dotfiles"
    echo "-f Only backup files"
    echo ""
    echo "(when no flags are provided, performs a full  back up)"
    echo ""
elif [ $1 == "-f" ]; then
    OUT_NAME=$(echo 'Backup_'$(date +%Y-%m-%d)'.tar.gz')
    echo "Backing up files to $OUT_NAME"

    tar -czf $OUT_NAME  Documents Desktop Downloads Pictures
elif [ $1 == "-d" ]; then
    OUT_NAME=$(echo 'Dotfiles_'$(date +%Y-%m-%d)'.tar.gz')
    echo "Backing up dotfiles to $OUT_NAME"

    export_gpg_keys
    tar -czf $OUT_NAME  .emacs.d/init.el .gitconfig $GPG_OUT .ssh .zshrc
fi

cleanup
