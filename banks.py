#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


# In[2]:


df = pd.read_csv(r"C:\Users\dhruv\Desktop\banks.csv")


# In[3]:


print(df)


# In[4]:


print(df[['Rank', 'TotalAsset']].head())


# In[6]:


print(df[['Rank', 'TotalAsset', 'Country', 'Bank name']].head())


# In[7]:


df.fillna(0, inplace=True)


# In[8]:


summary_stats = df.describe()


# In[9]:


print(summary_stats)


# In[11]:


plt.hist(df['TotalAsset'], bins=10)
plt.xlabel('Total Assets ')
plt.ylabel('Frequency')
plt.title('Distribution of Total Assets')
plt.show()


# In[17]:


selected_data = df[df['Country'] == 'United States']


# In[14]:


print(selected_data)


# In[18]:


dataframe = df.dropna() 


# In[19]:


print(dataframe)


# In[20]:


mean_assets_by_country = dataframe.groupby('Country')['TotalAsset'].mean()


# In[21]:


print(mean_assets_by_country)


# In[22]:


mean_assets = np.mean(dataframe['TotalAsset'])


# In[23]:


print(mean_assets)


# In[27]:


plt.plot(dataframe['TotalAsset'])
plt.xlabel('Bank by Rank')
plt.ylabel('Total Assets (US$ billion)')
plt.title('Total Assets of Banks')
plt.show()


# In[28]:


median_assets = np.median(df['TotalAsset'])
std_dev_assets = np.std(df['TotalAsset'])
percentiles = np.percentile(df['TotalAsset'], [25, 50, 75])


# In[29]:


print(median_assets, std_dev_assets, percentiles)


# In[ ]:




