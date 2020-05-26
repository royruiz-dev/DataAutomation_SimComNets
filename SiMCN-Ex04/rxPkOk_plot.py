import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import pyplot as plt
from matplotlib import style
import math
import decimal
import plotly.express as px


cols = ['Sim_T', 'Data']
data = pd.read_csv('rxPkOk_at_server_BER-1e-7.csv',
                   delimiter=',', skiprows=[0], names=cols)

df = pd.DataFrame(data)

max_time = float(math.ceil(df['Sim_T'].max()))
min_time = float(math.floor(df['Sim_T'].min()))

# time_arr = np.arange(min_time, max_time, 0.5)

df_summary = df["Data"].groupby(pd.cut(df["Sim_T"], np.arange(
    min_time, max_time+0.4, 0.4), labels=np.arange(int(min_time), int(max_time), decimal.Decimal('0.4')))).sum()

with open('csv_data.csv', 'w') as csv_file:
    df_summary.to_csv(path_or_buf=csv_file)

df = pd.read_csv('csv_data.csv')

fig = px.line(df, x='Sim_T', y='Data',
              title='Throughput vs Time')
fig.show()
