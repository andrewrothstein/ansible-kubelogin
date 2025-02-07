#!/usr/bin/env sh
set -e

DIR=~/Downloads
MIRROR=https://github.com/Azure/kubelogin/releases/download

# https://github.com/Azure/kubelogin/releases/download/v0.0.9/kubelogin-linux-amd64.zip

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-zip}
    local platform="${os}-${arch}"
    local url=$MIRROR/v$ver/kubelogin-${platform}.${archive_type}.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -sSLf $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver win amd64
}

dl_ver ${1:-0.1.7}
