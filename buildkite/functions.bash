# Echoes a command with a dim prompt symbol ($)
#
# Usage: buildkite-prompt echo "Hello, World"
buildkite-prompt() {
  local prompt="\033[90m$\033[0m"
  local command="$*"

  echo -e "${prompt} ${command}"
}


# Echoes a heading that will render as an expandable section in Buildkite's UI
#
# Usage: buildkite-header "Doing things now"
buildkite-header() {
  local title="$*"

  echo "--- ${title}"
}


# Echoes a Buildkite heading with a command presented at a prompt
#
# Effectively combines "buildkite-header" and "buildkite-prompt".
#
# Usage: buildkite-header-prompt echo "Hello, World!"
buildkite-header-prompt() {
  buildkite-header "$(buildkite-prompt "$@")"
}

# Echoes a Buildkite prompt for a command and then evaluates it
#
# Usage: buildkite-run echo foo bar baz
buildkite-run() {
  buildkite-prompt "$@"
  eval "$@"
}
