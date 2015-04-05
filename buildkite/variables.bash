# Environment variables common to all Buildkite scripts


# The root path of the Git repository for this project
#
# Calculated relative to the expected location of this file.
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
