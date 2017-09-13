EMACS	?= emacs
EL		 = moinmoin-mode.el
ELC		= $(EL:%.el=%.elc)

elc: $(ELC)

%.elc: %.el
	$(EMACS) -Q -batch -f batch-byte-compile $<

clean:
	rm -fr *.elc *~
