#!/bin/sh

URL=

echo "Start Unity3D installer download..."
curl -o /app/unity_editor.deb -s "${URL}"
echo "Unpacking deb package."
dpkg -i /app/unity_editor.deb
echo "Remove deb package"
rm /app/unity_editor.deb
