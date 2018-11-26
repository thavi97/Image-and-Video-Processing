signal = {1,3,2,5,2,3,1,1,5,1,5,2,3,2,3,1,1};
symbols = {1,2,3,5};
probabilities = [6,4,4,3]/17;

dict = huffmandict(symbols,probabilities);

encSignal = huffmanenco(signal,dict);
decSignal = huffmandeco(encSignal,dict);