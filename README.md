This is a tool for storing PeopleSoft projects in git. This repository contains git hooks
that are used to export and import projects via App Designer. It also contains a make file that will
generate symlinks to the projects repository hooks directory. It is designed to be installed as a submodule in a repository containing projects copied to file.

# Setup
This is an example of how to setup this as a submodule.
```
mkdir c:\io-test && cd c:\io-test
git init
git submodule add https://github.com/psadmin-io/ps-project-git.git .gitpsoft
cd .gitpsoft && ./make.ps1 && cd ..
```
# Export
A `commit` gives the option for exporting projects from the DB. The current `branch` name will be used as the DB name.
```
mkdir PROJ_NAME
git checkout -b db-name
git commit --allow-empty -m "init"
```
# Import
A `checkout` gives the option for importing projects into the DB. The `branch` name you are checking out will be used as the DB name.
```
git checkout source-branch
# point db-name -> source-branch
git branch -f db-name source-branch
git checkout db-name
```
