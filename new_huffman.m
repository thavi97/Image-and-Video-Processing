signal = {0,1,1,0,0,3,3,4,1,1,0,0,1};
symbols = {0,1,3,4};
probabilities = [5,5,2,1]/13;
dict = huffmandict(symbols,probabilities);
encSignal = huffmanenco(signal,dict);
clear signal symbols probabilities;