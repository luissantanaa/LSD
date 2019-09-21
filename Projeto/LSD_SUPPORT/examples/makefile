#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# makefile for the examples directory
#

clean:
	@set -e;\
	for d in *; do if [ -e $$d/makefile ]; then make --no-print-directory -s -C $$d clean; fi; done

clean_all:
	@set -e;\
	if [ -d sof ]; then rm -f sof/*; echo "sof cleaned"; fi;\
	for d in *; do if [ -e $$d/makefile ]; then make --no-print-directory -s -C $$d clean; fi; done

files:
	set -e;\
	for d in *; do if [ -e $$d/makefile ]; then make --no-print-directory -s -C $$d files; fi; done | sort -u; \
	readlink -f makefile

sof_files:
	@set -e;\
	if [ ! -d sof ]; then mkdir sof; chmod 700 sof; fi;\
	for d in *; do if [ -e $$d/makefile ]; then make --no-print-directory -s -C $$d sof; fi; done
