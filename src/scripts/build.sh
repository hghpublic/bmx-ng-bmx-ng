#!/usr/bin/env bash

set -ex

# https://github.com/bmx-ng/bmx-ng/releases?q=BlitzMax+RaspberryPi+arm64
# version=0.138.3.53
version=0.150.3.58
timestamp=202510050425
./build_release.sh -a arm64 -l linux -b ${version} -t ${timestamp}