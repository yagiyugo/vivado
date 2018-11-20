#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yagiyugo/vivado/lenet5_ap2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
