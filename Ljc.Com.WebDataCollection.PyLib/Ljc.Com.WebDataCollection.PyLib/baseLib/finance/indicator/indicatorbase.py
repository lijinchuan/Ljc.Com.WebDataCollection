#/usr/bin/env python
# -*- coding: utf-8 -*-

import pandas as pd
class indicatorbase(object):
    """财务指标类基类"""

    __colname=None

    @property
    def colname(self):
        return self.__colname

    @colname.setter
    def colname(self,val):
       self.__colname=val

    def __init__(self,colname):
        self.__colname=colname
    
    def __eq__(self, other):
        return lambda data:data[data[self.colname]==other]

    def __le__(self, other):
        return lambda data:data[data[self.colname]<=other]

    def __ge__(self, other):
        return lambda data:data[data[self.colname]>=other]

    def __lt__(self, other):
        return lambda data:data[data[self.colname]<other]

    def __gt__(self, other):
        return lambda data:data[data[self.colname]>other]

    def __getitem__(self,index):
       return self


