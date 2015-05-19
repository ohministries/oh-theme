#!/bin/bash

# Make sure that the 'sass' command exists (see http://stackoverflow.com/a/677212/329911)
command -v sass >/dev/null 2>&1 || {
  echo >&2 "SASS does not appear to be available. Unable to re-compile stylesheets";
  exit 1;
}

echo "Re-compiling stylesheets..."

sass style.scss style.css --style compressed
echo "style.scss -> style.css (compressed)"

echo "Sassification is complete"
exit 0