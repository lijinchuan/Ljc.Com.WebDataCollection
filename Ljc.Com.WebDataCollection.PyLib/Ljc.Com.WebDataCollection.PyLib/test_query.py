#/usr/bin/env python
# -*- coding: utf-8 -*-

import numpy as np
import pandas as pd
from baseLib import *

'''
查询用法示例
'''
#选择pe,pb数据
qy=query(financeindicator.pe_rate,financeindicator.pb_rate)
#过滤pe>5的数据
qy.filter(financeindicator.pe_rate>5)
#过滤pb<30的数据
qy.filter(financeindicator.pb_rate<30)
#排序
qy.orderby([financeindicator.pb_rate,financeindicator.pe_rate],orderDirection.asc)
#返回前10条数据
qy.limit(10)
#执行查询
result=get_fundamentals(qy)
#打印结果
print(result)

query(financeindicator.pe_rate,financeindicator.pb_rate).filter(
    financeindicator.pe_rate>5
    ).filter(
        financeindicator.pb_rate<30
    ).orderby(
        [financeindicator.pb_rate,financeindicator.pe_rate],
        orderDirection.asc
    ).limit(10)
#执行查询
result=get_fundamentals(qy)
#打印结果
print(result)
