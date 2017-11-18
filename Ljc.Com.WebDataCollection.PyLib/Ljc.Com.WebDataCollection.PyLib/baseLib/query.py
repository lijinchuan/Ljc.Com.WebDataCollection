#/usr/bin/env python
# -*- coding: utf-8 -*-

class query(object):
    """查询类"""

    __items=None
    __limit=10
    __order=[]
    __condition=[]

    def __init__(self, *items):
        self.__items=[x.colname for x in items]

    @property
    def items(self):
        return self.__items

    @property
    def condition(self):
       return self.__condition

    @property
    def order(self):
       return self.__order
    
    def limit(self,num):
       self.__limit=num
       return self

    def filter(self,conition):
        self.__condition.append(conition)
        return self

    def orderby(self,cols,direction):
        if isinstance(cols,list):
           self.__order.append(([x.colname for x in cols],direction))
        else:
           self.__order.append((cols.colname,direction))
        return self

    def getorder(self):
       return self.__order

    def getItems(self):
        return self.__items;

    def getLimit(self):
        return self.__limit;

    
