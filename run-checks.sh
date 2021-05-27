#!/bin/bash

set -xe

# formatter (please note this is silent)
dart format ./lib

# linter
dart analyze ./lib

