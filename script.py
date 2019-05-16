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

    #res = convert_col()
    #print(res)

def divide_chunks(l, n):

    for i in range(0, len(l), n):
        
        yield l[i:i + n]

def loop_for_chunks(divided_list):

    length = len(divided_list)
    
    for i in range(length):
        
        return i

divided_list = list(divide_chunks(convert_col(), 10))


def main (divided_list):

    for each in divided_list:
        
        return (each)
    
length = len(divided_list)

for i in divided_list:
    result = i
    print (result)
    