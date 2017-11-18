#/usr/bin/env python
# -*- coding: utf-8 -*-

import pandas as pd
import numpy as np
import baseLib.finance.indicator.financeindicator as financeindicator
import json
import os

def getpe():
    #s=pd.Series(np.array([8,15,-100,5.5]),index=np.array(['000001.SZ','000002.SZ','000003.SZ','600000.SH']))
    path=os.path.dirname(os.path.realpath(__file__))+r"\data\pe.json"
    with open(path,'r') as pef:
        datas=json.load(pef,encoding='utf-8')
        items=[[item["name"],item["pe"]] for item in datas]
        pf=pd.DataFrame(items,columns=["name","pe"],index=[item["code"] for item in datas],dtype='str')
        s=pf["pe"]
        return s

def getpb():
    #s=pd.Series(np.array([13,18,-200,33]),index=np.array(['000001.SZ','000002.SZ','000003.SZ','600000.SH']))
    path=os.path.dirname(os.path.realpath(__file__))+r"\data\pb.json"
    with open(path,'r') as pef:
        datas=json.load(pef,encoding='utf-8')
        items=[[item["name"],item["pb"]] for item in datas]
        pf=pd.DataFrame(items,columns=["name","pb"],index=[item["code"] for item in datas],dtype='str')
        s=pf["pb"]
        return s

#indicators:financeindicator.indicatorbase
def getfinance_indicator_datas(indicators):
   df=pd.DataFrame({});
   for ind in indicators:
       if(ind==financeindicator.pe_rate.colname):
           df[ind]=getpe()
       elif(ind==financeindicator.pb_rate.colname):
           df[ind]=getpb()
   return df

