#!/bin/sh

URL=http://beta.unity3d.com/download/3c89f8d277f5/UnitySetup-2017.3.0f1

echo "Start Unity3D installer download..."
curl -o /app/unity_setup -s "${URL}"
chmod +x /app/unity_setup
echo "Unpacking deb package."
mkdir /opt/Unity
/app/unity_setup --unattended --components="Unity" --install-location /opt/Unity/
