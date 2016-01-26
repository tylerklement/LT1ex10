echo "--------------"
echo "DEV SET"
echo "BatchSize 10"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch10/lstm_batch10.json -weights ./models/LSTM/batch10/lstm_batch10.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 50"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch50/lstm_batch50.json -weights ./models/LSTM/batch50/lstm_batch50.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 100"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch100/lstm_batch100.json -weights ./models/LSTM/batch100/lstm_batch100.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 500"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch500/lstm_batch500.json -weights ./models/LSTM/batch500/lstm_batch500.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 1000"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch1000/lstm_batch1000.json -weights ./models/LSTM/batch1000/lstm_batch1000.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 2000"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch2000/lstm_batch2000.json -weights ./models/LSTM/batch2000/lstm_batch2000.h5 -ppl < ./data/en.dev_gold
echo "--------------"
echo "TEST SET"
echo "BatchSize 10"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch10/lstm_batch10.json -weights ./models/LSTM/batch10/lstm_batch10.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 50"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch50/lstm_batch50.json -weights ./models/LSTM/batch50/lstm_batch50.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 100"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch100/lstm_batch100.json -weights ./models/LSTM/batch100/lstm_batch100.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 500"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch500/lstm_batch500.json -weights ./models/LSTM/batch500/lstm_batch500.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 1000"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch1000/lstm_batch1000.json -weights ./models/LSTM/batch1000/lstm_batch1000.h5 -ppl < ./data/en.dev_gold
echo "BatchSize 2000"
python ./code/rnnlm.py -vocab ./data/vocab.txt -model ./models/LSTM/batch2000/lstm_batch2000.json -weights ./models/LSTM/batch2000/lstm_batch2000.h5 -ppl < ./data/en.dev_gold
