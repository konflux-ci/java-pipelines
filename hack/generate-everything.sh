#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$SCRIPTDIR/.."

hack/build-manifests.sh
