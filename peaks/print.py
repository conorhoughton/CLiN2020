
import statistics
import random

from scipy.stats import wilcoxon
from scipy.stats import normaltest
from scipy.stats import boxcox

f=open("sentence_peak_data.csv",'r')

data=[]

conditions=["GS","GN","US","UN"]

for i in range(4):
    data.append([float(x) for x in f.readline().strip().split(",")])

for i in range(4):
    for j in range(18):
        print(i+0.1*random.uniform(-1,1),data[i][j])
    
