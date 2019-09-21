#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# makefile for the useful_files directory
#

FILES  = master.qsf
FILES += master.sdc
FILES += master.cdf
FILES += master.frf
FILES += master.srf
FILES += 50-AlteraBlaster.rules

clean:
	@rm -f a.out screen_capture *.ppm

files:
	@for f in makefile $(FILES); do readlink -f $$f; done


screen_capture:		screen_capture.c
	@cc -Wall -O2 screen_capture.c -o screen_capture
