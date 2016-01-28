import matplotlib.pyplot as plt


train_times = []

simpleRNN_batch = []
LSTM_batch = []
GRU_batch = []

simpleRNN_time = []
LSTM_time = []
GRU_time = []

with open('train_times.txt') as f:
	train_times = [line for line in f]

for i, line in enumerate(train_times):
	if 'SimpleRNN' in line:
		simpleRNN_batch.append(train_times[i-1].split()[-1])
		simpleRNN_time.append(train_times[i+1].split()[-1])
	if 'LSTM' in line:
		LSTM_batch.append(train_times[i-1].split()[-1])
		LSTM_time.append(train_times[i+1].split()[-1])
	if 'GRU' in line:
		GRU_batch.append(train_times[i-1].split()[-1])
		GRU_time.append(train_times[i+1].split()[-1])


plt.figure(figsize=(12, 6))
plt.plot(simpleRNN_time, simpleRNN_batch, color='cornflowerblue', linewidth=2, label="SimpleRNN")
plt.plot(LSTM_time, LSTM_batch, color='purple', linewidth=2, label="LSTM")
plt.plot(GRU_time, GRU_batch, color='yellow', linewidth=2, label="GRU")

plt.xlabel('Time(s)')
plt.ylabel('Number of Batches')

# Place a legend to the right of this smaller figure.
plt.legend(loc=1)


plt.savefig('plot_training_times.png')
