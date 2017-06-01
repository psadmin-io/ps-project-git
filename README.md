This is a tool for storing PeopleSoft projects in git repositories. This repository contains git hooks
that are used to export and import projects via App Designer. It also contains a make file that will
generate symlinks to the hooks for each project repository.

# Projects
The project repositories are stored in the `projects` directory. Create git repositories there that contain
exported projects. When these repositories are commited, git will export the projects from the database. 
When a merge happens, git will import the projects into the database.

# Logs
App Designer logs will be written to the `logs` directory.

# Variables
Set these environment variables before using.
* `PS_PROJ_USER`
* `PS_PROJ_PASS`
* `PS_PROJ_DB`