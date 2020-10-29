RobotFramework in Docker  container
-----------------------------------

# Purpose

The goal is to keep the container rather minimal (i.e. no `Selenium` and web
drivers). Typical use-case is testing on hardware on firmware / system level
with the [RTE](http://3mdeb.com/rte/).

When much more dependencies will be needed for the specific project, it is
worth considering to use the `3mdeb/rf-docker` as a base image, instead of
expanding it further.

# Pull

```bash
docker pull 3mdeb/yocto-docker
```

# Build

```bash
./build.sh
```

# Relase

Refer to the
[docker-release-manager](https://github.com/3mdeb/docker-release-manager/blob/master/README.md)

# Run

Typical run command would look like:

```
docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} 3mdeb/rf-docker "ROBOT_OPTIONS"
```
