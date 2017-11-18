#/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import time
now=time.localtime(time.time())
print(now.tm_mon)

print(sys.path)

if len(sys.argv)>1:
    arg=sys.argv[1]
    if(arg=='compile'):
        pass
    elif(arg=='init'):
        pass
    elif(arg=='job'):
        pass
else:
    print("没有参数")