#!/usr/bin/env bash

# 1. Create a new git branch and switch to it.
# 2. Create a new directory
# 3. touch a new file in the directory called .gitkeep
# 4. Add the file to the git index.
# 5. Commit the file with a message of 'created directory ${dirname}'.
# 6. Push the branch to the remote.

# Usage: git-mkdir <dirname>
# Example: git-mkdir src

# Exit immediately if a command exits with a non-zero status.
# Exit immediately if an unset variable is used.
# Exit immediately if a pipeline returns a non-zero status.
set -e;
set -u;
set -o pipefail;

# The name of the directory to create.
# The name of the branch to create.
# The name of the remote to push to.
declare -r dirname="${1}";
declare -r branchname="${2}";
declare -r remote="origin";

# Create a new branch and switch to it.
git checkout -b "${branchname}";

# Create a new directory.
mkdir "${dirname}";

# touch a new file in the directory called .gitkeep
touch "${dirname}/.gitkeep";

# Add the file to the git index.
git add "${dirname}/.gitkeep";

# Commit the file with a message of 'created directory ${dirname}'.
git commit -m "created directory ${dirname}";

# Push the branch to the remote.
git push -u "${remote}" "${branchname}";
