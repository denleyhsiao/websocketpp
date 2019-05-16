#! /bin/bash

set -o errexit

WORK_PATH=$(cd $(dirname $0); pwd)

export BOOST_ROOT=$(brew --prefix boost)
export OPENSSL_PATH=$(brew --prefix openssl)

scons test -j4
