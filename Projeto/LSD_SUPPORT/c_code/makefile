#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# makefile for the c_code directory
#

FILES  = pseudo_random_generator.c
FILES += lsd_term.c

clean:
	@rm -f a.out lsd_term
	@rm -f pseudo_random_generator pseudo_random_generator_v1.vhd pseudo_random_generator_v2.vhd
	@echo c_code directory cleaned

files:
	@for f in makefile $(FILES); do readlink -f $$f; done


lsd_term:	lsd_term.c
	@cc -Wall -O2 lsd_term.c -o lsd_term


pseudo_random_generator:	pseudo_random_generator.c
	@cc -Wall -O2 pseudo_random_generator.c -o pseudo_random_generator

pseudo_random_generator_v1.vhd:	pseudo_random_generator
	@rm -f pseudo_random_generator_v1.vhd
	@./pseudo_random_generator -v1 48 1 >pseudo_random_generator_v1.vhd

pseudo_random_generator_v2.vhd:	pseudo_random_generator
	@rm -f pseudo_random_generator_v2.vhd
	@./pseudo_random_generator -v2 48 1 >pseudo_random_generator_v2.vhd
