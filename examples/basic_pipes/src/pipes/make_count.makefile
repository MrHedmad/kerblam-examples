
data/out/limerick_words.txt: data/in/limerick.txt
	wc -w $< > $@

