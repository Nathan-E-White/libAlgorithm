#!/usr/bin/env bash

# 1. Create a new git branch and switch to it.
# 2. Create a new file
# 3. Add the file to the git index.
# 4. Commit the file with a message of 'created ${filename}'.
# 5. Push the branch to the remote.

# Usage: git-touch <filename>

# Example: git-touch README.md

# Exit immediately if a command exits with a non-zero status.
# Exit immediately if an unset variable is used.
# Exit immediately if a pipeline returns a non-zero status.
set -e;
set -u;
set -o pipefail;

# The name of the file to create.
# The name of the branch to create.
declare -r filename="${1}";
declare -r branchname="${2}";

# The name of the remote to push to.
declare -r remote="origin";

# Create a new branch and switch to it.
git checkout -b "${branchname}";

# Create a new file.
touch "${filename}";

# Add the file to the git index.
git add "${filename}";

# Commit the file with a message of 'created ${filename}'.
git commit -m "created ${filename}";

# Push the branch to the remote.
git push -u "${remote}" "${branchname}";
