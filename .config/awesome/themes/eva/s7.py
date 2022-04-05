import random as rd
n=int(input())
a = [rd.randint(1,9) for _ in range(n)]
print(a)
ma = max(a)
mi = min(a)
ri = max(len(a)-a[::-1].index(ma)-1,len(a)-a[::-1].index(mi))
li = min(a.index(ma),a.index(mi))
print(ma,mi,li,ri)
print(sum(a[li:ri]))
