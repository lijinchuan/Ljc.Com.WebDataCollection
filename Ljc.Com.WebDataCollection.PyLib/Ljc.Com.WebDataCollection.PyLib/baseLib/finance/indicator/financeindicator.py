#/usr/bin/env python
# -*- coding: utf-8 -*-

'''
这里定义常用的财务类指标
'''
from baseLib.finance.indicator import indicatorbase
#市盈率
pe_rate=indicatorbase.indicatorbase('pe')
#市净率
pb_rate=indicatorbase.indicatorbase('pb')


