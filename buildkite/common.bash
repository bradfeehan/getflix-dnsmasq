set -e          # Exit if any command exits with non-zero status
set -u          # Treat undefined variables as fatal errors
set -o pipefail # Fail if any command in a pipeline fails

# Source common requirements
. "$(dirname ${BASH_SOURCE[0]})/functions.bash"
. "$(dirname ${BASH_SOURCE[0]})/variables.bash"
