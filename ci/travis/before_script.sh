#!/usr/bin/env bash
#
# before_script.sh
#
# This file is meant to be sourced during the `before_script` phase of the
# Travis build. Do not attempt to source or run it locally.
#
# shellcheck disable=SC1090
. "${TRAVIS_BUILD_DIR}/ci/travis/helpers.sh"

header 'Running before_script.sh...'

# work around travis xcode bug
# https://github.com/direnv/direnv/issues/210
run rvm get head

# capture system ruby and gem locations
run export SYSTEM_RUBY_HOME="/System/Library/Frameworks/Ruby.framework/Versions/Current"
run export SYSTEM_RUBY_BINDIR="${SYSTEM_RUBY_HOME}/usr/bin"
run export SYSTEM_GEM_HOME="$(gem_homes="${SYSTEM_RUBY_HOME}/usr/lib/ruby/gems/"*; echo ${gem_homes[${#gem_homes[@]}-1]})"
run export SYSTEM_GEM_BINDIR="${SYSTEM_GEM_HOME}/bin"

# capture user gem locations
run export GEM_HOME="${HOME}/.gem/ruby/${SYSTEM_GEM_HOME##*/}"
run export GEM_BINDIR="${GEM_HOME}/bin"

# ensure that the gems we install are used before system gems
run export GEM_PATH="${GEM_HOME}:${SYSTEM_GEM_HOME}"
run export PATH="${GEM_BINDIR}:${SYSTEM_GEM_BINDIR}:${SYSTEM_RUBY_BINDIR}:${PATH}"

# ensure that brew uses the ruby we want it to
run export HOMEBREW_RUBY_PATH="${SYSTEM_RUBY_BINDIR}/ruby"

# update homebrew
run brew update

# mirror the repo as a tap, then run the build from there
run export CASK_TAP_DIR="$(brew --repository)/Library/Taps/${TRAVIS_REPO_SLUG}"
run mkdir -p "${CASK_TAP_DIR}"
run rsync -az --delete "${TRAVIS_BUILD_DIR}/" "${CASK_TAP_DIR}/"
run export TRAVIS_BUILD_DIR="${CASK_TAP_DIR}"
run cd "${CASK_TAP_DIR}" || exit 1
