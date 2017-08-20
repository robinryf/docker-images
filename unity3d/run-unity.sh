#!/bin/sh

xvfb-run -a --server-args="-screen 0 1024x768x24" /opt/Unity/Editor/Unity $1
