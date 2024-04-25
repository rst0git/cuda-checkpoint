#!/bin/bash

case "$CRTOOLS_SCRIPT_ACTION" in
    "pre-dump"|"post-restore")
        cuda-checkpoint --toggle --pid "$CRTOOLS_INIT_PID"
        exit $?
        ;;
    *)
esac

exit 0
