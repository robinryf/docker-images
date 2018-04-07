#!/bin/sh

URL=http://beta.unity3d.com/download/ce9f6a0436e1+/unity-editor_amd64-2017.2.1f1.deb

echo "Start Unity3D installer download..."
curl -o /app/unity_editor.deb -s "${URL}"
echo "Unpacking deb package."
dpkg -i /app/unity_editor.deb
echo "Remove deb package"
rm /app/unity_editor.deb
