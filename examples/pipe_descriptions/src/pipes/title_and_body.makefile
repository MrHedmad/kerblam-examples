
#? This pipeline has a title and a body
#?
#? This text is the long description of the pipeline.
#? Supports *markdown* **rendering** for `pretty` printing of descriptions.

data/out/limerick_words.txt: data/in/limerick.txt
	wc -w $< > $@

#? Broken lines are also supported, so you can write descriptions as close
#? as possible to the code that they describe.

# Normal comments are ignored.
