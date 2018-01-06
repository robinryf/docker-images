#!/bin/sh

URL=http://beta.unity3d.com/download/d72e16ff4aba/unity-editor_amd64-5.6.3xf1Linux.deb

echo "Start Unity3D installer download..."
curl -o /app/unity_editor.deb -s "${URL}"
echo "Unpacking deb package."
dpkg -i /app/unity_editor.deb
echo "Remove deb package"
rm /app/unity_editor.deb
