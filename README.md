# Docker Images Repo

This repository contains build information for different docker images that are built and published by docker hub.

You can find the finished images [HERE](https://hub.docker.com/u/robinryf/)

## Repository setup

Every sub-directory represents a docker hub image entry. If there are multiple tags/versions required a branch on this repository is created for every version that is needed. The branches start with the sub-directory name followed by a '_'. Everything of the branch name after the first '_' is used as tag name for the docker image tag.

Docker hub settings for build trigger:
```
SourceType:             "Branch"
Source:                 "/^<imageName>_(.*)$/"
Docker Tag:             "{\1}"
Dockerfile location:    "Dockerfile"
Build Context:          "/<imageName>/"
```

The variable `<imageName>` has to be replaced with the docker image name and has to match with the sub-directory of this repository.

## Images

### Unity3D

Unity3d images that contains an activated Unity standalone installation. This can be used for builds but also other tasks like building .unitypackage files from repositories. Used in [FishmanNavigation](https://gitlab.com/robinryf/fishman-navigation) to automatically build .unitypackage files when new changes are pushed.
Newest Unity Linux versions can be found [HERE](https://forum.unity.com/threads/unity-on-linux-release-notes-and-known-issues.350256/).


### Nuget

To build NuGet packages in a CI environment. NuGet is officially only supported on Windows. But using Mono it also works on Linux. This image also includes dotnet core sdk to build .net core libraries.
