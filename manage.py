#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
@author: Thilak Rathinavelu

"""

# Standard imports
import logging
import argparse
import sys
import os
from subprocess import run
from functools import partial

logger = None

home_dir = os.path.expanduser("~")
script_dir = sys.path[0]
git_config = ("git", "config", "--global")

crun = partial(run, check=True)
crun.__doc__ = "Performs a checked run"


files = (
    (home_dir, ".tmux.conf"),
    (home_dir, ".vimrc"),
    (home_dir, ".pylintrc"),
    (home_dir, ".zshrc"),
)

users = {
    "thilak": ("Thilak Rathinavelu", "thilak.rathinavelu@volvocars.com"),
}

def install(user):
    logger.info("Installing dotfiles")
    for dest, file in files:
        source_path = os.path.join(script_dir, file)
        dest_path = os.path.join(dest, file)

        logger.debug(f"Installing {dest_path} -> {source_path}" )
        try:
            os.symlink(source_path, dest_path)
        except FileExistsError:
            logger.warning(f"File exists {dest_path}")

    crun(git_config + ("include.path", os.path.join(home_dir, "repos", "dotfiles", ".gitconfig.inc")))

    if os.name == "nt":
        crun(git_config + ("core.autocrlf", "true"))
    else:
        crun(git_config + ("core.autocrlf", "input"))

    if user is not None:
        name,email = users[user]
        crun(git_config + ("user.name", name))
        crun(git_config + ("user.email", email))

def uninstall():
    logger.info("Uninstalling dotfiles")
    for dest, file in files:
        dest_path = os.path.join(dest, file)

        logger.debug(f"Removing {dest_path}")
        try:
            os.remove(dest_path)
        except FileNotFoundError:
            pass

    git_config_unset = git_config + ("--unset",)
    crun(git_config_unset + ("include.path", os.path.join(home_dir, "repos", "dotfiles", ".gitconfig.inc")))

    if os.name == "nt":
        crun(git_config_unset + ("core.autocrlf", "true"))

def main():

    logging.basicConfig(
        level=logging.INFO,
        format='[%(asctime)s] {%(pathname)s:%(lineno)d} %(levelname)s - %(message)s',
        datefmt='%H:%M:%S')
    global logger
    logger = logging.getLogger(__name__)
    logger.setLevel(logging.DEBUG)
    logger.info("STARTING...")

    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("-i", "--install", dest="op", action="store_true", help="install dotfiles")
    group.add_argument("-r", "--remove", dest="op", action="store_false", help="uninstall dotfiles")
    parser.add_argument("-u", "--user", dest="user", choices=(users.keys()), help="first name of user in lowercase, if not present in choices add user to script")

    args = parser.parse_args()

    if args.op:
        install(args.user)
    else:
        uninstall()

if __name__ == "__main__":
    main()
