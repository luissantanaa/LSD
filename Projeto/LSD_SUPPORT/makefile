#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# main makefile
#

clean:
	@set -e;\
	for d in *; do if [ -e $$d/makefile ]; then make --no-print-directory -s -C $$d clean; fi; done

files:
	@set -e;\
	for d in *; do if [ -e $$d/makefile ]; then make --no-print-directory -s -C $$d files; else readlink -f makefile; fi; done | sort -u
