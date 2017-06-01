#!/bin/sh
echo "Making symlinks to hooks..."
rm -rf ../.git/hooks/
ln -sfn ../.gitpsoft/hooks/ ../.git/hooks
echo "...done"
