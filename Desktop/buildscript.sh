#!/bin/bash -e
commit_message="$1"
git add Desktop/Build Script.sh
git commit -m "$commit message"
git push "https://github.com/kondalreddyv"
#replace Branch ID with commit code
git reset "bc08826"
#moves pointer back to previous HEAD 
git reset --softHEAD@{1}
git commit -m "revert to bc08826"
#updates working copy to reflect the new commit 
git reset --hard bc08826
