import csv
import numpy as np
import pandas as pd
import logging
from gensim.models import Word2Vec

logging.basicConfig(format='%(asctime)s : %(levelname)s : %(message)s', level=logging.INFO)

#取1.2两列作为数据
df=pd.read_csv("train_set_O2.csv",index_col=[0,3])
clist=df.values.tolist()
nlist=[]
length=len(clist)
#每一行指令是一个“单词”,每个基本块是一个“句子”
for i in range(length): 
    for j in range(len(clist[i])):
        tmp=str(clist[i][j]).split("\n") 
        nlist.append(tmp)
print(nlist)

#使用负采样和skip-gram
model=Word2Vec(nlist,size=100, window=15, min_count=0, workers=4,sg=1,sample=1e-05,hs=0,negative=5,ns_exponent=0.75,iter=100)
model.save('test.w2v')
