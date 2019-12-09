#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

GOLANGCILINT_VERSION=${GOLANGCILINT_VERSION:-v1.21.0}

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "$(go env GOPATH)/bin" "${GOLANGCILINT_VERSION}"
