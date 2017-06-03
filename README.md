This is a tool for storing PeopleSoft projects in git. This repository contains git hooks
that are used to export and import projects via App Designer. It also contains a make file that will
generate symlinks to the projects repository hooks directory. It is designed to be installed as a submodule in a repository containing projects copied to file.

# Setup
This is an example of how to setup this as a submodule.
* `mkdir c:\io-test && cd c:\tio-test`
* `git init`
* `git submodule add https://github.com/psadmin-io/ps-project-git.git .gitpsoft`
* `cd .gitpsoft && ./make.ps1 && cd ..`
# Export
A `commit` exports projects from the DB matching the current branch name.
* `mkdir PROJ_NAME`
* `git checkout -b DB_NAME`
* `git commit --allow-empty -m "init"`
# Import
A `merge` imports projects to the DB matching the current branch name.
* `git checkout -b psftdb`
* `git merge master`
