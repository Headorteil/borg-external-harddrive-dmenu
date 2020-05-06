#! /bin/sh

borg create                                           \
    --filter AME                                      \
    --list                                            \
    --compression lzma                                \
    --exclude-caches                                  \
    --exclude '*/.cache/*'                            \
    --exclude '/var/tmp/*'                            \
    --exclude '*/cache/*'                             \
    --exclude '*/Cache/*'                             \
    --exclude '*/__pycache__/*'                       \
                                                      \
    "$1"/backup::'backup-{now}'                       \
    /home                                             \
    /root                                             \
    /var                                              \
    /etc                                              \
    /usr
