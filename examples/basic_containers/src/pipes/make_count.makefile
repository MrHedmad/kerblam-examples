
data/out/words.txt: data/in/limerick.txt
	wc -w $< > $@

