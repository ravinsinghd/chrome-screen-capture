#!/bin/sh
if [ "$1" == "debug" ]; then
  FLAG=-g
else
  FLAG="-O2 -Xlinker --strip-all"
fi

gcc $FLAG -m32 -fPIC -DGTK -Wno-write-strings `pkg-config --cflags --libs gtk+-2.0` \
  -shared -o screen_capture.so np_entry.cc npp_entry.cc plugin.cc screen_capture.cc

