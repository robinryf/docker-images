#!/bin/sh

URL=http://beta.unity3d.com/download/f4fc8fd4067d/unity-editor_amd64-2017.1.1xf1Linux.deb

echo "Start Unity3D installer download..."
curl -o /app/unity_editor.deb -s "${URL}"
echo "Unity3D installer has finished downloading."
