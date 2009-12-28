all: %.elc

clean:
	rm -f *.elc

%.elc: %.el
	emacs -L . -batch -f batch-byte-compile $<
