# Healing Waters
# Python Code

# Import Libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Helper Functions 
def text_to_words( sentence ): 
    tokens = sentence.split() 
    return tokens

# Create dataframe
df = pd.DataFrame(columns=['words'])

# Read in file
with open('Healing_Waters.txt', 'r') as f:
    for line in f:
        df = df.append({'words':text_to_words(line)}, ignore_index=True)

# Create a dataframe of counts
word_counts = pd.DataFrame(columns=['word', 'count'])
words_list = df['words'].tolist()
for word in words_list: 
    count = word_counts[word_counts['word'] == word]['count'].sum()
    if count == 0:
        word_counts = word_counts.append({'word': word, 'count': 1}, ignore_index=True)
    else:
        word_counts.loc[count > 0, 'count'] += 1

# Plot the data
ax = word_counts.plot(kind='bar', title ="Healing Waters Count", figsize=(15, 10), legend=True, fontsize=12)
ax.set_xlabel("Words", fontsize=12)
ax.set_ylabel("Count", fontsize=12)
plt.show()