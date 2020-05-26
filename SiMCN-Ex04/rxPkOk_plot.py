import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import pyplot as plt
from matplotlib import style
import math


cols = ['Sim_T', 'Data']
data = pd.read_csv('rxPkOk_at_server_BER-1e-7.csv',
                   delimiter=',', skiprows=[0], names=cols)

df = pd.DataFrame(data)

max_time = float(math.ceil(df['Sim_T'].max()))
min_time = float(math.floor(df['Sim_T'].min()))

# time_arr = np.arange(min_time, max_time, 0.5)

df_summary = df["Data"].groupby(pd.cut(df["Sim_T"], np.arange(min_time, max_time+0.2, 0.2))).sum()

print(df_summary)
#print(max_time)


'''y = np.ones((10, 1))
y[0:5] = 2
psum = y[0:5].sum(axis=0)
print(y,"\n")
print(psum)'''

#for i in enumerate(time_arr):
#  print(i)

#user_visits = pd.DataFrame({'user_id': ['A', 'A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'],
#                            'visit_type': [1,  1,  3,  3,  3,  2,  2,  2,  2]})

##print(user_visits)

#User_Visits_summary = user_visits.groupby(
#    ['user_id']).size().reset_index()

#User_Visits_summary = User_Visits_summary.pivot(
#    index='user_id', columns='visit_type', values=0)

# Calculate total from sub-totals in new column
#User_Visits_summary['Total_Visits'] = User_Visits_summary.sum(axis=1)

#print(User_Visits_summary)


