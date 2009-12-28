BASEDIR := $(CURDIR)

MAKEFLAGS := --no-print-directory
COMPONENTS := awesome misc mutt vim xsession zsh emacs

default:
	@echo "run make install to install symlinks"

check:
	@for c in $(COMPONENTS); do \
		$(MAKE) check -C $$c BASEDIR=$(BASEDIR); \
	done

install:
	@for c in $(COMPONENTS); do \
		$(MAKE) check -C $$c BASEDIR=$(BASEDIR) DO_INSTALL=1; \
	done

