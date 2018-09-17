RobotFramework in Docker  container
-----------------------------------

# Purpose

The goal is to keep the container rather minimal (i.e. no `Selenium` and web
drivers). Typical use-case is testing on hardware on firmware / system level
with the [RTE](http://3mdeb.com/rte/).

When much more dependencies will be needed for the specific project, it is
worth considering to use the `3mdeb/rf-docker` as a base image, instead of
expanding it further.

# Why python2?

There does not seem to be `robotframework-jsonlibrary` for `python3`.

# Build

```
./build.sh
```

# Run

Typical run command would look like:

```
docker run --rm -it -v ${PWD}:${PWD} -w ${WORKDIR} "ROBOT_OPTIONS"
```

# Release image to DockerHub

```
./release.sh VERSION_BUMP
```

> VERSION_BUMP can be: major, minor, patch
