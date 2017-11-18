#/usr/bin/env python
# -*- coding: UTF-8 -*-
import numpy as np
import pandas as pd
from baseLib import *

print_result(get_fundamentals(query(financeindicator.pe_rate,).filter(
        financeindicator.pe_rate>=1
    ).filter(
        financeindicator.pe_rate<=11
    ).orderby([financeindicator.pe_rate,],orderDirection.asc).limit(100)
))