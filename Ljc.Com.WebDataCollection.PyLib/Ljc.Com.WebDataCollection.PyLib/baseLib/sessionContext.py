#/usr/bin/env python
# -*- coding: utf-8 -*-

class sessionContext(object):
    """会话"""

    __uid=None

    @property
    def uid(self):
        return self.__uid

    @uid.setter
    def uid(self,val):
        self.__uid=val

    __data=None

    @property
    def data(self):
        return self.__data

    @data.setter
    def data(self,val):
        self.__data=val
      
    def __init__(self, uid):
        self.__uid=uid

    @staticmethod
    def current():
        return __spec__


