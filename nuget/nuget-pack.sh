#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mono ${DIR}/nuget.exe pack "$@" -MsbuildPath /usr/lib/mono/msbuild/15.0/bin/
