#!/bin/sh
# Run the s3-tests suite. /out is the mount point for the JUnit report and
# /conf holds s3tests.conf (pointed at by S3TEST_CONF).
set -eu

case " $* " in
    *"--junitxml"*) ;;
    *) set -- "$@" --junitxml=/out/junit.xml ;;
esac

exec pytest -q "$@"
