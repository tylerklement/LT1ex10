import matplotlib.pyplot as plt
import matplotlib.patches as mpatches


BatchSize = []
TrainingTime = []

with open('train_times.txt') as f:
	for line in f:
		if 'BatchSize' in line:
			BatchSize.append(line.split()[-1])
		if 'TrainingTime' in line:
			TrainingTime.append(line.split()[-1])

rnn_batches = BatchSize[0:3]
rnn_train_time = TrainingTime[0:3]

gru_batches = BatchSize[3:6]
gru_train_time = TrainingTime[3:6]

lstm_batches = BatchSize[6:]
lstm_train_time = TrainingTime[6:]

plt.plot(rnn_batches, rnn_train_time, color='cornflowerblue', linewidth=2, label="RNN")
plt.plot(gru_batches, gru_train_time, color='indianred',  linewidth=2, label="GRU")
plt.plot(lstm_batches, lstm_train_time, color='green',  linewidth=2, label="LSTM")


blue_patch = mpatches.Patch(color='cornflowerblue', label="RNN")
red_patch = mpatches.Patch(color='indianred', label="GRU")
green_patch = mpatches.Patch(color='green', label="LSTM")

plt.legend(handles=[red_patch, blue_patch, green_patch], loc=1)
plt.xlabel('BatchSize')
plt.ylabel('TrainingTime')

plt.savefig('plot_TrainingTime.png')
