import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv("./data/excel_^vnindex.csv")
price = np.array(data['<CloseFixed>'])
vol = np.array(data['<Volume>']) 
# T = 1
# ret = (price[:-T] - price[T:]) / price[T:]

# plt.plot(ret)

# Create a subplot
fig, ax = plt.subplots()
ax.plot(data['<DTYYYYMMDD>'], price, color='red')
ax.set_ylabel("price", fontsize=14)
ax.set_xlabel("Date", fontsize=14)

# Add a second y-aixs for volume
ax2 = ax.twinx()
ax2.plot(data['<DTYYYYMMDD>'], vol, color="blue")
ax2.set_ylabel("vol", fontsize=14)

plt.title("VN Index price and vol through time")
plt.show()

