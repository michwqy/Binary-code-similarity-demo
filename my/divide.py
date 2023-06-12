import pandas as pd
import numpy as np
import re
import random

def x86_process(s):
    s=s.replace('\t',' ')
    s=s.strip()
    s=' '.join(s.split())
    s_list=s.split()
    if s.find('.cfi_')==0 or s.find('.p2align')==0:
        return ''
    if s_list[0].find('call')!=-1:
        s_list[1]='foo'
    else:
        new_list=[s_list[0]]
        for item in s_list[1:]:
            if item.find(',')!=-1:
                if item.find('.LBB')!=-1:
                    item='<tag>,'
                elif item.find('$.L.str.')!=-1:
                    item='<str>,'
                elif item[0]=='$' and item[1].isdigit():
                    item='0,'
                else:
                    if item.find('%')!=-1:
                        item=item.replace('%','')
                        if item.find("(")!=-1:
                            item='0'+item[item.find('('):]
                    else:
                        item='<tag>,'
            else:
                if item.find('.LBB')!=-1:
                    item='<tag>'
                elif item.find('$.L.str.')!=-1:
                    item='<str>'
                elif item[0]=='$' and item[1].isdigit():
                    item='0'
                else:
                    if item.find('%')!=-1:
                        item=item.replace('%','')
                        if item.find("(")!=-1:
                            item='0'+item[item.find('('):]
                    else:
                        item='<tag>'
            new_list.append(item)
        s_list=new_list
    s=' '.join(s_list)+'\n'
    return s

def arm_process(s):
    s=s.replace('\t',' ')
    s=s.strip()
    s=' '.join(s.split())
    s_list=s.split()
    if s.find('.cfi_')==0 or s.find('.p2align')==0:
        return ''
    if s_list[0].find('bl')!=-1 and s_list[1].find('.LBB')==-1:
        s_list[1]='foo'
    else:
        new_list=[s_list[0]]
        for item in s_list[1:]:
            if item.find(',')!=-1:
                if item.find('.LBB')!=-1:
                    item='<tag>,'
                elif item.find('.LCPI')!=-1:
                    item='<str>,'
                elif item[0]=='#' and (item[1].isdigit() or item[1]=='-'):
                    if not item[-1].isdigit():
                        item='0'+item[-1]
                    else:    
                        item='0,'
            else:
                if item.find('.LBB')!=-1:
                    item='<tag>'
                elif item.find('.LCPI')!=-1:
                    item='<str>'
                elif item[0]=='#' and (item[1].isdigit() or item[1]=='-'):
                    if not item[-1].isdigit():
                        item='0'+item[-1]
                    else:    
                        item='0'
            new_list.append(item)
        s_list=new_list
    s=' '.join(s_list)+'\n'
    return s    

def ngram_distance(str1, str2, n=4):
    tmp = ' ' * (n-1)
    str1 = tmp + str1 + tmp
    str2 = tmp + str2 + tmp
    set1 = set([str1[i:i+n] for i in range(len(str1)-(n-1))])
    set2 = set([str2[i:i+n] for i in range(len(str2)-(n-1))])
    setx = set1 & set2
    len1 = len(set1)
    len2 = len(set2)
    lenx = len(setx)
    num_dist = len1 + len2 - 2*lenx
    num_sim = 1 - float(num_dist) / (float(len1) + float(len2))
    return num_sim

list=[]
flag1=0
flag2=0
arm='./myls-arm.s'
x86='./myls-x86.s'
paths=[arm,x86]
for path in paths:
    file=open(path,'r')
    module=[]
    for line in file:
        if line=='' or line=='\n':
            continue
        if line.find('Begin function')!=-1:
            flag1=1
            function=line.split()[-1]
            print(function)
            #module.append('function:'+function)
            continue
        if line.find('End function')!=-1:
            flag1=0
            continue
        if flag1 and not flag2:
            if line.find('%bb')!=-1 or line.find('.LBB')==0:
                flag2=1
                block=''
            else:
                continue
        if flag1 and flag2:
            if line.find('Lfunc_end')!=-1:
                if block!='':
                    module.append(block)
                flag2=0
            elif line.find('%bb')!=-1 or line.find('.LBB')==0:
                if block!='':
                    module.append(block)
                block=''
            else:
                if line.find('.LCPI')==0 or line.find('.LJTI')==0 or line.find('.p2align')!=-1:
                    continue
                if (line.find('.long')!=-1 and path==arm):
                    continue
                if (line.find('@')!=-1 and path==arm):
                    continue
                if (line.find('#')!=-1 and path==x86):
                    line=line.split('#')[0]
                    if line.isspace():
                        continue
                if path==x86:
                    line=x86_process(line)
                else:
                    line=arm_process(line)
                block=block+line
    list.append(module)

score=[]
n=len(list[0])
count=0
tmp=[]
for i in range(0,n):
    t=[]
    t.append(list[0][i])
    t.append(list[1][i])
    if list[1][i].find('function:')==0:
        t.append()
    else:
        t.append(1)
    tmp.append(t)
while count<n:
    t=[]
    j=count
    if list[1][j].find('function')==0:
        count=count+1
        continue
    i=random.randint(0,n-1)
    while(i==j or list[1][i].find('function')==0):
        i=random.randint(0,n-1)
    sim=ngram_distance(list[0][i],list[1][j])
    if(sim<=0.5):
        t.append(list[0][j])
        t.append(list[1][i])
        t.append(0)
        count=count+1
        tmp.append(t)

random.shuffle(tmp)
newlist=[]
arm=[]
x86=[]
for item in tmp:
    arm.append(item[0])
    x86.append(item[1])
    score.append(item[2])
newlist.append(arm)
newlist.append(x86)
newlist.append(score)

col=['arm','x86','score']
df=pd.DataFrame(newlist,index=col).T
df.to_csv('my_test.csv',mode='w',index=0)

