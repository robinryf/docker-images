#!/bin/sh

URL=http://beta.unity3d.com/download/ee86734cf592/unity-editor_amd64-2017.2.0f3.deb

echo "Start Unity3D installer download..."
curl -o /app/unity_editor.deb -s "${URL}"
echo "Unpacking deb package."
dpkg -i /app/unity_editor.deb
echo "Remove deb package"
rm /app/unity_editor.deb
