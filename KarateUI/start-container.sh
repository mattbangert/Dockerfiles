#!/usr/bin/env bash
set -x

CONTAINER='karate-ui'

docker run -ti --rm \
        -e _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        --network=host \
        "${CONTAINER}"