#/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import pandas as pd
import numpy as np
from baseLib import *
import baseLib.orderDirection as orderDirection
import baseLib.apiproxy.getdata as getdata
import pprint as pprint
"""
财务选股
"""
def get_fundamentals(query):
    df=getdata.getfinance_indicator_datas(query.getItems())
    for c in query.condition:
        df=c(df)
    for cols,direct in query.getorder():
        df=df.sort_values(cols,ascending=direct==orderDirection.asc)

    return df[:len(df) if query.getLimit()>len(df) else query.getLimit()]

def print_result(result):
    if isinstance(result, pd.DataFrame):
        if len(result.values)==0:
            print(decode('没有数据'))
        else:
            print(result)
    else:
        pprint.pprint(result)

def decode(mystr):
    type = sys.getfilesystemencoding()
    return mystr.decode('utf-8').encode(type)


