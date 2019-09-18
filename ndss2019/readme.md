### 思路
+ 这篇论文研究的是跨架构的二进制代码相似性比较，作者设计了两个工具，一个是检测块级别相似性的INNEREYE-BB，另一个是检测component级别相似性的INNEREYE-CC。
+ 块级别相似性比较：
    + 利用word2vec将块中的每条指令变成向量
    + 利用lstm将每个块的矩阵变成向量
    + 利用两个向量的Manhattan距离表示相似性
+ component级别相似性比较：
    + 对于component的CFG中的每条路径，利用块级别相似性比较方法计算每条路径的最长公共子序列，然后利用子序列的长度除以总路径的长度作为分数。
### 数据集
+ 论文提供的数据集只是x86和arm两个架构的汇编块。
    + 来自同一段源码的两个不同架构的块是相似的。
    + 同架构的块不相似可以通过ngram distance来比较。如果x86的A和arm的B来自同一段源码，x86的C与A不相似，则B和C是不同架构的不相似。
    + 为了减少oov的问题，汇编指令会经过一定处理，例如将所有数字常量变为0，字符常量变为`<str>`，地址等标识变为`<tag>`等。
### 代码
+ origin/目录下为论文提供给的数据集、模型权重等。
+ my/目录下为我重新生成的数据集、模型权重等。
    +  asm1.c、x509.c是axTLS的两个cve，cjson*.c是cjson的四个cve。
    + my_test.csv是测试用数据集。my_train.csv是训练用数据集。
    + w2v.py是生成词嵌入模型权重。lstm.py是利用数据集和词嵌入权重训练模型并测试。divide.py是生成指定文件的数据集。
### 依赖项
+ genism,NLTK ,Scikit-learn ,Tensorflow ,Keras (version ≤ 2.1.4)
+ 如果Keras是新版本的话会报一个大致意思为Merge方法不存在的错误，是由于新版本的Keras修改了API。换成旧版本的Keras就可以了。
