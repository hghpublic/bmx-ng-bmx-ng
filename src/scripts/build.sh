#!/usr/bin/env bash

set -ex

version=0.138.3.53
./build_release.sh -a arm64 -l linux -b ${version}