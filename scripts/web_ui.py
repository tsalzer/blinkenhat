#!/usr/bin/env python

import os
import sys
import zlib


INPUT = "web/dist/index.html"
OUTPUT = "lib/WebServer/index.h"

TEMPLATE = """
// DO NOT EDIT
//
// This file is autogenerated!
const unsigned long index_html_len = %(len)d;
const char PROGMEM index_html[] = {%(index)s};
"""


if not os.path.exists(INPUT):
    print("No input file!")
    sys.exit(0)


compessor = zlib.compressobj(9)

with open(INPUT, "r") as fn:
    contents = fn.read()
    compressed = compessor.compress(contents) + compessor.flush()
    formatted = ", ".join([hex(ord(ch)) for ch in compressed])

    with open(OUTPUT, "w") as fo:
        fo.write(TEMPLATE % {"index": formatted,
                             "len": len(compressed)})