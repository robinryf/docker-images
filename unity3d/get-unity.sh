#!/bin/sh

URL=http://beta.unity3d.com/download/292b93d75a2c/UnitySetup-2019.1.0f2
INSTALL_LOCATION=/opt/Unity
DOWNLOAD_LOCATION=/app/unity_download
UNITY_INSTALLER=/app/unity_setup
UNITY_COMPONENTS="Unity,Mac-Mono,Windows-Mono,Linux"

echo "Start Unity3D installer download..."
curl -o ${UNITY_INSTALLER} -s "${URL}"
chmod +x ${UNITY_INSTALLER}
echo "Start Unity3D installer."
mkdir ${INSTALL_LOCATION}
mkdir ${DOWNLOAD_LOCATION}
printf 'y\n' | ${UNITY_INSTALLER} --unattended --components=${UNITY_COMPONENTS} --install-location ${INSTALL_LOCATION} --download-location ${DOWNLOAD_LOCATION}
rm -rf ${DOWNLOAD_LOCATION}
rm -rf ${UNITY_INSTALLER}
