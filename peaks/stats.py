
import statistics

from scipy.stats import wilcoxon
from scipy.stats import normaltest
from scipy.stats import boxcox

f=open("syllable_peak_data.csv",'r')

data=[]

conditions=["GS","GN","US","UN"]

for i in range(4):
    data.append([float(x) for x in f.readline().strip().split(",")])

g=[(data[0][i]+data[1][i])/2 for i in range(18)]
u=[(data[2][i]+data[3][i])/2 for i in range(18)]


s=[(data[0][i]+data[2][i])/2 for i in range(18)]
n=[(data[1][i]+data[3][i])/2 for i in range(18)]

g_v_u=[g[i]-u[i] for i in range(18)]
s_v_n=[s[i]-n[i] for i in range(18)]


for i in range(4):
    print(conditions[i],statistics.mean(data[i]))


for i in range(4):
    for j in range(i):
        v_data=[data[i][k]-data[j][k] for k in range(18)]
        print(conditions[i]," v ",conditions[j])
        print(wilcoxon(v_data),0.05/6)


        

