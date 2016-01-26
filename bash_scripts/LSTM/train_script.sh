mkdir "models/LSTM"
echo "--------------------"
echo "BatchSize 10"
python ./code/rnnlm.py -train -embed 10003 -hidden 200 -bs 10 -ch 10000 -lr 0.001 -eps 1e-08 -epochs 2 -vocab ./data/vocab.txt -modeltype LSTM < ./data/en.train
if [ -f rnn.*.json ]
  then
    mkdir "models/LSTM/batch10"
    mv rnn.*.json models/LSTM/batch10/lstm_batch10.json
    mv rnn.*.h5 models/LSTM/batch10/lstm_batch10.h5
fi
echo "--------------------"
echo "BatchSize 50"
python ./code/rnnlm.py -train -embed 10003 -hidden 200 -bs 50 -ch 10000 -lr 0.001 -eps 1e-08 -epochs 2 -vocab ./data/vocab.txt -modeltype LSTM < ./data/en.train
if [ -f rnn.*.json ]
  then
    mkdir "models/LSTM/batch50"
    mv rnn.*.json models/LSTM/batch50/lstm_batch50.json
    mv rnn.*.h5 models/LSTM/batch50/lstm_batch50.h5
fi
echo "--------------------"
echo "BatchSize 100"
python ./code/rnnlm.py -train -embed 10003 -hidden 200 -bs 100 -ch 10000 -lr 0.001 -eps 1e-08 -epochs 2 -vocab ./data/vocab.txt -modeltype LSTM < ./data/en.train
if [ -f rnn.*.json ]
  then
    mkdir "models/LSTM/batch100"
    mv rnn.*.json models/LSTM/batch100/lstm_batch100.json
    mv rnn.*.h5 models/LSTM/batch100/lstm_batch100.h5
fi
echo "--------------------"
echo "BatchSize 500"
python ./code/rnnlm.py -train -embed 10003 -hidden 200 -bs 500 -ch 10000 -lr 0.001 -eps 1e-08 -epochs 2 -vocab ./data/vocab.txt -modeltype LSTM < ./data/en.train
if [ -f rnn.*.json ]
  then
    mkdir "models/LSTM/batch500"
    mv rnn.*.json models/LSTM/batch500/lstm_batch500.json
    mv rnn.*.h5 models/LSTM/batch500/lstm_batch500.h5
fi
echo "--------------------"
echo "BatchSize 1000"
python ./code/rnnlm.py -train -embed 10003 -hidden 200 -bs 1000 -ch 10000 -lr 0.001 -eps 1e-08 -epochs 2 -vocab ./data/vocab.txt -modeltype LSTM < ./data/en.train
if [ -f rnn.*.json ]
  then
    mkdir "models/LSTM/batch1000"
    mv rnn.*.json models/LSTM/batch1000/lstm_batch1000.json
    mv rnn.*.h5 models/LSTM/batch1000/lstm_batch1000.h5
fi
echo "--------------------"
echo "BatchSize 2000"
python ./code/rnnlm.py -train -embed 10003 -hidden 200 -bs 2000 -ch 10000 -lr 0.001 -eps 1e-08 -epochs 2 -vocab ./data/vocab.txt -modeltype LSTM < ./data/en.train
if [ -f rnn.*.json ]
  then
    mkdir "models/LSTM/batch2000"
    mv rnn.*.json models/LSTM/batch2000/lstm_batch2000.json
    mv rnn.*.h5 models/LSTM/batch2000/lstm_batch2000.h5
fi
