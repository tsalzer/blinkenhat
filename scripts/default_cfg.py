#!/usr/bin/env python

import json

with open("src/default.json", "r") as fn:
    parsed = json.load(fn)

    data = '#define DEFAULT_CONFIG "%s"' % json.dumps(
        parsed, separators=(',',':')).replace('"', '\\"')

    with open("src/default.h", "w+") as fo:
        fo.write(data)

