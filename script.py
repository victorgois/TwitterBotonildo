#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May 16 12:39:51 2019

@author: victorgois
"""

def convert_col():

    import pandas

    data = pandas.read_csv('Users#15m.csv', header=0)

    col_a = list(data.from_user)

    return (col_a)

res = convert_col()
print(res)
