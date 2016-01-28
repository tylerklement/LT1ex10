import matplotlib.pyplot as plt

input_neuron = []
perplexity = []

with open('ppl_output.txt') as f:
	for line in f:
		if 'Embed' in line:
			input_neuron.append(line.split()[-1])
		if 'Perplexity' in line:
			perplexity.append(line.split()[-1])

input_neuron_dev = input_neuron[0:7]
perplexity_dev = perplexity[0:7]

input_neuron_test = input_neuron[7:]
perplexity_test = perplexity[7:]

plt.figure(figsize=(12, 6))
plt.plot(input_neuron_dev, perplexity_dev, color='cornflowerblue', linewidth=2, label="Development Set")
plt.plot(input_neuron_test, perplexity_test, color='indianred',  linewidth=2, label="Test Set")

plt.xlabel('Input Neurons')
plt.ylabel('Perplexity')

# Place a legend to the right of this smaller figure.
plt.legend(loc=1)


#plt.show()
plt.savefig('plot_perplexity.png')







