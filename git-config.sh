git config --global column.ui auto
git config --global branch.sort -commiterdate
git config --global tag.sort version:refname
git config --global push.autoSetupRemote true
git config --global fetch.prune true
git config --global fetch.pruneTags true
git config --global fetch.all true
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global merge.conflictStyle zdiff3
